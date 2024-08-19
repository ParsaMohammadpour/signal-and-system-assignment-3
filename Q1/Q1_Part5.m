a = zeros(11,24);
for i = 1 : 11
   for j = 1 : 24
      a(i,j)  = 255;
   end
end

for i = 1:4 
   a(i,3) = 0;
end
for i=3:5
   a(4,i) = 0; 
end
for i = 7:8
   a(6,i)  = 0;
   a(11,i) = 0;
end
for i=6:9
   a(7,i) = 0; 
   a(10,i) = 0;
end
for i =5: 6
   a(8,i) = 0;
   a(8,i+4) = 0;
   a(9,i) = 0;
   a(9,i+4) = 0;
end
for i=1:10
   a(i,13) = 0; 
   a(i,16) = 0;
end
for i=13:22
    a(7,i) =0;
    a(8,i) =0;
   a(9,i) = 0;
   a(10,i) = 0;
end
for i=7:8
    a(i,14) = 255;
    a(i,15) = 255;
end
for i =1:3
   a(3.*i,24) = 0; 
end
for i=2:4
    for j =19:21
        if mod(i+j,2) == 1
            a(i,j) = 0;
        end
    end
end
big = zeros(110,240);
for i=1:11
    for j =1:24
        for k =1:10
            for l=1:10
                big(10.*(i-1) + k,10.*(j-1)+l) = a(i,j);
            end
        end
    end
end
figure();
imshow(big,[0,255]);
imwrite(big,'Q1_Part5_Image.png');