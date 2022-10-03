class Solution {
public:
    //----- Memoization Approach -----
    // int solve(string word1,string word2,int n,int m)
    // {
    //     if(n==0)
    //         return m;
    //     if(m==0)
    //         return n;
    //     if(word1[n-1]==word2[m-1])
    //         return solve(word1,word2,n-1,m-1);
    //     return 1+ min({solve(word1,word2,n-1,m-1),solve(word1,word2,n-1,m),solve(word1,word2,n,m-1)});
    // }
    int minDistance(string word1, string word2) 
    {
        int n=word1.length();
        int m=word2.length();
        vector<vector<int>>dp(n+1,vector<int>(m+1,0));
        for(int i=0;i<=n;i++)
            dp[i][0]=i;
        for(int i=0;i<=m;i++)
            dp[0][i]=i;
        for(int i=1;i<=n;i++)
            for(int j=1;j<=m;j++)
                if(word1[i-1]==word2[j-1])
                    dp[i][j]=dp[i-1][j-1];
                else
                    dp[i][j]=1+min({dp[i-1][j-1],dp[i-1][j],dp[i][j-1]});
        return dp[n][m];
    }
};
