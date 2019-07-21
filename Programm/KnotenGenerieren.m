function N = KnotenGenerieren(rect,n,m)
% Funktion generiert Knoten f�r eine regelm��ige Vernetzung von Vierecken
% rect ... Viereck [x|y]
% n ... Anzahl der Knoten in X-Richtung 
% m ... Anzahl der Knoten in Y-Richtung

    distx = (rect(2,1) - rect(1,1)) / (n-1)
    disty = (rect(4,2) - rect(1,2)) / (m-1)

    nodes = m * n;
    N = zeros(nodes,2)
    y = 0;

    % Knotenposition in X-Richtung generieren 
    for i=1:nodes
        N(i,1) = rect(1,1) + distx * mod(i-1,n);   
    end

    % Knotenposition in Y-Richtung generieren 
    y = 0;
    for j=1:nodes
        if mod(j-1,n) == 0
            y = y + disty;
        end
        N(j,2) = y;
    end
    N(:,2) = rect(1,2) +N(:,2) - disty;
end