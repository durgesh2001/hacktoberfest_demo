class Solution {
    public int searchInsert(int[] nums, int target) {
        if(target<nums[0])
            return 0;
        if(target>nums[nums.length-1])
            return nums.length;
        int left=0,mid=0,right=nums.length-1;
        while(left<=right){
            mid=(left+right)/2;
            if(nums[mid]==target)
                return mid;
            else if(target>nums[mid])
                left=mid+1;
            else
                right=mid-1;
        }
        return left;
    }
}
