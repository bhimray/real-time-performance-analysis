from win32com.client import Dispatch
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

    #Initialize verdict as failed. This result will be changed later, but initialized here for safety.
    result = EvaluationResult(Verdict.Failed,'','Unknown error.')

    if len(parameters) < 3:
        result = EvaluationResult(Verdict.Failed,'','Invalid Input: Function must have 3 parameters.')
        return result
    
    #Check first parameter type
    if (parameters[0].parameter_type is ParameterType.CurrentSignal) or (parameters[0].parameter_type is ParameterType.CapturedSignal):
        SWA_signal: Signal = parameters[0].value
    else:
        result = EvaluationResult(Verdict.Failed,'','Invalid Input: The first parameter must be a signal containing the steering wheel angle.')
        return result

    #Check second parameter type
    if (parameters[1].parameter_type is ParameterType.CurrentSignal) or (parameters[2].parameter_type is ParameterType.CapturedSignal):
        ManeuverState: Signal = parameters[1].value
    else:
        result = EvaluationResult(Verdict.Failed,'','Invalid Input: The second parameter must be a signal containing the maneuver state.')
        return result

    #Check third parameter type
    if (parameters[2].parameter_type is ParameterType.Variable) or (parameters[2].parameter_type is ParameterType.Constant):
        TestSpeed = parameters[2].value
    else:
        result = EvaluationResult(Verdict.Failed,'','Invalid Input: The third parameter must be a variable or a constant containing the current vehicle test speed.')
        return result
    
    #Check fourth parameter type
    if (parameters[3].parameter_type is ParameterType.Variable) or (parameters[3].parameter_type is ParameterType.Constant):
        TargetLatAcc = parameters[3].value
    else:
        result = EvaluationResult(Verdict.Failed,'','Invalid Input: The fourth parameter must be a variable or a constant containing the target lateral acceleration.')
        return result

    #Detect maneuver end id
    idx = ManeuverState[1,:].index(4)

    #Identify steering wheel angle for defined lateral acceleration
    SWA = SWA_signal[1,idx-1]
    
    #Parametrize Logical Test Case
    try:
        Application = i_GetModelDesk_Application()  
        i_WriteParameter(Application, TestSpeed, 0)
        i_WriteParameter(Application, SWA, 1)
    except:
        result = EvaluationResult(Verdict.Failed,'','Unexpected Error: ModelDesk Application cannot be reached.')
        return result
    
    #Create output for the report
    result_string = str("The steering wheel angle for a lateral acceleration of " + format(TargetLatAcc, '.2f') + "m/s^2 is: " + format(SWA, '.2f') + "deg" + "\n" + 
                        "The vehicle speed for the driving test is: " + format(TestSpeed, '.2f') + "km/h")

    #return the verdict that fits the calculation
    result = EvaluationResult(Verdict.Passed,'',result_string)
    return result

def i_GetModelDesk_Application():
    Application = Dispatch("ModelDesk.Application")
    Application.Visible = True
    return Application

def i_WriteParameter(Application, parameter, id):
    LogicalTestCase = Application.ActiveProject.ActiveExperiment.Test.LogicalTestCases.Item(1)
    ConcreteTestCase = LogicalTestCase.ConcreteTestCases.Item(0)
    VariableList = ConcreteTestCase.VariableLists.Item(0)
    Variable = VariableList.Variables.Item(id)
    Variable.Value = parameter