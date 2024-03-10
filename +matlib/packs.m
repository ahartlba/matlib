function s = packs(varargin)
% pack struct
% if no arguments are passed in ... whole workspace gets packed
% else only arguments get parsed.
%
% Example:
%
% a = 4;
% b = 3;
% c = 15;
% pack everything:
% s = packs()  % s.a = 4; s.b = 3; s.c = 15;
% select packing:
% s = packs(a, b) % s.a = 4; s.b = 3;

% workspace that called this function
eval_ws = evalin('caller', 'whos');
% get input-names of spack
if nargin == 0
    for i=1:length(eval_ws)
        s.(eval_ws(i).name) = evalin('caller', eval_ws(i).name);
    end
else

    for i=1:nargin
        s.(inputname(i)) = varargin{i};
    end
end

end
