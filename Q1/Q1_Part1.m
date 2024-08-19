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