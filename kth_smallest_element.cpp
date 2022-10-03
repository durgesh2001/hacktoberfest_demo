class Solution{
    public:
    // arr : given array
    // l : starting index of the array i.e 0
    // r : ending index of the array i.e size-1
    // k : find kth smallest element and return using this function
    int kthSmallest(int arr[], int l, int r, int k) {
        //code here
        vector<int>ans(arr,arr+r+1);
        sort(ans.begin(),ans.end());
        return ans[k-1];
    }
};
