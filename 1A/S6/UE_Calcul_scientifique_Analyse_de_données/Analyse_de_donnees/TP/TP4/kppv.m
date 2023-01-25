%--------------------------------------------------------------------------
% ENSEEIHT - 1SN - Analyse de donnees
%
% Données :
% DataA      : les données d'apprentissage (connues)
% LabelA     : les labels des données d'apprentissage
%
% DataT      : les données de test (on veut trouver leur label)
% Nt_test    : nombre de données tests qu'on veut labelliser
%
% K          : le K de l'algorithme des k-plus-proches-voisins
% ListeClass : les classes possibles (== les labels possibles)
%
% Résultat :
% Partition : pour les Nt_test données de test, le label calculé
% d : distances entre le vecteur de test et les vecteurs d'apprentissage
% indicesppv : indices des K plus proches voisins
%--------------------------------------------------------------------------
function [Partition] = kppv(DataA, LabelA, DataT, Nt_test, K, ListeClass)

[Na,~] = size(DataA);

% Initialisation du vecteur d'étiquetage des images tests
Partition = zeros(Nt_test,1);

disp(['Classification des images test dans ' num2str(length(ListeClass)) ' classes'])
disp(['par la methode des ' num2str(K) ' plus proches voisins:'])

% Boucle sur les vecteurs test de l'ensemble de l'évaluation
for i = 1:Nt_test
    
    disp(['image test n°' num2str(i)])

    % Calcul des distances entre le vecteur de test 
    % et les vecteurs d'apprentissage (voisins)
    d = sqrt(sum((repmat(DataT(i,:),Na,1)-DataA).^2,2));
    
    % On ne garde que les indices des K + proches voisins
    [~,I] = sort(d) ;
    indicesppv = I(1:K);

    % Comptage du nombre de voisins appartenant à chaque classe
    countClass = zeros(1,length(ListeClass));
    label_garde = LabelA(indicesppv);

    for j =1:length(ListeClass)
        countClass(j) = length(find(LabelA(indicesppv)==j-1));
    end
    
    % Recherche des classes contenant le maximum de voisins
    [maxvoisin,indice_max] = max(countClass);
    % Si l'image test a le plus grand nombre de voisins dans plusieurs  
    % classes différentes, alors on lui assigne celle du voisin le + proche,
    % sinon on lui assigne l'unique classe contenant le plus de voisins 
     if (length(maxvoisin)==1)
         Classe = label_garde(1);
     else
         Classe = indice_max - 1;
     end

    % Assignation de l'étiquette correspondant à la classe trouvée au point 
    % correspondant à la i-ème image test dans le vecteur "Partition" 
    Partition(i) = Classe;
    
end

end