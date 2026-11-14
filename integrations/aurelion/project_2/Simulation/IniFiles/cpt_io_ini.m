function  cpt_io_ini (varargin);

% CPT_IO_INI
%
%
%
% AUTHOR(S): dSPACE GmbH
%
% VERSION  : 1.0
%
% Comments : 
%           
%
% MODIFICATION(S):
% -------------
%
%    NAME:     |   DATE:      |                 REMARKS:
%-------------------------------------------------------------
%              |              |    
%              |              |    
% 


% Get structures from workspace
CPT = evalin('base','CPT;','[];');

% =========================================================================
% =====                    PLACE YOUR CODE HERE !!!!                  =====
% =========================================================================

% Write structures back to workspace
assignin('base','CPT',CPT)

