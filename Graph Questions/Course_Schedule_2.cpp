class Solution {
public:
    vector<int> findOrder(int numCourses, vector<vector<int>>& prerequisites) {
        vector<int>adj[numCourses];
        vector<int>indegree(numCourses,0);
        vector<int>ans;
        for(auto v:prerequisites)
        {
            adj[v[1]].push_back(v[0]);
            indegree[v[0]]++;
        }
        queue<int>q;
        for(int i=0;i<numCourses;i++)
            if(indegree[i]==0)
                q.push(i);
        while(!q.empty())
        {
            int curr=q.front();
            q.pop();
            numCourses--;
            ans.push_back(curr);
            for(int x:adj[curr])
            {
                indegree[x]--;
                if(indegree[x]==0)
                    q.push(x);
            }
        }
        if(numCourses)
            return {};
        else
            return ans;
    }
};