# 1 "Lexer.mll"
 

(* Partie recopiée dans le fichier CaML généré. *)
(* Ouverture de modules exploités dans les actions *)
(* Déclarations de types, de constantes, de fonctions, d'exceptions exploités dans les actions *)

  open Parser 
  exception LexicalError


# 13 "Lexer.ml"
let __ocaml_lex_tables = {
  Lexing.lex_base =
   "\000\000\242\255\058\000\116\000\002\000\246\255\247\255\248\255\
    \249\255\192\000\251\255\252\255\253\255\027\000\002\000\250\000\
    \052\001\110\001\245\255";
  Lexing.lex_backtrk =
   "\255\255\255\255\012\000\011\000\013\000\255\255\255\255\255\255\
    \255\255\011\000\255\255\255\255\255\255\001\000\000\000\011\000\
    \011\000\005\000\255\255";
  Lexing.lex_default =
   "\001\000\000\000\255\255\255\255\255\255\000\000\000\000\000\000\
    \000\000\255\255\000\000\000\000\000\000\013\000\255\255\255\255\
    \255\255\255\255\000\000";
  Lexing.lex_trans =
   "\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\014\000\014\000\014\000\014\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \014\000\008\000\014\000\013\000\000\000\255\255\000\000\000\000\
    \012\000\011\000\000\000\000\000\005\000\007\000\006\000\018\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\004\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\002\000\002\000\002\000\002\000\002\000\002\000\002\000\
    \002\000\002\000\002\000\002\000\002\000\002\000\002\000\002\000\
    \002\000\002\000\002\000\002\000\002\000\002\000\002\000\002\000\
    \002\000\002\000\002\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\003\000\003\000\003\000\003\000\003\000\009\000\003\000\
    \003\000\003\000\003\000\003\000\003\000\003\000\003\000\003\000\
    \003\000\003\000\003\000\003\000\003\000\003\000\003\000\003\000\
    \003\000\003\000\003\000\002\000\002\000\002\000\002\000\002\000\
    \002\000\002\000\002\000\002\000\002\000\002\000\002\000\002\000\
    \002\000\002\000\002\000\002\000\002\000\002\000\002\000\002\000\
    \002\000\002\000\002\000\002\000\002\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\002\000\002\000\002\000\002\000\002\000\
    \002\000\002\000\002\000\002\000\002\000\002\000\002\000\002\000\
    \002\000\002\000\002\000\002\000\002\000\002\000\002\000\002\000\
    \002\000\002\000\002\000\002\000\002\000\003\000\003\000\003\000\
    \003\000\003\000\003\000\003\000\003\000\003\000\003\000\003\000\
    \003\000\003\000\003\000\003\000\003\000\003\000\003\000\003\000\
    \003\000\003\000\003\000\003\000\003\000\003\000\003\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\003\000\003\000\003\000\
    \003\000\003\000\003\000\003\000\003\000\003\000\003\000\003\000\
    \003\000\003\000\003\000\003\000\003\000\003\000\003\000\003\000\
    \003\000\003\000\003\000\003\000\003\000\003\000\003\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \010\000\003\000\003\000\003\000\003\000\003\000\003\000\003\000\
    \003\000\003\000\003\000\003\000\003\000\003\000\003\000\003\000\
    \003\000\003\000\003\000\003\000\003\000\003\000\003\000\003\000\
    \003\000\003\000\003\000\255\255\000\000\000\000\000\000\000\000\
    \000\000\015\000\003\000\003\000\003\000\003\000\003\000\003\000\
    \003\000\003\000\003\000\003\000\003\000\003\000\003\000\003\000\
    \003\000\003\000\003\000\003\000\003\000\003\000\003\000\003\000\
    \003\000\003\000\003\000\003\000\003\000\003\000\003\000\003\000\
    \003\000\003\000\003\000\003\000\003\000\003\000\003\000\003\000\
    \003\000\003\000\003\000\003\000\003\000\003\000\003\000\003\000\
    \003\000\003\000\003\000\003\000\003\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\003\000\003\000\003\000\003\000\003\000\
    \003\000\003\000\003\000\016\000\003\000\003\000\003\000\003\000\
    \003\000\003\000\003\000\003\000\003\000\003\000\003\000\003\000\
    \003\000\003\000\003\000\003\000\003\000\003\000\003\000\003\000\
    \003\000\003\000\003\000\003\000\003\000\003\000\003\000\003\000\
    \003\000\003\000\003\000\003\000\003\000\003\000\003\000\003\000\
    \003\000\003\000\003\000\003\000\003\000\003\000\003\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\003\000\003\000\003\000\
    \003\000\003\000\003\000\003\000\003\000\003\000\003\000\003\000\
    \017\000\003\000\003\000\003\000\003\000\003\000\003\000\003\000\
    \003\000\003\000\003\000\003\000\003\000\003\000\003\000\003\000\
    \003\000\003\000\003\000\003\000\003\000\003\000\003\000\003\000\
    \003\000\003\000\003\000\003\000\003\000\003\000\003\000\003\000\
    \003\000\003\000\003\000\003\000\003\000\003\000\003\000\003\000\
    \003\000\000\000\000\000\000\000\000\000\000\000\000\000\003\000\
    \003\000\003\000\003\000\003\000\003\000\003\000\003\000\003\000\
    \003\000\003\000\003\000\003\000\003\000\003\000\003\000\003\000\
    \003\000\003\000\003\000\003\000\003\000\003\000\003\000\003\000\
    \003\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000";
  Lexing.lex_check =
   "\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\000\000\000\000\014\000\014\000\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \000\000\000\000\014\000\000\000\255\255\013\000\255\255\255\255\
    \000\000\000\000\255\255\255\255\000\000\000\000\000\000\004\000\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\000\000\255\255\255\255\255\255\255\255\255\255\
    \255\255\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\255\255\255\255\255\255\255\255\255\255\
    \255\255\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\002\000\002\000\002\000\002\000\002\000\
    \002\000\002\000\002\000\002\000\002\000\002\000\002\000\002\000\
    \002\000\002\000\002\000\002\000\002\000\002\000\002\000\002\000\
    \002\000\002\000\002\000\002\000\002\000\255\255\255\255\255\255\
    \255\255\255\255\255\255\002\000\002\000\002\000\002\000\002\000\
    \002\000\002\000\002\000\002\000\002\000\002\000\002\000\002\000\
    \002\000\002\000\002\000\002\000\002\000\002\000\002\000\002\000\
    \002\000\002\000\002\000\002\000\002\000\003\000\003\000\003\000\
    \003\000\003\000\003\000\003\000\003\000\003\000\003\000\003\000\
    \003\000\003\000\003\000\003\000\003\000\003\000\003\000\003\000\
    \003\000\003\000\003\000\003\000\003\000\003\000\003\000\255\255\
    \255\255\255\255\255\255\255\255\255\255\003\000\003\000\003\000\
    \003\000\003\000\003\000\003\000\003\000\003\000\003\000\003\000\
    \003\000\003\000\003\000\003\000\003\000\003\000\003\000\003\000\
    \003\000\003\000\003\000\003\000\003\000\003\000\003\000\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \000\000\009\000\009\000\009\000\009\000\009\000\009\000\009\000\
    \009\000\009\000\009\000\009\000\009\000\009\000\009\000\009\000\
    \009\000\009\000\009\000\009\000\009\000\009\000\009\000\009\000\
    \009\000\009\000\009\000\013\000\255\255\255\255\255\255\255\255\
    \255\255\009\000\009\000\009\000\009\000\009\000\009\000\009\000\
    \009\000\009\000\009\000\009\000\009\000\009\000\009\000\009\000\
    \009\000\009\000\009\000\009\000\009\000\009\000\009\000\009\000\
    \009\000\009\000\009\000\015\000\015\000\015\000\015\000\015\000\
    \015\000\015\000\015\000\015\000\015\000\015\000\015\000\015\000\
    \015\000\015\000\015\000\015\000\015\000\015\000\015\000\015\000\
    \015\000\015\000\015\000\015\000\015\000\255\255\255\255\255\255\
    \255\255\255\255\255\255\015\000\015\000\015\000\015\000\015\000\
    \015\000\015\000\015\000\015\000\015\000\015\000\015\000\015\000\
    \015\000\015\000\015\000\015\000\015\000\015\000\015\000\015\000\
    \015\000\015\000\015\000\015\000\015\000\016\000\016\000\016\000\
    \016\000\016\000\016\000\016\000\016\000\016\000\016\000\016\000\
    \016\000\016\000\016\000\016\000\016\000\016\000\016\000\016\000\
    \016\000\016\000\016\000\016\000\016\000\016\000\016\000\255\255\
    \255\255\255\255\255\255\255\255\255\255\016\000\016\000\016\000\
    \016\000\016\000\016\000\016\000\016\000\016\000\016\000\016\000\
    \016\000\016\000\016\000\016\000\016\000\016\000\016\000\016\000\
    \016\000\016\000\016\000\016\000\016\000\016\000\016\000\017\000\
    \017\000\017\000\017\000\017\000\017\000\017\000\017\000\017\000\
    \017\000\017\000\017\000\017\000\017\000\017\000\017\000\017\000\
    \017\000\017\000\017\000\017\000\017\000\017\000\017\000\017\000\
    \017\000\255\255\255\255\255\255\255\255\255\255\255\255\017\000\
    \017\000\017\000\017\000\017\000\017\000\017\000\017\000\017\000\
    \017\000\017\000\017\000\017\000\017\000\017\000\017\000\017\000\
    \017\000\017\000\017\000\017\000\017\000\017\000\017\000\017\000\
    \017\000\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255";
  Lexing.lex_base_code =
   "";
  Lexing.lex_backtrk_code =
   "";
  Lexing.lex_default_code =
   "";
  Lexing.lex_trans_code =
   "";
  Lexing.lex_check_code =
   "";
  Lexing.lex_code =
   "";
}

let rec lexer lexbuf =
   __ocaml_lex_lexer_rec lexbuf 0
and __ocaml_lex_lexer_rec lexbuf __ocaml_lex_state =
  match Lexing.engine __ocaml_lex_tables __ocaml_lex_state lexbuf with
      | 0 ->
# 23 "Lexer.mll"
                         ( (lexer lexbuf) )
# 206 "Lexer.ml"

  | 1 ->
# 24 "Lexer.mll"
                     ( (lexer lexbuf) )
# 211 "Lexer.ml"

  | 2 ->
# 25 "Lexer.mll"
              ( UL_PAROUV )
# 216 "Lexer.ml"

  | 3 ->
# 26 "Lexer.mll"
              ( UL_PARFER )
# 221 "Lexer.ml"

  | 4 ->
# 27 "Lexer.mll"
              ( UL_FIN )
# 226 "Lexer.ml"

  | 5 ->
# 28 "Lexer.mll"
                    ( UL_FAIL)
# 231 "Lexer.ml"

  | 6 ->
# 29 "Lexer.mll"
              (UL_COUP)
# 236 "Lexer.ml"

  | 7 ->
# 30 "Lexer.mll"
             (UL_NEG)
# 241 "Lexer.ml"

  | 8 ->
# 31 "Lexer.mll"
                (UL_PT)
# 246 "Lexer.ml"

  | 9 ->
# 32 "Lexer.mll"
              (UL_VIRG)
# 251 "Lexer.ml"

  | 10 ->
# 33 "Lexer.mll"
             (UL_DED)
# 256 "Lexer.ml"

  | 11 ->
let
# 34 "Lexer.mll"
                                      texte
# 262 "Lexer.ml"
= Lexing.sub_lexeme lexbuf lexbuf.Lexing.lex_start_pos lexbuf.Lexing.lex_curr_pos in
# 34 "Lexer.mll"
                                            (UL_SYMBOLE texte)
# 266 "Lexer.ml"

  | 12 ->
let
# 35 "Lexer.mll"
                                      texte
# 272 "Lexer.ml"
= Lexing.sub_lexeme lexbuf lexbuf.Lexing.lex_start_pos lexbuf.Lexing.lex_curr_pos in
# 35 "Lexer.mll"
                                            (UL_VARIABLE texte)
# 276 "Lexer.ml"

  | 13 ->
let
# 36 "Lexer.mll"
         texte
# 282 "Lexer.ml"
= Lexing.sub_lexeme_char lexbuf lexbuf.Lexing.lex_start_pos in
# 36 "Lexer.mll"
                     ( (print_string "Erreur lexicale : ");(print_char texte);(print_newline ()); raise LexicalError )
# 286 "Lexer.ml"

  | __ocaml_lex_state -> lexbuf.Lexing.refill_buff lexbuf;
      __ocaml_lex_lexer_rec lexbuf __ocaml_lex_state

;;

# 38 "Lexer.mll"
 
  (*
(* accept : token -> inputStream -> parseResult *)
(* Vérifie que le premier token du flux d'entrée est bien le token attendu *)
(* et avance dans l'analyse si c'est le cas *)
let accept expected stream =
  match (peekAtFirstToken stream) with
    | token when (token = expected) ->
      (print_endline (("accept : ") ^ (string_of_token token))); (Success (advanceInStream stream))
    | _ -> Failure
;;


(* Définition de la monade  qui est composée de : *)
(* - le type de donnée monadique : parseResult  *)
(* - la fonction : inject qui construit ce type à partir d'une liste de terminaux *)
(* - la fonction : bind (opérateur >>=) qui combine les fonctions d'analyse. *)

(* inject inputStream -> parseResult *)
(* Construit le type de la monade à partir d'une liste de terminaux *)
let inject s = Success s;;

(* bind : 'a m -> ('a -> 'b m) -> 'b m *)
(* bind (opérateur >>=) qui combine les fonctions d'analyse. *)
(* ici on utilise une version spécialisée de bind :
   'b  ->  inputStream
   'a  ->  inputStream
    m  ->  parseResult
*)
(* >>= : parseResult -> (inputStream -> parseResult) -> parseResult *)
let (>>=) result f =
  match result with
    | Success next -> f next
    | Failure -> Failure
;;

let rec parsePR stream =
  (print_string "PR -> ");
  (match (peekAtFirstToken stream) with
    | UL_SYMBOLE ->
      (print_endline "R SR");
      inject stream >>=
      parseR >>=
      parseSR

and parseSR stream = 
  (print_string "SR -> ");
  (match (peekAtFirstToken stream) with
    |UL_DOLLAR ->
      (print_endline "LAMBDA");
      inject stream >>=
      accept
    | UL_SYMBOLE ->
      (print_endline "R SR");
      inject stream >>=
      parseR >>=
      parseSR

and parseR stream =
  (print_string "R -> ");
  (match (peekAtFirstToken stream) with
    | UL_SYMBOLE ->
      (print_endline "P SP");
      inject stream >>=
      parseP >>=
      parseSP

and parseSP stream = 
  (print_string "SR -> ");
  (match (peekAtFirstToken stream) with
    |UL_PT ->
      (print_endline "LAMBDA");
      inject stream >>=
      accept
    | UL_DED ->
      (print_endline "R SR");
      inject stream >>=
      accept UL_DED >>=
      parseE >>=
      parseSE

and parseE stream =
  (print_string "E -> ");
  (match (peekAtFirstToken stream) with
    | UL_FAIL ->
      (print_endline "fail");
      inject stream >>=
      accept UL_FAIL
    | UL_COUP ->
      (print_endline "!");
      inject stream >>=
      accept UL_COUP
    | UL_NEG ->
      (print_endline "-");
      inject stream >>=
      accept UL_NEG >>=
      parseP
    | UL_SYMBOLE ->
      (print_endline "P");
      inject stream >>=
      parseP

and parseSE stream =
  (print_string "SE -> ");
  (match (peekAtFirstToken stream) with
    | UL_PT ->
      (print_endline "LAMBDA");
      inject stream >>=
      accept
    | UL_VIRG ->
      (print_endline ", E SE");
      inject stream >>=
      accept UL_VIRG >>=
      parseE >>=
      parseSE

and parseP stream =
  (print_string "P -> ");
  (match (peekAtFirstToken stream) with
    | UL_SYMBOLE ->
      (print_endline "symbole ( T ST )");
      inject stream >>=
      accept UL_SYMBOLE >>=
      accept UL_PAROUV >>=
      parseT >>=
      parseST >>=
      accept UL_PARFER

and parseT stream =
  (print_string "T -> ");
  (match (peekAtFirstToken stream) with
    | UL_VARIABLE ->
      (print_endline "variable");
      inject stream >>=
      accept UL_VARIABLE
    | UL_SYMBOLE ->
      (print_endline "symbole O");
      inject stream >>=
      accept UL_SYMBOLE >>=
      parseO

and parseST stream =
  (print_string "ST -> ");
  (match (peekAtFirstToken stream) with
    | UL_PARFER ->
      (print_endline "LAMBDA");
      inject stream >>=
      accept
    | UM_VIRG ->
      (print_endline ", T ST");
      inject stream >>=
      accept UL_VIRG >>=
      parseT >>=
      parseST

and parseO stream = 
  (print_string "T -> ");
  (match (peekAtFirstToken stream) with
    | UL_VIRG|UL_PT ->
      (print_endline "LAMBDA");
      inject stream >>=
      accept
    | UL_PAROUV ->
      (print_endline "( T ST )");
      inject stream >>=
      accept UL_PAROUV >>=
      parseT >>=
      parseST >>=
      acept UL_PARFER
  
  *)

# 466 "Lexer.ml"
