#include <iostream>
using namespace std;

int firstOcc(int arr[], int n, int key)
{

    int s = 0;
    int e = n - 1;
    int ans = -1;
    int mid = s + ((e - s) / 2);
    while (s <= e)
    {
        if (arr[mid] == key)
        {
            ans = mid;
            e = mid - 1;
        }
        else if (key > arr[mid])
        {
            s = mid + 1;
        }
        else
        {
            e = mid - 1;
        }

        mid = s + ((e - s) / 2);
    }
    return ans;
}

int lastOcc(int arr[], int n, int key)
{

    int s = 0;
    int e = n - 1;
    int ans = -1;
    int mid = s + ((e - s) / 2);
    while (s <= e)
    {
        if (arr[mid] == key)
        {
            ans = mid;
            s = mid + 1;
        }
        else if (key > arr[mid])
        {
            s = mid + 1;
        }
        else
        {
            e = mid - 1;
        }

        mid = s + ((e - s) / 2);
    }

    return ans;
}

int main()
{
    int arr[10] = {1, 4, 56, 6, 6, 6, 6, 6, 6, 6};
    int key = 56;

    cout << "The first Occurence is at Index " << firstOcc(arr, 10, key) << endl;
    cout << "The last Occurence is at Index " << lastOcc(arr, 10, key) << endl;
}