Below is the sequential thought process for this problem. First, I tried to solve it with recursion.
Recursion (TLE, Not Accepted)

class Solution {
public:
    int numDecodings(string s) {
        int ans=0;
        ans = recur(s,0);
        return ans;
    }
    int recur(string s, int pos){
        if(pos==s.size())return 1;
        if(s[pos]=='0')return 0;
        if(pos==s.size()-1)return 1;
        string b = s.substr(pos,2);
        
        int way1 = recur(s,pos+1);
        int way2=0;
        if(stoi(b)<=26&&stoi(b)>0){
            way2 = recur(s,pos+2);
        }
        return way1+way2;
    }
};
Then, I made a decision tree and saw that some values keep repeating and hence the need to store some values and reduce the extra processing.
Recursion with memoization (Accepted but took too much time)

class Solution {
public:
    int numDecodings(string s) {
        vector<int> hg(s.size()+1,0);
        int ans=0;
        ans = recur(s,0,hg);
        return ans;
    }
    int recur(string s, int pos, vector<int>& hg){
        if(pos==s.size())return 1;
        if(s[pos]=='0')return 0;
        if(pos==s.size()-1)return 1;
        if(hg[pos]>0)return hg[pos];
        string b = s.substr(pos,2);
        
        int way1 = recur(s,pos+1,hg);
        int way2=0;
        if(stoi(b)<=26&&stoi(b)>0){
            way2 = recur(s,pos+2,hg);
        }
        hg[pos]= way1+way2;
        return hg[pos];
    }
};
Finally the DP solution which is the best of all.
DP Solution (Best method)

class Solution {
public:
    int numDecodings(string s) {
        vector<int> dp(s.size()+1);
        dp[0]=1;
        if(s[0]=='0')dp[1]=0;
        else dp[1]=1;
        for(int i=2;i<=s.size();i++){
            int way1,way2;
            if(s[i-1]=='0')way1=0;
            else way1=dp[i-1];
            if(stoi(s.substr(i-2,2))<=26&&stoi(s.substr(i-2,2))>0&&s[i-2]!='0')way2=dp[i-2];
            else way2=0;
            dp[i]=way1+way2;
        }
        return dp[s.size()];
    }
};
