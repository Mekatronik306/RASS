%========================================================================================================
% Author: Carl Larsson
% Description: the parameters used for the RASS model
%========================================================================================================
% Copyright (c) 2023 Carl Larsson
% 
% Permission is hereby granted, free of charge, to any person obtaining a copy
% of this software and associated documentation files (the "Software"), to deal
% in the Software without restriction, including without limitation the rights
% to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
% copies of the Software, and to permit persons to whom the Software is
% furnished to do so, subject to the following conditions:
% 
% The above copyright notice and this permission notice shall be included in all
% copies or substantial portions of the Software.
% 
% THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
% IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
% FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
% AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
% LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
% OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
% SOFTWARE.
%========================================================================================================
%% Parameters
%------------------------------------------------------------------------------------------------
% Masses (kg)
m_s = 86.5;
m_u = 9.2;

% Spring coefficents (N/m)
k_s = 4550;
k_t = 150000;

% Damper coefficents (N*s/m)
c_s = 300;
c_t = 45;

% Motor efficiency
n = 0.94;

% Matrices
A = [0, 1, 0, 0; -k_s/m_s, -c_s/m_s, k_s/m_s, c_s/m_s; 0, 0, 0, 1; k_s/m_u, c_s/m_u, (-k_s-k_t)/m_u, (-c_s-c_t)/m_u]
B = [0, 0; 0, 1/m_s; 0, 0; 1/m_u, -1/m_u]
C = [-k_s/m_s, -c_s/m_s, k_s/m_s, c_s/m_s; 0, 1, 0, 0; 0, 0, 0, 1]
D = [0, 1/m_s; 0, 0; 0, 0]
%------------------------------------------------------------------------------------------------