% Erstellen eines regelmäßigen Netes 2D in einem Rechteck
% Thomas Pfurtscheller 
% 21.07.2019
close all

Parameter; 


%% Bereiche für das Netz erzeugen
geo1 = [0 0;
        2 0;
        2 2;
        0 2];
    
geo2 = [2 0;
        4 0;
        4 2;
        2 2]

    
%% Knoten erzeugen
N = KnotenGenerieren(geo1,5,5,'e');
M = KnotenGenerieren(geo2,13,13,'l');




%% Plot 
figure(1)
hold on 
patch(geo1(:,1),geo1(:,2),'c')
patch(geo2(:,1),geo2(:,2),'y')
plot(N(:,1),N(:,2),'or')
plot(M(:,1),M(:,2),'or')
axis equal










