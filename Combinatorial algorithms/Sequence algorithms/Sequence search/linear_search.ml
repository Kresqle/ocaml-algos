(* locates an item in an unsorted sequence *)
let linear_search sequence value =
    let rec search_helper index =
        if index >= List.length sequence then None
        else if List.nth sequence index = value then Some index
        else search_helper (index + 1)
    in search_helper 0
