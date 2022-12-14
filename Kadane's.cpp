# Intoduction to maximum subarray sum or Kadane's algorihtm 
- Suppose an array with element [-2,1,-3,4,-1,2,1,-5,4] then maximum sub array sum = 6
- let's see how we will apply this 
- First initialize a variable sum = 0 which will store sum and a max to compare in between the sum of different subarray and store the maximum of them.
- Now traverse the whole array and add element to sum.
- While traversing the array always store the maximum sum in max variable 
- And if at any point the sum goes down below zero then sum becomes zero
- Return the max because it will store the maximum of all the subarray sum.
- Thankyou

# Code to the algorithm  
int kadane(int arr[]){
    int sum=0;
    int maxofsums=INT_MIN;
   for(auto it :arr){
        sum+=it;
        maxofsums=max(sum,maxofsums);
        if(sum<0) sum=0;
    }
    return maxofsums;
 }
