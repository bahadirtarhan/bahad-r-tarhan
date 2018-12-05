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
title('�telenmi� Resim')



%%
%CCC
resim=imread('indir.png');
kucukresim=imresize(resim,[50 125]);
imshow(resim)
title('Orijinal Resim')
figure
imshow(kucukresim)
title('Boyutland�r�lm�� Resim')
%%
%DDD
resim=imread('indir.png');
yeniresim = imtranslate(resim,[35, 186]);
imshow(resim)
title('Orjinal Resim')
figure
imshow(yeniresim)
title('�telenmi� Resim')
%%
%EEE
resim=imread('indir.png');
birinci = imrotate(resim,-38);
ikinci  = imrotate(resim,245);
imshow(birinci)
title('-38 derece d�nen')
figure 
imshow(ikinci)
title('245 derece d�nen')
%%
%FFF
resim=imread('indir.png');
griresim=rgb2gray(resim);
ikinciresim=imread('images.jpg');
resimm=imresize(ikinciresim,[256 256]);
griresimm=rgb2gray(resimm);
fark=griresim-griresimm;
imshow(fark)
%Resimlerin fark�n� ald���m�zda ��kan yeni resmin siyah tonlar�n�n
%artt���n� g�rd�k. Resmin matris de�erleri 0'a yakla�t�. Yani matris
%de�erlerimiz 0'a yakla�t�k�a siyah tonlar� artar.

%%
%GGG
resim=imread('indir.png');
griresim=rgb2gray(resim);
ikinciresim=imread('images.jpg');
resimm=imresize(ikinciresim,[256 256]);
griresimm=rgb2gray(resimm);
toplam=griresim+griresimm;
imshow(toplam)
%Resimleri toplad���m�zda ��kan yeni resmin beyaz tonlar�n�n
%artt���n� g�rd�k. Resmin matris de�erleri 255'e yakla�t�. Yani matris
%de�erlerimiz 255'e yakla�t�k�a beyaz tonlar� artar.

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
title('0.008 ile �arp�m');
figure
imshow(ikincicarpim);
title('2.5 ile �arp�m');
%Resmi 0.008 de�eri ile �arpt���m�zda yeni matris de�erleri 0,1 ve
%de�erlerini al�r ve resmimizin tamam� siyah tonda olur. 

%Resmi 2.5 de�eri ile �arpt���m�zda ise yeni matris de�erlerimiz 255
%de�erine yakla�aca��ndan resmizde beyaz tonlar�n a��rl�kta oldu�unu
%g�r�r�z.

%%
%���nc� soru
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


