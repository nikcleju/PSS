function [a, g] = lpc_exact(x, order)
% Compute exact lpc coefficients using least-squares solving
% See here: https://dsp.stackexchange.com/a/53022
%
% Call like lpc()
%
% Inputs:
%   x     = vector or matrix. If matrix, function treats columns independently.
%   order = model order
% Outputs:
%   a = prediction coefficients, one row for every input signal. Vector or
%       matrix.
%   g = variance of prediction error, one value fir every input signal.
%       Scalar or vector.

% If x is vector, make x a row vector
if length(size(x)) == 2 && size(x, 2) == 1
    x = x';
end

% If x is a matrix, transpose
if length(size(x)) == 2 && size(x, 1) ~= 1 && size(x, 2) ~= 1
    x = x';
end

% Prepare outputs
a = zeros(size(x,1), order+1);
g = zeros(size(x,1));

% Now work on rows of x
for rowindex=1:size(x,1)

    xrow = x(rowindex,:);

    L = length(xrow);
    
    % Create non-symmetric Toeplitz matric
    m = xrow(toeplitz(order:L-1, flip(1:order))); % What we predict with
    
    v = xrow(order+1:L)';    % What we want to predict
    
    arow = m\v; % Least squares solve prediction coefficients
    
    % Return vag = variance of prediction error
    g(rowindex) = var(v - m*arow);
    
    % Put in same form as Matlab's lpc()
    a(rowindex, :) = [1, -arow'];
end

