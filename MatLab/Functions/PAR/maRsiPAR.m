function sh = marsiPAR(x,data,scaling,cost,bigPoint)
% define ma+rsi to accept vectorized inputs and return only sharpe ratio
%% 
% marsiMETS(price,N,M,typeMA,Mrsi,thresh,typeRSI,scaling,cost,bigPoint)
%
% Author: Mark Tompkins
%

row = size(x,1);
sh = zeros(row,1);
parfor ii = 1:row
    if x(ii,1) > x(ii,2)
        sh(ii) = NaN;
    else
        % marsiMETS(price,N,M,typeMA,Mrsi,thresh,typeRSI,scaling,cost,bigPoint)
        % movAvg2inputsMEX_mex(price,N,M,typeMA,scaling,cost,bigPoint);
        % rsiMETS(price,Mrsi,thresh,typeRSI,scaling,cost,bigPoint);
        %                        price   N      M     typeMA   Mrsi    Mdet      thres   typeRSI
        [~,~,sh(ii)] = marsiMETS(data,x(ii,1),x(ii,2),x(ii,3),[x(ii,4) x(ii,5)], x(ii,6),x(ii,7),scaling,cost,bigPoint); %#ok<PFBNS>
    end
end