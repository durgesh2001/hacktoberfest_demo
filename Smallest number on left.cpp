class Solution{
public:
    vector<int> leftSmaller(int n, int a[]){
        // code here
        vector<int>ans(n);
        stack<int>st;
        st.push(-1);
        for(int i=0;i<n;i++){
            while(!st.empty() && st.top()>=a[i]){
                st.pop();
            }
            ans[i]=st.top();
            st.push(a[i]);
        }
        return ans;
    }
};
