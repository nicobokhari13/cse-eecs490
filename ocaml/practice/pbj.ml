exception Unimplemented

type peanut_butter =
  | Creamy
  | Crunchy

type jelly =
  | Strawberry
  | Grape
  | Apricot

type bread =
  | White
  | Wheat
  | Multigrain of int

type pbj_sandwich =
  bread * peanut_butter * jelly * peanut_butter * bread

(*pbj_sandwhich -> bool
  returns whether either slice of bread is multigrain
*)
let has_multigrain sandwich = 
  match sandwich with 
    | (top_bread, _, _, _, bot_bread) -> 
      match top_bread, bot_bread with
      | Multigrain grains, _ -> true
      | _, Multigrain grains -> true
      | _, _ -> false;;

let breakfast : pbj_sandwich = (Wheat, Crunchy, Grape, Creamy, Multigrain 12);;

has_multigrain (breakfast)