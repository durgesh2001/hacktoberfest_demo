class Solution {
public:
    int findClosestNumber(vector<int>& nums) {
      
        int ans=INT_MAX;

        for(int i=0; i<nums.size(); i++){
            
            if(abs(nums[i]) < abs(ans)){
                ans = nums[i];
            }
            if(abs(nums[i])==abs(ans))
                ans = max(ans, nums[i]);
        }
        return ans;
    }
};
