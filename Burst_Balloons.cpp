class Solution
{
public:
    // Recursive function for Memoization Approach
    int solve(vector<int> &nums, int left, int right, vector<vector<int>> &dp)
    {
        if (left > right)
            return 0;
        if (dp[left][right] != -1)
            return dp[left][right];
        int maxi = INT_MIN;
        for (int ind = left; ind <= right; ind++)
            maxi = max(maxi, nums[left - 1] * nums[ind] * nums[right + 1] + solve(nums, left, ind - 1, dp) + solve(nums, ind + 1, right, dp));
        return dp[left][right] = maxi;
    }

    int maxCoins(vector<int> &nums)
    {
        int n = nums.size();
        nums.insert(nums.begin(), 1);
        nums.push_back(1);

        //-----Memoization Approach------
        // vector<vector<int>>dp(n+1, vector<int>(n+1, -1));
        // return solve(nums, 1, n, dp);

        //-----Tabulation Approach------
        vector<vector<int>> dp(n + 2, vector<int>(n + 2, 0));
        for (int i = n; i >= 1; i--)
            for (int j = i; j <= n; j++)
                for (int ind = i; ind <= j; ind++)
                    dp[i][j] = max(dp[i][j], nums[i - 1] * nums[ind] * nums[j + 1] + dp[i][ind - 1] + dp[ind + 1][j]);
        return dp[1][n];
    }
};