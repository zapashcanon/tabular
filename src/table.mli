(*

bed#sub (bed#st > 1)

Table.(bed#sub (bed#st > !!1))
    
*)

module type S = sig
  type row
  type table
  type s = < row : row ; table :table >
  val table_to_channel : 
    ?line_numbers:bool ->
    ?header:bool ->
    ?sep:char ->
    table -> out_channel -> unit
  val latex_table_to_channel : 
    ?line_numbers:bool ->
    table -> out_channel -> unit
  val table_of_channel : 
    ?line_numbers:bool ->
    ?header:bool ->
    ?sep:char ->
    in_channel -> table
  val table_of_stream :
    row Stream.t -> table
  val stream_of_channel : 
    ?line_numbers:bool ->
    ?header:bool ->
    ?sep:char ->
    in_channel -> row Stream.t
  val stream_to_channel : 
    ?line_numbers:bool ->
    ?header:bool ->
    ?sep:char ->
    row Stream.t ->     
    out_channel -> unit
end

val ( !! ) : 'a -> 'a array

val ( = ) : 'a array -> 'a array -> bool array
val ( < ) : 'a array -> 'a array -> bool array
val ( > ) : 'a array -> 'a array -> bool array
val ( <= ) : 'a array -> 'a array -> bool array
val ( >= ) : 'a array -> 'a array -> bool array
val ( <> ) : 'a array -> 'a array -> bool array

val ( + ) : int array -> int array -> int array
val ( - ) : int array -> int array -> int array
val ( / ) : int array -> int array -> int array
val ( * ) : int array -> int array -> int array

val ( +. ) : float array -> float array -> float array
val ( -. ) : float array -> float array -> float array
val ( /. ) : float array -> float array -> float array
val ( *. ) : float array -> float array -> float array

val ( && ) : bool array -> bool array -> bool array
val ( || ) : bool array -> bool array -> bool array
val not : bool array -> bool array

val count : bool array -> int










