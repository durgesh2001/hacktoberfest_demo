# Kadane's Algorithm is an algorithm which helps to find the largest sum contiguous subarray.

- Suppose an array is [-2,1,-3,4,-1,2,1,-5,4] then max sum of contiguos subarray is 6.

# In this algorithm do the following steps :
- Initialize s=a temporary sum =0 and a max with first element of array.
- Take a for loop and add every element in sum.
- Inside this put an if condition to re-initialize max with sum when sum > max.
- And add one more if condition if sum < 0 then sum will become zero.
- Return sum because it will store the maximimum contiguous subaaray sum.
