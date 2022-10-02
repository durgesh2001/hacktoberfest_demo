# Question - Given an array of integers nums and an integer k, return the total number of subarrays whose sum equals to k.
Example - Input: nums = [1,2,3], k = 3
Output: 2
# Code
  int subarraySumequalsk(vector<int>& nums, int k) {
        unordered_map<int,int> mp;
        int sum=0,ans=0;
        mp[sum] = 1;
        for(auto it:nums){
            sum += it;
            int find = sum - k;
            if(mp.find(find) != mp.end()){
                ans += mp[find];
            }
            mp[sum]++;
        }
        return ans;
    }
