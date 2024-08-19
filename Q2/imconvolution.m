function out = imconvolution(image, filter, status)
n = size(image);
f = length(filter);
if strcmp(status,'Median')
    f_power = f .* f;
    a = ones(f_power);
    out = uint8(zeros(0,0));
    for i = 1 : n(1) - f + 1
        for j = 1 : n(2) - f + 1
           for channel = 1 : 3
               window = image(i : i + f - 1, j : j + f - 1, channel);
               out(i, j, channel) = median(window,'all');
            end
        end
    end
else
    p = floor((f - 1) / 2);
    o = floor(n + 2.*p - f + 1);
    image = padarray(image, [p,p], 0, 'both');
    out = uint8(zeros(0,0));
    for channel = 1 : 3
       for i = 1 : n(1) - f + 1
          for j = 1 : n(2) - f + 1
             window = image(i : i + f - 1, j : j + f - 1, channel); 
             out(i, j, channel) = uint8(sum(sum(double(window) .* double(filter))));
          end
       end
    end
    end
end