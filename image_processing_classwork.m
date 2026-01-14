inputImage = imread("C:\Users\USER\Pictures\Saved Pictures\Kq.jpg"); 
imshow(inputImage);

%Convert to grayscale
gray = rgb2gray(inputImage);
imshow(gray);

subplot(1,2,1); imshow(inputImage); title('Kq');
subplot(1,2,2); imshow(gray); title('Gray Kq');

%Point processing
%g(x,y)=f(x,y)+20
newgray= gray+20;
subplot(1,3,1); imshow(inputImage); title('Kq');
subplot(1,3,2); imshow(gray); title('Gray Kq');
subplot(1,3,3); imshow(newgray); title('Gray Kq+20');

%g(x,y)=f(-x,y)
flipnewgray=fliplr(newgray);
subplot(1,2,1); imshow(newgray); title('Gray Kq');
subplot(1,2,2); imshow(flipnewgray); title('Gray Kq flipped');

%Gamma conversion
gamma_value=0.5;
gammagray=imadjust(gray,[],[],gamma_value);
subplot(1,2,1); imshow(gray); title('Gray Kq');
subplot(1,2,2); imshow(gammagray); title('Gamma coversion Gray Kq');

%Contrast Stretching
contrastgray=imadjust(gray);
subplot(1,2,1);imshow(gray);title("Gray Kq");
subplot(1,2,2);imshow(contrastgray);title("Contrast Stretched Gray Kq")

%Negative transformation
% 2. Apply negative transformation
neggray = imcomplement(gray);
subplot(1,2,1);imshow(gray);title("Gray Kq");
subplot(1,2,2);imshow(neggray);title("Negative Gray Kq");

% 3. Display original and negative side-by-side
imshowpair(gray, neggray, 'montage');
title('Original (Left) vs. Negative (Right)');

%Histogram eqaulization
histgray= histeq(gray);
subplot(1,2,1);imshow(gray);title("Gray");
subplot(1,2,2);imshow(histgray);title("Equalized Gray")

