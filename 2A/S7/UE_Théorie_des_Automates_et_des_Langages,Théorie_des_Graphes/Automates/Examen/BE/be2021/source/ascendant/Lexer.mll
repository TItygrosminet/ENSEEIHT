{

(* Partie recopiée dans le fichier CaML généré. *)
(* Ouverture de modules exploités dans les actions *)
(* Déclarations de types, de constantes, de fonctions, d'exceptions exploités dans les actions *)

  open Parser 
  exception LexicalError

}

(* Déclaration d'expressions régulières exploitées par la suite *)
let chiffre = ['0' - '9']
let minuscule = ['a' - 'z']
let majuscule = ['A' - 'Z']
let alphabet = minuscule | majuscule
let alphanum = alphabet | chiffre | '_'
let commentaire =
  (* Commentaire fin de ligne *)
  "#" [^'\n']*

rule lexer = parse
  | ['\n' '\t' ' ']+					{ (lexer lexbuf) }
  | commentaire						{ (lexer lexbuf) }
  | "{"							{ UL_ACCOUV }
  | "}"							{ UL_ACCFER }
  | "model"						{ UL_MODEL }
  | "system"             { UL_SYSTEM }
  | "block"             { UL_BLOCK }
  | "flow"            { UL_FLOW }
  | "from"           { UL_FROM }
  | "to"             { UL_TO }
  | "in"            { UL_IN }
  | "out"           { UL_OUT }
  | "int"           { UL_INT }
  | "float"         { UL_FLOAT }
  | "boolean"       { UL_BOOLEAN }
  | "("            { UL_PAROUV }
  | ")"            { UL_PARFER }
  | "["            { UL_CROOUV }
  | "]"            { UL_CROFER }
  | ";"            { UL_PTVIRG }
  | ","            { UL_VIRG }
  | ":"            { UL_DEUXPT }
  | "."           { UL_POINT }
  | majuscule(minuscule|majuscule)* as texte { UL_UPIDENT texte }
  | ['1' - '9']chiffre* as texte { UL_ENTIER (int_of_string texte) }
  | minuscule(minuscule|majuscule)* as texte { UL_IDENT texte }
  | eof							{ UL_FIN }
  | _ as texte				 		{ (print_string "Erreur lexicale : ");(print_char texte);(print_newline ()); raise LexicalError }

{

}
