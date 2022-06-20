% Visione Computazionale proiezione linea epipilare di ricerca delle
% corrispondenze 

%
clc
clear all
close all
load('Matrice_P_1.mat');
P1=P(:,:);
load('Matrice_P_2.mat');
P2=P(:,:);
Ptot(:,:,1)=P1(:,:);
Ptot(:,:,2)=P2(:,:);
%
[F,el,er] = fund(Ptot(1:3,:,1),Ptot(1:3,:,2));

%
% Show epipolar line:
% Carico le immagini 2D 
I_left=imread('oggetto_1.jpg');
I_right=imread('oggetto_2.jpg');

[m n c] = size(I_left);

figure,imagesc(I_left); colormap(gray); title('Click a point on this Left Image');axis image;
figure,imagesc(I_right); colormap(gray); title('Corresponding Epipolar Line in this Right Image');axis image;

list =['r' 'b' 'g'];

for i=1:3
    % Clicking a point on the left image:
    figure(1);    
    [left_x left_y] = ginput(1);
    hold on;
    plot(left_x,left_y,'r*');

    % Finding the epipolar line on the right image:
    left_P = [left_x; left_y; 1];

    right_P = F*left_P;

    right_epipolar_x=1:n;
    % Using the eqn of line: ax+by+c=0; y = (-c-ax)/b
    right_epipolar_y=(-right_P(3)-right_P(1)*right_epipolar_x)/right_P(2);
    figure(2);
    hold on;
    plot(right_epipolar_x,right_epipolar_y,list(mod(i,8)));
end
