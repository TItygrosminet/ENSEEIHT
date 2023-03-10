open Parser

(* Fonction d'affichage des unités lexicales et des données qu'elles contiennent *)
let printToken t =
  (print_endline
     (match t with
       | UL_ACCOUV -> "{"
       | UL_ACCFER -> "}"
       | UL_MODEL -> "model"
       | UL_UPIDENT n -> n
       | UL_IDENT n -> n
       | UL_ENTIER n -> string_of_int n
       | UL_FLOAT ->  "float"
       | UL_SYSTEM -> "system"
       | UL_BLOCK -> "block"
       | UL_IN -> "in"
       | UL_OUT -> "out"
       | UL_FLOW -> "flow"
       | UL_FROM -> "from"
       | UL_TO -> "to" 
       | UL_INT -> "int"
       | UL_BOOLEAN -> "bool"
       | UL_PAROUV -> "("
       | UL_PARFER -> ")"
       | UL_VIRG -> ","
       | UL_PTVIRG -> ";"
       | UL_POINT-> "."
       | UL_CROOUV -> "["
       | UL_CROFER -> "]"
       | UL_DEUXPT -> ":"
       | UL_FIN -> "EOF"
));;

(* Analyse lexicale du fichier passé en paramètre de la ligne de commande *)
if (Array.length Sys.argv > 1)
then
  let lexbuf = (Lexing.from_channel (open_in Sys.argv.(1))) in
  let token = ref (Lexer.lexer lexbuf) in
  while ((!token) != UL_FIN) do
    (printToken (!token));
    (token := (Lexer.lexer lexbuf))
  done
else
  (print_endline "MainJSON fichier");;

(* Analyse lexicale, syntaxique et sémantique du fichier passé en paramètre de la ligne de commande *)
if (Array.length Sys.argv > 1)
then
  let lexbuf = (Lexing.from_channel (open_in Sys.argv.(1))) in
  (Parser.modele Lexer.lexer lexbuf)
else
  (print_endline "MainJSON fichier");;
