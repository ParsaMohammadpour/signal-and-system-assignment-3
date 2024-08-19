a = zeros(128,128,3,'uint8');
for i = 1 : 128
   for j = 1 : 128
      for k = 1 : 3
          a (i,j,k)= randi(256) - 1;
      end
   end
end
figure();
imshow(a);
imwrite(a,'Q1_Part3_Image.png');