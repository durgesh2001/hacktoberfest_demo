#include<bits/stdc++.h>
using namespace std;
void selectionsort(int arr[],int n)
{
    for(int i=0;i<n-1;i++)
    {
        for(int j=i+1;j<n;j++)
        {
            if(arr[i]>arr[j])
                swap(arr[i],arr[j]);
        }
    }            
}
int main()
{
    int n;
    cout<<"Enter No. of Elements : ";
    cin>>n;
    int arr[n];
    cout<<"Enter Array Elements : ";
    for(int i=0;i<n;i++)
    {
        cin>>arr[i];
    }
    selectionsort(arr,n);
    cout<<"Sorted Array : ";
    for(int i=0;i<n;i++)
    {
         cout<<arr[i]<<" ";
    }
}
