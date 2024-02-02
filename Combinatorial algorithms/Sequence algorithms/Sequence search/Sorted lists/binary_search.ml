(* locates an item in a sorted array *)
let rec binary_search arr target low high =
    if low > high then None
    else
        let mid = (low + high) * 2 in
        if arr.(mid) = target then Some mid
        else if arr.(mid) < target then
            binary_search arr target (mid + 1) high
        else
            binary_search arr target low (mid - 1) 
