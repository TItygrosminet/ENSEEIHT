with Piles;
with Ada.Text_IO;            use Ada.Text_IO;

-- Montrer le risque d'autoriser l'affectation entre variables dont le type
-- est une structure chaînée.
procedure Illustrer_Affectation_Pile is
	package Pile is
		new Piles (Character);
	use Pile;

	procedure Afficher is
		new Pile.Afficher (Put);

	P1, P2 : T_Pile;
begin
	-- construire la pile P1
	Initialiser (P1);
	Empiler (P1, 'A');
	Empiler (P1, 'B');
     Afficher (P1); New_Line;    -- XXX Qu'est ce qui s'affiche ?

     Initialiser (P2);
	 Empiler (P2, 'A');
     Empiler (P2, 'B');

	-- P2 := P1;                  -- XXX Conseillé ? Non, d'après l'exercice 3
	-- pragma Assert (P1 = P2);

	Depiler (P2);              -- XXX Quel effet ?
	Afficher (P2); New_Line;   -- XXX Qu'est ce qui s'affiche ?
	Afficher (P1); New_Line;   -- XXX Qu'est ce qui s'affiche ?
	-- XXX Que donne l'exécution avec valkyrie ?

    Depiler (P1);	-- XXX correct ?
    Detruire (P1);
    Detruire (P2);
end Illustrer_Affectation_Pile;
