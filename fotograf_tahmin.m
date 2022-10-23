%load('googlenet_2.mat'); %kayıt edilen dataları yükler ve kullanmaya yarar
function fotograf_tahmin(net, image)

I = imread(image);
G = imresize(I, [224, 224]);

[Label, Prob] = classify(net,G);
imshow(G);
title({char(Label), num2str(max(Prob)*100)});
end