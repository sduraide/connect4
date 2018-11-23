#use "CS17setup.ml" ;;

module Connect4 =
struct
  type which_player = P1 | P2

  type status =
  | Win of which_player
  | Draw
  | Ongoing of which_player

  (* TODO: implement your game with the rest of the GAME signature *)
  type state = State of (int list list) * which_player ;;
  type move = Move of int ;;
  let string_of_player : which_player -> string = function
      P1 -> "Player 1"
    | P2 -> "Player 2" ;;

  let string_of_state : state -> string = function st ->
    failwith "implement me" ;;

  let string_of_move : move -> string = function Move (mv) ->
    string_of_int mv ;;

  (* GAME LOGIC *)

  (* the state of the game when it begins *)
let initial_state : state =
  State ([[0 ; 0 ; 0 ; 0] ; [0 ; 0 ; 0 ; 0] ; [0 ; 0 ; 0 ; 0] ;
          [0 ; 0 ; 0 ; 0]], P1) ;;

(* produces the set of legal moves at a state, represented as a list *)
(*dimensions of the matrix and if a coin has already been placed there*)
  let legal_moves : state -> move list = function st ->
    failwith "implement me" ;;

  (* returns the status of the game at the given state *)
  let game_status : state -> status = function st ->
    failwith "implement me" ;;

  (* given a state and a legal move, yields the next state
     Note that this procedure is curried. *)
  let next_state : state -> move -> state = function st ->
    failwith "implement me" ;;

  (* SPECIFIC TO HUMAN PLAYERS *)

  (* for transforming player input into
   * the internal representation of a move *)
  let move_of_string : string -> move = function str ->
    Move (int_of_string str) ;;

  (* SPECIFIC TO AI PLAYERS *)

  (* estimate the value (for player 1) of a given state *)
  let estimate_value : state -> float = function st ->
    failwith "implement me" ;;
end ;;

(* TODO: test cases for this Game *)
