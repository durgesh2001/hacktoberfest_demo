//Firstly we make a min heap and store all the elements of array with their absolute value as a key and array element itself as the value of key.Then the value at top is the closest number to zero.
//if there is are multiple same keys in heap then we search the availability of its greater value in array if it is not present then we print second value otherwise first.
class Solution {
public:
    int findClosestNumber(vector<int>& nums) {
        priority_queue<pair<int,int>,vector<pair<int,int>>,greater<pair<int,int>>>pq;
        for(int i=0;i<nums.size();i++)
        {
            pq.push({abs(nums[i]),nums[i]});
        }
if(pq.top().second<0 && find(nums.begin(),nums.end(),pq.top().first)==nums.end())
        return pq.top().second;
        else
            return pq.top().first;
       
    }
};