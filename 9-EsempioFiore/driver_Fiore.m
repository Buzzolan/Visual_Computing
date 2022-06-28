clear all
close all
clc

% Caricamento informazioni camera
%load('imgInfo.mat')
load('point2D_159.mat')
load('point3D_159.mat')

% Immagine
%img = imread('cav.jpg');
img = imread('DSC_0159.jpg');


% Informazioni immagine
%p2D = imgInfo.punti2DImg; correspondences_2D
%p3D = imgInfo.punti3DImg; correspondences_3D
%K = imgInfo.K;
p2D=correspondences_2D;
p3D=correspondences_3D;
pth_img='DSC_0159.jpg';
xmpFile='DSC_0159.xmp';
[K, R, T] = read_xmp(xmpFile);
% Punti 3D:
figure(1)
scatter3(p3D(:,1),p3D(:,2),p3D(:,3),5,'c');
axis equal

%
% Riproietto i punti 3D usando i dati di calibrazione:
figure(2)
imshow(img);
hold on;
plot(p2D(:,1), p2D(:,2),'r.');
P=K*[R T];
[u,v] = proj(P,p3D);
plot(u,v,'go');

% Punti 3D:
figure(2)
scatter3(p3D(:,1),p3D(:,2),p3D(:,3),5,'c');
axis equal

% Exterior orientation
% Estraggo un sottoinsieme tra tutte le corrispondenze
[G,s] = exterior_fiore(K,p3D(1:100,:)',p2D(1:100,:)');
%
% Riproietto i punti 3D usando la nuova matrice degli esterni:
figure(3);
imshow(img);
hold on;
plot(p2D(:,1), p2D(:,2),'r.');
P1=K*G;
[u1,v1] = proj(P1,p3D);
plot(u1,v1,'bo');
%

% Confronto tra la posa stimata con dalla calibrazione e quella
% stimata con il metodo di Fiore:
[i
    R T G]

