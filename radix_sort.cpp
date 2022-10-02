// Radix Sort using cpp :D

/*
Radix sort is a non-comparative sorting algorithm.

Is this algorithm faster?

"It has been shown in some benchmarks to be faster than other more general-purpose sorting algorithms, 
sometimes 50% to three times faster"

Worst case: n*k/d
Average case: n*k/d

*/

#include <bits/stdc++.h>
using namespace std;

int Find_max(int arr[], int n)
{
	int m = arr[0];
	for (int i = 1; i < n; i++)
		if (arr[i] > m) m = arr[i];
	return m;
}

void counting_sort(int arr[], int n, int exp)
{
	int out_put[n];
	int i, count[10] = { 0 };

	for (i = 0; i < n; i++) count[(arr[i] / exp) % 10]++;

	for (i = 1; i < 10; i++) count[i] += count[i - 1];

	for (i = n - 1; i >= 0; i--) 
	{
		out_put[count[(arr[i] / exp) % 10] - 1] = arr[i];
		count[(arr[i] / exp) % 10]--;
	}

	for (i = 0; i < n; i++) arr[i] = out_put[i];
}

void Radix_sort(int arr[], int n)
{
	int m = Find_max(arr, n);

	for (int exp = 1; m / exp > 0; exp *= 10)
		counting_sort(arr, n, exp);
}

void printing(int arr[], int n)
{
	for (int i = 0; i < n; i++)cout << arr[i] << " ";
}

int main()
{
	int arr[] = { 55, 3, 17, 24, 1, 37, 11, 52, 13, 44, 38, 4, 9, 21 };
	int n = sizeof(arr) / sizeof(arr[0]);

	Radix_sort(arr, n);
	printing(arr, n);
	return 0;
}
