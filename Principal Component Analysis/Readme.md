# Principal Component Analysis
<h2> Description </h2>
This project is an implementation of the PCA algorithm in machine learning using MATLAB. A dataset of teapot images is used and the images are re-created by using only three principal features of the images.
<h2> Installation </h2>
For the project to run, the dataset “teapots.mat” and the code "PCA.m" must be placed in same folder/directory.
<h2> Usage </h2>
PCA is used when the dimensions of a dataset is to be reduced by keeping the most relevant and effective features of a dataset. Here the 
ﬁle 'teapots.mat' is a matrix of dimensions 100 X 1900. Each row is representing a teapot image.

We are applying the Principal Component Analysis to this data. Below steps are followed to recreate the teapot images after the PCA :

1. The covariance of the teapotImages is calculated using the cov().
2. Then eigen vector and eigen values are calculated from the covariance using the eig().
3. Since the eigen values are all arranged in decreasing fashion, new coeﬃcient matrix is calculated from the ﬁrst three components of eigen vectors
4. Next, the coeﬃcient matric is calculated by multiplying the teapotImages matrix with the three Principal Components
5. The matrix for the new teeapots is constructed by multiplying the new coeﬃcient matrix and the principal components of the eigen vectors matrix.
6. Finally, we add the mean of teapotImages to the product of coeﬃcient matric and eigen vectors.

The program returns the before and after PCA images of first 10 images in the dataset.


Before Applying PCA        |  After Applying PCA
:-------------------------:|:-------------------------:
![f 1](https://user-images.githubusercontent.com/43897597/49427143-93086980-f770-11e8-9df1-926e968ed3ca.jpg) | ![f 2](https://user-images.githubusercontent.com/43897597/49427148-96035a00-f770-11e8-878b-16eacdbf2c8d.jpg)
![f 3](https://user-images.githubusercontent.com/43897597/49427155-9865b400-f770-11e8-8ddf-711fadca668f.jpg) | ![f 4](https://user-images.githubusercontent.com/43897597/49427156-9996e100-f770-11e8-8532-4e02c7601be8.jpg)  
![f 5](https://user-images.githubusercontent.com/43897597/49427158-9ac80e00-f770-11e8-8a3c-715f497275e7.jpg) | ![f 6](https://user-images.githubusercontent.com/43897597/49427163-a0bdef00-f770-11e8-87ca-0aeecc0a3138.jpg) 
![f 7](https://user-images.githubusercontent.com/43897597/49427165-a287b280-f770-11e8-8eb7-f6c8c78f949d.jpg) | ![f 8](https://user-images.githubusercontent.com/43897597/49427168-a4ea0c80-f770-11e8-8d90-e8a158ace1d4.jpg)
![f 9](https://user-images.githubusercontent.com/43897597/49427177-aa475700-f770-11e8-9cea-6e2d1e05ba4f.jpg) | ![f 10](https://user-images.githubusercontent.com/43897597/49427182-aca9b100-f770-11e8-807c-fc988dbc4641.jpg)
![f 11](https://user-images.githubusercontent.com/43897597/49427189-ae737480-f770-11e8-814f-ea9d7e4d82d4.jpg) | ![f 12](https://user-images.githubusercontent.com/43897597/49427192-b0d5ce80-f770-11e8-8c89-968b9f3f3fe4.jpg)
![f 13](https://user-images.githubusercontent.com/43897597/49427198-b3382880-f770-11e8-8bf6-b43d5734160f.jpg) | ![f 14](https://user-images.githubusercontent.com/43897597/49427199-b59a8280-f770-11e8-9f57-9bd66f424a64.jpg)
![f 15](https://user-images.githubusercontent.com/43897597/49427202-b7644600-f770-11e8-9a36-056a9f845703.jpg) | ![f 16](https://user-images.githubusercontent.com/43897597/49427206-b92e0980-f770-11e8-8351-23b49e96b80b.jpg)
![f 17](https://user-images.githubusercontent.com/43897597/49427210-baf7cd00-f770-11e8-90a6-e21ea5f3ec9c.jpg) | ![f 18](https://user-images.githubusercontent.com/43897597/49427214-bcc19080-f770-11e8-8678-9d7776b7ea71.jpg)
![f 19](https://user-images.githubusercontent.com/43897597/49427217-be8b5400-f770-11e8-8b4a-f1b3e88edbac.jpg) | ![f 20](https://user-images.githubusercontent.com/43897597/49427222-c0edae00-f770-11e8-8b12-8cff8d75fa5c.jpg)
