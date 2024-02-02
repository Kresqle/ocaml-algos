
# Sequence search

## Linear search


| Algorithm                   | Linear search    |
|-----------------------------|------------------|
| Class                       | Search algorithm |
| Worst-case performance      | O(n)             |
| Best-case performance       | O(1)             |
| Average performance         | O(n)             |
| Worst-case space complexity | O(1) iterative   |
| Optimal                     | Yes              |

Linear search, also known as sequential search, is a simple searching algorithm that sequentially checks each element in a list or array until a match is found or the entire list has been searched. It is straightforward to implement and is useful when the list is unordered or when the complexity of other searching algorithms like binary search is not justified.

### Algorithm

The linear search algorithm can be described as follows:

1. **Input**: A list of elements `arr[]` and a key element `x` to be searched.
2. **Output**: The index of the first occurrence of `x` in `arr[]`, or -1 if `x` is not found.

### Complexity Analysis

The time complexity of the linear search algorithm is O(n), where n is the number of elements in the list. This is because, in the worst-case scenario, the algorithm may need to iterate through all elements of the list to find the desired element.

The space complexity of the linear search algorithm is O(1), as it only requires a constant amount of additional space for storing loop control variables.

### Advantages and Disadvantages

#### Advantages

- Simple and easy to implement.
- Works well for small lists or arrays.
- Does not require the list to be sorted.

#### Disadvantages

- Inefficient for large lists as it has a time complexity of O(n).
- Not suitable for applications requiring fast searching in large datasets.

### Applications

Linear search can be useful in the following scenarios:

- Searching for an element in an unordered list.
- Implementing algorithms like bubble sort and insertion sort where element searching is required.

### Conclusion

Linear search is a basic searching algorithm suitable for small datasets or when the list is unordered. While it is simple to implement, its efficiency decreases significantly for larger datasets compared to more advanced searching algorithms like binary search. Understanding its principles can provide a foundation for understanding more complex algorithms and data structures.
