clc
clear all
close all


mkdir('modifedilmis_goruntu')

dd = dir('*.jpg')

for cntr=1:length(dd)
    
    img = imread(dd(cntr).name)
    
    imgresized = imresize(img,[227 227]);
    
    imgreszed_RGB=cat(3,imgresized,imgresized,imgresized);
    
    imwrite(imgreszed_RGB,['modifedilmis_goruntu\' dd(cntr).name ]);
    
end
