%Part 1
a = zeros(128, 128);
for i = 1 : 128
    for j = 1 : 128
        if (mod(i + j, 2) == 0)
            a(i,j) = 255;
        else
            a(i,j) = 0;
        end
    end
end
figure();
imshow(a, [0,255]);
imwrite(a,'Q1_Part1_Image.png');


%****************************************************************
%Part2
a = zeros(256, 256);
 for j =1 : 256
    a(:,j) = j - 1;
    %agar manzoor in boode ke ba raftan az chap be rast rang ha tire
    %tar shavand, bayad mineveshtim a(i,j) = 256 - j;
 end
figure();
imshow(a, [0,255]);
imwrite(a,'Q1_Part2_Image.png');


%********************************************************************
%Part3
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



%*********************************************************************
%Part4
a = zeros(256,256,3,'uint8');
%morabae siah :
for i = 1 : 256
   for j = 1 : 256
      for k = 1 : 3
          a (i,j,k)= 255;
      end
   end
end
for i = 1:20
   for k = 1:3
      a(120+i,1,k) = 0;
      a(120,i,k) = 0;
      a(120+i,20,k) = 0;
      a(140,i,k) = 0;
   end
end
%dayere to khali zard
r = 10;
ox = 70;
oy = 70;
for teta = 0 : 360
   y = cos(teta) .* r + oy;
   x = sin(teta) .* r + ox;
   if teta >= 270
       a(floor(x),floor(y),1) = 255;
       a(floor(x),floor(y),2) = 255;
       a(floor(x),floor(y),3) = 0;
   end
   if teta>=180 && teta <= 270
       a(floor(x),ceil(y),1) = 255;
       a(floor(x),ceil(y),2) = 255;
       a(floor(x),ceil(y),3) = 0;
   end
   if teta>=90 && teta <= 180
       a(ceil(x),ceil(y),1) = 255;
       a(ceil(x),ceil(y),2) = 255;
       a(ceil(x),ceil(y),3) = 0;
   end
   if teta <= 90
       a(ceil(x),floor(y),1) = 255;
       a(ceil(x),floor(y),2) = 255;
       a(ceil(x),floor(y),3) = 0;
   end
   teta = teta + 1;
end
%dayere to pore ghermez
r = 5;
ox = 140;
oy = 140;
for teta = 0 : 360
   y = cos(teta) .* r + oy;
   x = sin(teta) .* r + ox;
   if teta >= 270
       a(floor(x),floor(y),1) = 255;
       a(floor(x),floor(y),2) = 0;
       a(floor(x),floor(y),3) = 0;
   end
   if teta>=180 && teta <= 270
       a(floor(x),ceil(y),1) = 255;
       a(floor(x),ceil(y),2) = 0;
       a(floor(x),ceil(y),3) = 0;
   end
   if teta>=90 && teta <= 180
       a(ceil(x),ceil(y),1) = 255;
       a(ceil(x),ceil(y),2) = 0;
       a(ceil(x),ceil(y),3) = 0;
   end
   if teta <= 90
       a(ceil(x),floor(y),1) = 255;
       a(ceil(x),floor(y),2) = 0;
       a(ceil(x),floor(y),3) = 0;
   end
end
for x=-5:5
    for y=-5:5
        if(x.*x + y.*y <= r.*r)
           a(ox + x, oy + y, 1) = 255;
           a(ox + x, oy + y, 2) = 0;
           a(ox + x, oy + y, 3) = 0;
        end
    end
end
figure();
imshow(a);
imwrite(a,'Q1_Part4_Image.png');




%*********************************************************************
%Part5
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