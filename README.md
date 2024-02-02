
# Algorithms in OCaml

An implementation of different algorithms in OCaml (list from [Wikipedia](https://en.wikipedia.org/wiki/List_of_algorithms), some might not be implemented yet).

## Table of contents
0. [Broad definition of the term algorithm](#broad-definition-of-the-term-algorithm)
1. [Combinatorial algorithms](#combinatorial-algorithms)
   1. [Sequence algorithms](#sequence-algorithms)
      1. [Sequence search](#sequence-search)

## Broad definition of the term algorithm

An algorithm is fundamentally a set of rules or defined procedures that is typically designed and used to solve a specific problem or a broad set of problems.
Broadly, algorithms define process(es), sets of rules, or methodologies that are to be followed in calculations, data processing, data mining, pattern recognition, automated reasoning or other problem-solving operations. With the increasing > automation of services, more and more decisions are being made by algorithms. Some general examples are; risk assessments, anticipatory policing, and pattern recognition technology.

## Combinatorial algorithms

### Sequence algorithms

#### Sequence search
- <a name="linear-search"></a><b>Linear search</b>

A linear search sequentially checks each element of the list until it finds an element that matches the target value. If the algorithm reaches the end of the list, the search terminates unsuccessfully.

Implementation:
```ocaml
let linear_search sequence value =
    let rec search_helper index =
        if index >= List.length sequence then None
        else if List.nth sequence index = value then Some index
        else search_helper (index + 1)
    in search_helper 0
```

To find out more, see [linear search](https://github.com/Kresqle/ocaml-algos/tree/main/Combinatorial%20algorithms/Sequence%20algorithms/Sequence%20search#linear-search).

- <a name="selection-algorithm"></a><b>Selection algorithm</b>

The selection algorithm is an algorithm that selects the kth smallest or largest element from an unsorted list or array. 

Implementation:
```ocaml
let selection_algorithm sequence k =
    if k <= 0 || k >= List.length sequence then None
    else Some (List.nth (List.sort compare sequence) (k - 1))
```
NB: This implementation selects the ktg smallest element from an unsorted array

To find out more, see [linear search](https://github.com/Kresqle/ocaml-algos/tree/main/Combinatorial%20algorithms/Sequence%20algorithms/Sequence%20search#selection-algorithm).

- <a name="ternary-search"></a><b>Ternary search</b>

Ternary search is a divide-and-conquer algorithm used to find the maximum or minimum value of a unimodal function within a specified range by repeatedly dividing the search interval into three equal parts and eliminating one third of the interval based on the values of function evaluations.

Implementation:
```ocaml
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
```
NB: This implementation finds the maximum of the function f on the specified range

To find out more, see [linear search](https://github.com/Kresqle/ocaml-algos/tree/main/Combinatorial%20algorithms/Sequence%20algorithms/Sequence%20search#ternary-search).
