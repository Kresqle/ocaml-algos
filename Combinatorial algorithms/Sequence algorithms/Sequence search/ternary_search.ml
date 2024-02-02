(* finds the minimum or maximum of a unimodal function *)
include Float

let rec ternary_search f left right absolute_precision =
    if abs (right -. left) < absolute_precision then (left +. right) /. 2.
    else begin
        let left_third = (2. *. left +. right) /. 3. in
        let right_third = (left +. 2. *. right) /. 3. in
        if f left_third < f right_third then
            ternary_search f left_third right absolute_precision
        else
            ternary_search f left right_third absolute_precision
    end
