function h = noise3dPlot(noise, plotType, CX, CY, CZ, CZVar, varargin)

% NOISE3DPLOT Draw a 3D or contour plot for the relevant noise model.
% FORMAT
% DESC draws a 3D or contour plot for the relevant noise model.
% ARG noise : the noise structure for which the plot is required.
% ARG plotType : string containing the name of the plotting function (for example mesh, contour).
% ARG X : the input X data in the form of a 'mesh' matrix.
% ARG Y : the input Y data in the form of a 'mesh' matrix.
% ARG mu : the input mean in the form of a 'mesh' matrix.
% ARG varSigma : the input variance in the form of a 'mesh' matrix. 
% ARG P1, P2, P3 ... : optional additional arguments for the given plot type.
% RETURN h : the gradients of the diagonal with respect to each element
% of X. The returned matrix has the same dimensions as X.
%
% SEEALSO : noiseParamInit, noise3dPlot, 
%
% COPYRIGHT : Neil D. Lawrence, 2004, 2005

% NOISE

functionName = [noise.type 'Noise3dPlot'];
if exist(functionName) == 2
  fhandle = str2func(functionName);
  h = fhandle(noise, plotType, CX, CY, CZ, CZVar, varargin{:});
end

