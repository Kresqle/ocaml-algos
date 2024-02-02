(* finds the kth smallest item in a sequence *)
let selection_algorithm sequence k =
    if k <= 0 || k >= List.length sequence then None
    else Some (List.nth (List.sort compare sequence) (k - 1))
