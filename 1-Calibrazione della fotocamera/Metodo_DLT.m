%Calibrazione della fotocamera= misurare con precisone ed accuratezza
% i parametri interni ed esterni del modello della fotocamera.
% Metodo Direct Linear Transform:
I=imread("oggetto_calibrazione.jpg");
imshow(I)

%ora carico i punti Mi in coordinate omogenee:
Mi=[0 0 0 1;
    0 6 0 1;
    15 6 0 1;
    15 6 23 1;
    0 0 23 1;
    0 6 23 1;];
% ora prendo i punti 2D dall'immagine:
mi=zeros([6,3]);
mi(:,3)=1;
hold on
for i=1:6
    [x, y] = ginput(1);
    plot(x, y,'+', 'color', 'r');
    mi(i,1)= x;
    mi(i,2)=y;
end
hold off

%Ricavo A data da (Mi'*cron*[mi]) [mi] così riesco a fare prodotto esterno
%linearmente 
A=[];

for i=1:6 
    % Mi è gia trasposto, per come l'ho caricato
    
    % A=[A;kron(skew_mi(mi(i,:).'),Mi(i,:) )]; Se tengo cosi ho 18x12
    % perchè devo tenere conto che solo due righe su tre sono linearmente indipendenti
    KRO = kron(skew_mi(mi(i,:).'),Mi(i,:));
    A=[A;KRO(1,:);KRO(2,:)];
end
%ora L è la mia matrice 2n*12 e devo risolvere il sistema di 
%equazioni lineare Ax=0 (L*vec(P')), allora uso SVD e x è l'ultima colonna 
%di V
[U,S,V] = svd(A);

%prendo ultima colonna di V
vecP=V(:,12);

%Costruiso P 4x3 data tc i primi 4 valori sono la prima riga etc..
P = [vecP(1,1),vecP(2,1),vecP(3,1),vecP(4,1);
vecP(5,1),vecP(6,1),vecP(7,1),vecP(8,1);
vecP(9,1),vecP(10,1),vecP(11,1),vecP(12,1)
];

%Plotto punti per vedere se P è  corretta
%Ricavo mi dalla relazione mi=P*M a meno di un fattore di scala
m_reproj = [];
for j = 1:6   
    mcurrent = P*(Mi(j,:).');
    m_reproj = [m_reproj;mcurrent.'/mcurrent(3,1)];
end

hold on
%proietto
for k = 1:6
    scatter(m_reproj(k,1),m_reproj(k,2),'g');
    
    text((m_reproj(k,1)),(m_reproj(k,2)),strcat('.       ',num2str(k)));
   
end

%ho ricavato P=k[R|t] ora posso fattorizzare ed estrarre K. R e t






