function T = nnpostprocess(normalizationFcn, TN, TS)
%NNPOSTPROCESS reverse outputs of the network.
%   T = POSTPROCESS(net, TN, TS) reverse outputs of the network 
%       according to target normalization setting (TS);

%   Date: August 31, 2016
%   Author: Zhongsheng Chen (E-mail:zschen@mail.buct.edu.cn)
%   organization: Beijing University of Chemical Technology

switch lower(normalizationFcn)
    case {'mapminmax', 'minmax'}
        T = mapminmax('reverse', TN, TS);
    case {'mapstd', 'std'}
        T = mapstd('reverse', TN, TS);
end



