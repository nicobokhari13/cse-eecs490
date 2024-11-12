type item = 
| Omelette of int
| Coffee of float

type order = item list

(* TODO: write your tests here *) 
let meal_requirements_tests = [
  ([[2; 2.5;]; [4; 1.5;]], 
   (6, 4.0));
]

let add_totals_from_order = fun ((total_eggs, total_coffee_cups), nextOrder) -> 
  (*  ((int * float), order) -> (int * float)) = *) 
  match nextOrder with
  | [] -> (total_eggs, total_coffee_cups)
  | hd::tl -> List.fold_left (fun ((total_eggs, total_cups), nextItem) ->
      match nextItem with
      | Omelette num_eggs -> (total_eggs + num_eggs, total_cups)
      | Coffee num_cups -> (total_eggs, total_cups + num_cups);;) (0,0)  
      
  

(* TODO *) 
let meal_requirements orders = 
  let calc_totals_from_item  = 
    match nextItem with
    | Omelette num_eggs -> (total_eggs + num_eggs, total_cups)
    | Coffee num_cups -> (total_eggs, total_cups + num_cups) in 
  List.fold_left()
  match orders with
  | [] -> (0,0)
  | nextOrder::restOrders -> 
      let add_totals_from_order = fun ((total_eggs, total_coffee_cups), nextOrder) -> 
  (*  ((int * float), order) -> (int * float)) = *) 
        match nextOrder with
        | [] -> (total_eggs, total_coffee_cups)
        | nextItem::rest -> 
          
          List.fold_left(calc_totals_from_item, calc_totals_from_item total_eggs tota)
      