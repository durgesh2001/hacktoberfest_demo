# Binary Search (Iterative) using python :D

def BinarySearch(arr, x):
    
	lower = 0;high = len(arr) - 1;m = 0

	while lower <= high:

		m = (high + lower) // 2

		if arr[m] < x:lower = m + 1

		elif arr[m] > x:high = m - 1

		else:return m

	return -1

arr = [ 3, 7, 11, 12, 17, 19, 22, 24, 25, 31, 38, 45, 47 ]
x = 17

result = BinarySearch(arr, x)

if result != -1:print("Element is present at index", str(result))
else:print("Element is not present in array, Please try again.")
