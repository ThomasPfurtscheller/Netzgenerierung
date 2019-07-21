% Erstellen eines regelmäßigen Netes 2D in einem Rechteck
% Thomas Pfurtscheller 
% 21.07.2019
close all

Parameter; 


%% Bereiche für das Netz erzeugen
x = 5;
y = 2;
l1 = 2;
l2 = 1;
geo1 = [0 0;
        l1 0;
        l1 y;
        0 y];
    
geo2 = [l1 0;
        l1+l2 0;
        l1+l2 y;
        l1 y];
    
geo3 = [l1+l2 0;
        x 0;
        x y;
        l1+l2 y];

    
%% Knoten erzeugen
U = KnotenGenerieren(geo1,7,3,'e');
V = KnotenGenerieren(geo2,7,7,'l');
W = KnotenGenerieren(geo3,7,3,'e');


N = PunkteSortieren([U; V; W])


%% Plot 
figure(1)
hold on 
patch(geo1(:,1),geo1(:,2),'c')
patch(geo2(:,1),geo2(:,2),'y')
patch(geo3(:,1),geo3(:,2),'c')
plot(N(:,1),N(:,2),'or')
axis equal










