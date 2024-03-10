function varargout = unpack(in)
% python-like unpacking of arrays

assert(nargout <= length(in), 'To many value to unpack!')
if length(in) > nargout
    n = nargout;
else
    n = length(in);
end
for i=1:n-1
    if iscell(in)
        varargout{i} = in{i};
    else
        varargout{i} = in(i);
    end
end
i = n;
if iscell(in)
    varargout{i} = in{i:end};
else
    varargout{i} = in(i:end);
end

end
