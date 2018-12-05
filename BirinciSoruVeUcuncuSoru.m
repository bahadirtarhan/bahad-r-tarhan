%AAA
resim=imread('indir.png');
griresim=rgb2gray(resim);
imshow(resim);
title('Orjinal Resim')
figure
imshow(griresim);
title('Gri Resim');

%%
%BBB
resim=imread('indir.png');
griresim=rgb2gray(resim);
[w,h]=size(griresim);
B=zeros(w,h);
for i=75:w
for j=120:h
    B(i,j)=griresim(i-75+1,j-120+1);
end
end
B = uint8(B);
imshow(griresim)
title('Orjinal Resim')
figure
imshow(B)
title('Ötelenmiþ Resim')



%%
%CCC
resim=imread('indir.png');
kucukresim=imresize(resim,[50 125]);
imshow(resim)
title('Orijinal Resim')
figure
imshow(kucukresim)
title('Boyutlandýrýlmýþ Resim')
%%
%DDD
resim=imread('indir.png');
yeniresim = imtranslate(resim,[35, 186]);
imshow(resim)
title('Orjinal Resim')
figure
imshow(yeniresim)
title('Ötelenmiþ Resim')
%%
%EEE
resim=imread('indir.png');
birinci = imrotate(resim,-38);
ikinci  = imrotate(resim,245);
imshow(birinci)
title('-38 derece dönen')
figure 
imshow(ikinci)
title('245 derece dönen')
%%
%FFF
resim=imread('indir.png');
griresim=rgb2gray(resim);
ikinciresim=imread('images.jpg');
resimm=imresize(ikinciresim,[256 256]);
griresimm=rgb2gray(resimm);
fark=griresim-griresimm;
imshow(fark)
%Resimlerin farkýný aldýðýmýzda çýkan yeni resmin siyah tonlarýnýn
%arttýðýný gördük. Resmin matris deðerleri 0'a yaklaþtý. Yani matris
%deðerlerimiz 0'a yaklaþtýkça siyah tonlarý artar.

%%
%GGG
resim=imread('indir.png');
griresim=rgb2gray(resim);
ikinciresim=imread('images.jpg');
resimm=imresize(ikinciresim,[256 256]);
griresimm=rgb2gray(resimm);
toplam=griresim+griresimm;
imshow(toplam)
%Resimleri topladýðýmýzda çýkan yeni resmin beyaz tonlarýnýn
%arttýðýný gördük. Resmin matris deðerleri 255'e yaklaþtý. Yani matris
%deðerlerimiz 255'e yaklaþtýkça beyaz tonlarý artar.

%%
%HHH
resim=imread('indir.png');
griresim=rgb2gray(resim);
ikinciresim=imread('images.jpg');
resimm=imresize(ikinciresim,[256 256]);
griresimm=rgb2gray(resimm);
carpim=griresim.*griresimm;
imshow(carpim)
%%
%III
resim=imread('indir.png');
ilkcarpim=0.008.*resim;
ikincicarpim= 2.5 .* resim;
imshow(ilkcarpim);
title('0.008 ile çarpým');
figure
imshow(ikincicarpim);
title('2.5 ile çarpým');
%Resmi 0.008 deðeri ile çarptýðýmýzda yeni matris deðerleri 0,1 ve
%deðerlerini alýr ve resmimizin tamamý siyah tonda olur. 

%Resmi 2.5 deðeri ile çarptýðýmýzda ise yeni matris deðerlerimiz 255
%deðerine yaklaþacaðýndan resmizde beyaz tonlarýn aðýrlýkta olduðunu
%görürüz.

%%
%üçüncü soru
resim=imread('indir.png');
griresim=rgb2gray(resim);
[x y]=size(griresim);
n=4;
im=zeros(256,256)

for a=1:n:256
     for b=1:n:256
         im(a,b)=griresim(a,b);
     end
end
imshow(griresim)
figure
imshow(im)


