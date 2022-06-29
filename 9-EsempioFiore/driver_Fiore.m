clear all
close all
clc

% Caricamento informazioni camera
load('imgInfo.mat')
load('point2D_159.mat')
load('point3D_159.mat')
load('Loftr_points76.mat')

% Immagine
img = imread('cav.jpg');
img1 = imread('DSC_0159.jpg');
img2= imread('DSC_0076.jpg');


% Informazioni immagine
p2D = imgInfo.punti2DImg; 
p3D = imgInfo.punti3DImg; 
K = imgInfo.K;
p2D_1=correspondences_2D;
p3D_1=correspondences_3D;
pth_img='DSC_0159.jpg';
xmpFile='DSC_0159.xmp';
xmpFile2='DSC_0076.xmp';
[K_1, R_1, T_1] = read_xmp(xmpFile);
[K_2, R_2, T_2] = read_xmp(xmpFile2);

p2D_2=loftr_2D_checkTest;
p3D_2=loftr_3D_checkTest;

% Punti 3D:
figure(1)
scatter3(p3D(:,1),p3D(:,2),p3D(:,3),5,'c');
axis equal

% Punti 3D:
figure(2)
scatter3(p3D_1(:,1),p3D_1(:,2),p3D_1(:,3),5,'c');
axis equal

% Punti 3D:
figure(3)
scatter3(p3D_2(:,1),p3D_2(:,2),p3D_2(:,3),5,'c');
axis equal

%
% Riproietto i punti 3D usando i dati di calibrazione:
figure(4)
imshow(img);
hold on;
plot(p2D(:,1), p2D(:,2),'r.');
P=K*[imgInfo.R imgInfo.T];
[u,v] = proj(P,p3D);
plot(u,v,'go');

figure(5)
imshow(img1);
hold on;
plot(p2D_1(:,1), p2D_1(:,2),'r.');
P_1=K_1*[R_1 T_1];
[u,v] = proj(P_1,p3D_1);
plot(u,v,'go');

figure(6)
imshow(img1);
hold on;
plot(p2D_2(:,1), p2D_2(:,2),'r.');
P_2=K_2*[R_2 T_2];
[u,v] = proj(P_2,p3D_2);
plot(u,v,'go');


% Exterior orientation
% Estraggo un sottoinsieme tra tutte le corrispondenze
[G,s] = exterior_fiore(K_2,p3D_2(1:100,:)',p2D_2(1:100,:)');
%
% Riproietto i punti 3D usando la nuova matrice degli esterni:
figure(7);
imshow(img2);
hold on;
plot(p2D_2(:,1), p2D_2(:,2),'r.');
P1=K_2*G;
[u1,v1] = proj(P1,p3D_2);
plot(u1,v1,'bo');
%


