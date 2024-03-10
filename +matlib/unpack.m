function varargout = unpack(in)
% python-like unpacking of arrays

assert(nargout <= length(in), 'To many value to unpack!')
if length(in) > nargout
    n = nargout;
else
    n = length(in);
end
for i=1:n
    if iscell(in)
        varargout{i} = in{i};
    else
        varargout{i} = in(i);
    end
end

end
