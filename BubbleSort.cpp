//Bubble sort in c++ 
//Contributing to Hacktoberfest_Demo
#include<bits/stdc++.h>
using namespace std;
//function to perform bubble sort
void bubblesort(int arr[],int n){
//looping to accrss array element
for(int i=0;i<n;i++){
    //looping to compare elements in the array
    for(int j=i+1;j<n;j++){
        //comparing two adjacent elements to sort in ascending order
        if(arr[i]>arr[j]){
            //swaping elements if they are not in ascending order
            int temp=arr[i];
            arr[i]=arr[j];
            arr[j]=temp;
        }
    }
}
}
//funtion to print the array elements
void print(int arr[],int n){
    for(int i=0;i<n;i++){
        cout<<" "<<arr[i];
    }
    cout<<"\n";
}
int main(){
    int arr[]={-2,-5,1,9,23,55,-10,100};
    //finding size of the array
    int size=sizeof(arr)/sizeof(arr[0]);
    cout<<"Before Bubble sort:"<<endl;
    print(arr,size);
    bubblesort(arr,size);
    cout<<"After Bubble sort:\n";
    print(arr,size);
    return 0;
}