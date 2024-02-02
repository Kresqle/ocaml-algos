
# Algorithms in OCaml

An implementation of different algorithms in OCaml (list from [Wikipedia](https://en.wikipedia.org/wiki/List_of_algorithms), some might not be implemented yet).

## Table of contents
0. [Broad definition of the term algorithm](#broad_definition_of-the_term_algorithm)
1. [Combinatorial algorithms](#combinatorial_algorithms)
   1. [Sequence algorithms](#sequence_algorithms)
      1. [Sequence search](#sequence_search)

## Broad definition of the term algorithm

> An algorithm is fundamentally a set of rules or defined procedures that is typically designed and used to solve a specific problem or a broad set of problems.
> Broadly, algorithms define process(es), sets of rules, or methodologies that are to be followed in calculations, data processing, data mining, pattern recognition, automated reasoning or other problem-solving operations. With the increasing > automation of services, more and more decisions are being made by algorithms. Some general examples are; risk assessments, anticipatory policing, and pattern recognition technology.
> 
> -- <cite>[Wikipedia](https://en.wikipedia.org/wiki/List_of_algorithms#Broad_definition_of_the_term_algorithm)</cite>

## Combinatorial algorithms

### Sequence algorithms

#### Sequence search
- <a name="linear_search"></a><b>Linear search</b>
A linear search sequentially checks each element of the list until it finds an element that matches the target value. If the algorithm reaches the end of the list, the search terminates unsuccessfully.
To find out more, see [linear search](https://github.com/Kresqle/ocaml-algos/tree/main/Combinatorial%20algorithms/Sequence%20algorithms/Sequence%20search#linear-search)

Implementation:
```ocaml
let linear_search sequence value =
    let rec search_helper index =
        if index >= List.length sequence then None
        else if List.nth sequence index = value then Some index
        else search_helper (index + 1)
    in search_helper 0
```
