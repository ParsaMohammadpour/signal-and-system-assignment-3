a = zeros(256, 256);
 for j =1 : 256
    a(:,j) = j - 1;
    %agar manzoor in boode ke ba raftan az chap be rast rang ha tire
    %tar shavand, bayad mineveshtim a(i,j) = 256 - j;
 end
figure();
imshow(a, [0,255]);
imwrite(a,'Q1_Part2_Image.png');