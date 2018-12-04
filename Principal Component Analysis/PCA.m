load teapots.mat
PCA(teapotImages);
function [] = PCA(teapotImages)
%PCA Summary of this function goes here
%   Detailed explanation goes here

% covariance of matrix teapotImages
coeff = cov(teapotImages);

% Calculating the eigen Values for the covariance matix coeff
[eigVector eigValues] = eig(coeff); 

% sorting eigValues in descending order
[eigVector eigValues] = sort(eigValues,'descend');

% since the eigen values are all arranges in decreasing fasion, new
% coefficient matrix is calculated fromthe first three components of eigen
% vectors
newCoeff = teapotImages * (eigVector(:,1:3));

% recreating the images
z = newCoeff * (eigVector(:,1:3))' ; 
xbar = mean(teapotImages);
centerData = [];
for i = 1:100
    centerData = [ centerData; teapotImages(i,:)-xbar];
end
newTeapotImages = z + centerData;

for i = 1:10    
figure;
figi = imagesc(reshape(teapotImages(i,:),38,50));
saveas (figi,'Figure 1' )
figure ;
fig_i = imagesc(reshape(newTeapotImages(i,:),38,50));
saveas (fig_i,'Figure 2' )
end
end


