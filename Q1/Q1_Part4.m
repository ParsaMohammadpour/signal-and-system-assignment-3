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