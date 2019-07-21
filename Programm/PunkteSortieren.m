function N = PunkteSortieren(N)
% Sortiert die Punkte im R2 aufsteigend nach X und Y
% N ... Matrix mit Punktkoordinaten [x|y]

% Bubblesort ist stabil, deshalb muss die erste Spalte nicht sortiert
% werden wenn beim übergeben von N sichergestellt wird, dass die Knoten in
% X bereits aufsteigend sind


% Bubblesort 
for n=length(N):-1:1
    for i=1:1:n-1
       if N(i,1) > N(i+1,1)
           B = N(i,:);           % Dreieckstausch
           N(i,:) = N(i+1,:);
           N(i+1,:) = B;
       end
    end    
end