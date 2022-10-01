https://www.codingninjas.com/codestudio/problems/985311?topList=striver-sde-sheet-problems&utm_source=striver&utm_medium=website&leftPanelTab=0

void dfsREC(int u,stack<int> &st,bool vis[],vector<int> normal[]){
    vis[u]=true;
    for(auto x: normal[u]){
        if(vis[x]==false){
            dfsREC(x,st,vis,normal);
        }
    }st.push(u);
    
}
vector<vector<int>> stronglyConnectedComponents(int n, vector<vector<int>> &edges)
{ stack<int> st;
 vector<int> tmp;
 vector<int> ans;
    vector<vector<int>> res;
  vector<int> trans[n];
 vector<int> normal[n];
 for(int i=0;i<edges.size();i++){
     trans[edges[i][1]].push_back(edges[i][0]);
     normal[edges[i][0]].push_back(edges[i][1]);
 }
 bool vis[n];
 fill(vis,vis+n,false);
 for(int i=0;i<n;i++){
     if(vis[i]==false)dfsREC(i,st,vis,normal);
 }
 while(!st.empty()){
     int x=st.top();
     st.pop();
     tmp.push_back(x);
 }
 for(int i=0;i<n;i++){
     vis[i]=false;
 }
 for(auto y: tmp){
     if(vis[y]==false){
         dfsREC(y,st,vis,trans);
         while(!st.empty()){
             int a= st.top();
             st.pop();
             ans.push_back(a);
         }
         res.push_back(ans);
         ans.clear();
     }
    
 } return res;
}