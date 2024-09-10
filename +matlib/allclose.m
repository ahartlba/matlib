function bool = allclose(a, b, varargin)
% numpy like allclose function
if nargin >= 3
    rtol = varargin{1};
else
    rtol = 1e-5;
end
if nargin == 4
    atol = varargin{2};
else
    atol = 1e-8;
end
bool = all(abs(a - b) <= (atol + rtol*abs(b)));
end
