from typing import List
from TestingLibrary.Validation.signal import Signal
from TestingLibrary.Validation.parameter import ParameterType
from TestingLibrary.Validation.parameter import Parameter
from TestingLibrary.Validation.parameter import ConstantParameter
from TestingLibrary.Validation.parameter import VariableParameter
from TestingLibrary.Validation.parameter import CurrentSignalParameter
from TestingLibrary.Validation.parameter import CapturedSignalParameter
from TestingLibrary.Validation.parameter import StringParameter
from TestingLibrary.Validation.validation_result import EvaluationResult
from TestingLibrary.Validation.validation_result import Verdict

#ModelDesk Testing custom evaluation function
#Note: Do not change the name or signature of the function, otherwise it will not be usable in the ModelDesk Testing Validation.
def CustomFunction(parameters: List[Parameter], result_picture_path_without_extension: str) -> EvaluationResult:
    '''
    Custom evaluation function.
    parameters: list of validation function parameters as defined in the validation of the logical test case.
    result_picture_path_without_extension: Absolute path including filename but without extension. 
        If the result of the custom function contains an image the image has to be be placed here and its full 
        path (including the extension) returned in the EvaluationResult so it can be displayed in the report.
    
    The following function evaluates the result of a EuroNCAP AEB CCR scenario. The detailed assessment protocol can be found here:
    https://www.euroncap.com/
    The function is based on the document "Euro NCAP ASSESSMENT PROTOCOL - SAFETY ASSIST" (Version 7.0, November 2015)
    
    Parameter 1: CurrentSignal or CapturedSignal -> Signal containing the vehicle velocity at time of collision
    Parameter 2: Constant or Variable -> The vehicle test speed, which is defined by a constant or an alias variable
    Parameter 3: CurrentSignal or CapturedSignal -> Signal containing the relative impact velocity at collision point and at time of collision
    Parameter 4: Constant -> Integer indicating, which scenario is being tested. This is only used to determine the full scoring of the current test scenario and speed.
                The definition via integers is as follows:
                1: CCRs
                2: CCRm
                3: CCRb
    '''
    
    # ======================== Data of the assesment protocol ======================== #
    # Defining the maximum score at the defined test velocity,
    # which is derived from the assessment protocol. 
    # The table is assigned to the list "TotalScoreLUT"
    #    ___________________________________
    #       CCRs    |   CCRm    |   CCRb
    #    ___________|___________|___________
    #     AEB | FCW	| AEB | FCW | AEB | FCW
    #       0 |	1   |   2 |	3   |   4 |  5  --> Column index 1..5
    #    _____|_____|_____|_____|_____|_____
    #               |           |           --> Values of "TotalScoreLUT"
    #
    TotalScoreLUT = [                 # --> Data used for calculating the score for each concrete test case.
                    [0,2,1,0,0,0],    # 30 km/h
                    [0,2,1,0,0,0],    # 35 km/h
                    [0,2,1,0,0,0],    # 40 km/h
                    [0,2,1,0,0,0],    # 45 km/h
                    [0,3,1,1,1,1],    # 50 km/h
                    [0,2,1,1,0,0],    # 55 km/h
                    [0,1,1,1,0,0],    # 60 km/h
                    [0,1,2,2,0,0],    # 65 km/h
                    [0,1,2,2,0,0],    # 70 km/h
                    [0,1,0,2,0,0],    # 75 km/h
                    [0,1,0,2,0,0],    # 80 km/h
                    ]  
    #
    #
    # ======================== ============================= ========================  #

    #Initialize verdict as failed. This result will be changed later, but initialized here for safety.
    result = EvaluationResult(Verdict.Failed,'','Unknown error.')

    if len(parameters) < 4:
        result = EvaluationResult(Verdict.Failed,'','Invalid Input: Function must have 4 parameters.')
        return result

    #Check first parameter type
    if (parameters[0].parameter_type is ParameterType.CurrentSignal) or (parameters[0].parameter_type is ParameterType.CapturedSignal):
        #Get collision speed (absolute velocity of ASM vehicle at the time of collision)
        signal: Signal = parameters[0].value
        sig_length = len(signal)
        CollisionSpeed = signal[1,sig_length - 1]  * 3.6 # Convert to km/h
    else:
        result = EvaluationResult(Verdict.Failed,'','Invalid Input: The first parameter must be a signal containing the vehicle velocity at collision.')
        return result
    
    if (parameters[1].parameter_type is ParameterType.Variable) or (parameters[1].parameter_type is ParameterType.Constant):
        #Get test speed
        TestSpeed = parameters[1].value
    else:
        result = EvaluationResult(Verdict.Failed,'','Invalid Input: The second parameter must be a variable or a constant containing the current vehicle test speed.')
        return result
    
    #Check third parameter type
    if (parameters[2].parameter_type is ParameterType.CurrentSignal) or (parameters[2].parameter_type is ParameterType.CapturedSignal):
        #Get relative collision speed
        signal: Signal = parameters[2].value
        sig_length = len(signal)
        Relative_CollisionSpeed = signal[1,sig_length - 1]  * 3.6 # Convert to km/h
    else:
        result = EvaluationResult(Verdict.Failed,'','Invalid Input: The third parameter must be a signal containing the relative impact velocity between the participants at collision point and at time of collision.')
        return result
    
    if parameters[3].parameter_type is ParameterType.Constant:
        #Get scenario ID --> | CCRs = 1 | CCRm = 2 | CCRb = 3
        ScenarioID = parameters[3].value
    else:
        result = EvaluationResult(Verdict.Failed,'','Invalid Input: The fourth parameter must be a constant containing the test scenario ID.')
        return result

    #Defining the relative test velocity/speed according to assessment protocol
    if ScenarioID == 1:    # CCRs
        VRel_test    = TestSpeed             # Relative speed between the vehicles at the start of the test. Because of the standing fellow the relative velocity is equal to the absolute velocity 
        VRel_impact  = Relative_CollisionSpeed # Relative speed between vehicles at the time of collision
    elif ScenarioID == 2:  # CCRm
        VRel_test    = TestSpeed - 20        # Relative speed between the vehicles at the start of the test. In order to get the relative test speed the fellow velocity of 20 km/h is substracted from the initial test speed (of the ASM vehicle) 
        VRel_impact  = Relative_CollisionSpeed # Relative speed between vehicles at the time of collision

    elif ScenarioID == 3:  # CCRb
        VRel_test    = TestSpeed             # Relative speed between the vehicles at the start of the test. According to assessment protocol in CCRb the relative test velocity is equal to the absolute test velocity
        VRel_impact  = Relative_CollisionSpeed # Relative speed between vehicles at the time of collision
    else:
        result = EvaluationResult(Verdict.Failed,'','Invalid Input: Scenario ID is an integer value between 1 and 3.')
        return result

    #List row and column index
    RowIndex = int(TestSpeed/5-6)
    ColumnIndex = int(ScenarioID*2)-2

    #Calculate score at one regarded test velocity according to assessment protocol
    TotalScore_AEB = TotalScoreLUT[RowIndex][ColumnIndex]
    TotalScore_FCW = TotalScoreLUT[RowIndex][ColumnIndex+1]
    Score_AEB = (VRel_test-VRel_impact)*(TotalScore_AEB/VRel_test) # This formula is part of the assessment protocol
    Score_FCW = (VRel_test-VRel_impact)*(TotalScore_FCW/VRel_test)
    
    #==IMPORTANT==# 
    #The following evaluation is not part of the assessment protocol. The result of "Normalized_TotalScore" is calculated by an arbitrarily chosen function!
    #The arbitrary function calculates a relative score respectively a quotient of the determined score and the maximum score that can be reached.
    if TotalScore_AEB > 0 or TotalScore_FCW > 0:
        Normalized_TotalScore = (Score_AEB + Score_FCW)/(TotalScore_AEB + TotalScore_FCW)
    else:
        result = EvaluationResult(Verdict.Failed,'','Invalid values in the following list: TotalScoreLUT.')
        return result
    #==IMPORTANT==#
    #If the normalized score exceeds more than 0.5 (=50%) of the total score, the function result is "passed". Otherwise it is "failed".
    #This kind of determining the verdict is also arbitrarily chosen and is not described in the assessment protocol!
    if Normalized_TotalScore > 0.5: 
        ScoreString = "The test is successful, because the normalized score "+ format(Normalized_TotalScore, '.2f') + " exceeds the value 0.5. \nCollision speed = " + format(CollisionSpeed, '.2f') +" km/h. Values used for calculating the score: Relative test speed = " + format(VRel_test, '.2f')+" km/h. Relative impact speed = " + format(VRel_impact, '.2f')+" km/h. "
        if ScenarioID == 3:
            ScoreString = ScoreString + "\nAbout CCRb scenarios: According to the assessment protocol, the relative test speed is equal to the initial test speed.";
        result = EvaluationResult(Verdict.Passed,'',ScoreString)
    else:
        ScoreString = "The test failed, because the normalized score "+ format(Normalized_TotalScore, '.2f') + " does not exceed the value 0.5. \nCollision speed = " + format(CollisionSpeed, '.2f') +" km/h. Values used for calculating the score: Relative test speed = " + format(VRel_test, '.2f')+" km/h. Relative impact speed = " + format(VRel_impact, '.2f')+" km/h. "
        if ScenarioID == 3:
            ScoreString = ScoreString + "\nAbout CCRb scenarios: According to the assessment protocol, the relative test speed is equal to the initial test speed.";
        result = EvaluationResult(Verdict.Failed,'',ScoreString)
    
    return result