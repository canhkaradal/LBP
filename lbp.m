clc,clear all,close all
xx=imread('lena.jpg');
gri=xx(:,:,1)*.2989+xx(:,:,2)*.5870+xx(:,:,3)*.1140;
figure,imshow(gri)
[m n]=size(gri);
for i=1:m-2
    for j=1:n-2
        blok = gri(i:i+2,j:j+2);
        b(1)=blok(1,1);
        b(2)=blok(1,2);
        b(3)=blok(1,3);
        b(4)=blok(2,1);
        b(5)=blok(2,3);
        b(6)=blok(3,1);
        b(7)=blok(3,2);
        b(8)=blok(3,3);
        tpl=0;
        for k=1:8
        tpl= tpl +(b(k)>=blok(2,2))*2^(8-k);
        end
        lbpp(i,j)=tpl;
    end
end
figure,imshow(lbpp,[]);