function  io_ini (varargin);

% IO_INI
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
%              |              |    


% Get structures from workspace
IO = evalin('base','IO;','[];');

% =========================================================================
% =====                    PLACE YOUR CODE HERE !!!!                  =====
% =========================================================================
  
% Write structures back to workspace
assignin('base','IO',IO)
