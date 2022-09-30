#include<bits/stdc++.h>
#include<iostream>
#include<ext/pb_ds/tree_policy.hpp>
typedef long long LL;
using namespace std;
using namespace __gnu_pbds;
typedef vector<int>vi;
typedef vector<long long>vl;
#define ll long long
#define MOD 1000000007
#define pb push_back
#define N 1e6+7
#define ordered_set tree<ll,ll,less<ll>, rb_tree_tag,tree_order_statistics_node_update>
#define FOR(i,a,b) for (long i=a;i<b;i++)
#define trace(it,a) for (auto it=a.begin();it!=a.end();it++)
#define AUTO(it,a) for (auto it=a.begin();it!=a.end();it++)cout<<*it<<' ';cout<<endl;
#define fastio ios::sync_with_stdio(0); cin.tie(0); cout.tie(0)
#define setbits(x) __builtin_popcount(x)
#define setbitsll(x) __builtin_popcountll(x)
#define maxv(v) *max_element(v.begin(), v.end())
#define minv(v) *min_element(v.begin(), v.end())
#define SORTD(V) sort(v.begin(), v.end(), greater<ll>())
#define SORT(V) sort(v.begin(), v.end())
#define lb(v,x) *lower_bound(v.begin(),v.end(),x)
#define ub(v,x) *upper_bound(v.begin(),v.end(),x)
#define lbi(v,x) lower_bound(v.begin(),v.end(),x)-v.begin()
#define ubi(v,x) upper_bound(v.begin(),v.end(),x)-v.begin()
#define all(a) a.begin(), a.end()
#define clr(s,val) memset(s, val, sizeof(s))
typedef vector<pair<long long, long long>> vii;
typedef pair<long long, long long> ii;
typedef pair<long long, pair<long long, long long>> iii;
typedef map<long long, long long> mii;
typedef map<char, long long> mci;
typedef set<long long> si;
typedef vector<vector<long long>> vvi;
long long binPow(long long a,long long b,long long modulo){long long prod = a;long long ans = 1;while(b){if(b%2) ans = (ans*prod)%modulo;b /= 2;prod = (prod*prod)%modulo;}return ans;}
ll modmul(ll a, ll b,ll mod){ll res = 0;a %= mod;while (b) {if (b & 1)res = (res + a) % mod;a = (2 * a) % mod;b >>= 1;}return res;}
ll gcdExtended(ll a, ll b, ll *x, ll *y);ll modInverse(ll b, ll m){ll x, y;ll g = gcdExtended(b, m, &x, &y);if (g != 1)return -1;return (x%m + m) % m;}ll moddivide(ll a, ll b, ll m){a = a % m;ll inv = modInverse(b, m);if (inv == -1)return -1;else return (inv * a) % m;}
ll gcdExtended(ll a, ll b, ll *x, ll *y){if (a == 0){*x = 0, *y = 1;return b;}ll x1, y1;ll gcd = gcdExtended(b%a, a, &x1, &y1);*x = y1 - (b/a) * x1;*y = x1;return gcd;}
bool compare(const pair<int, int>&i, const pair<int, int>&j)
{
return i.second < j.second;
}
int firstsetbit(ll n)
{
if(n==0) return 0;
return 32-__builtin_clz(n);
}
ll countPow2(ll n){
return __builtin_ctzll(n);
}

bool isCycle(vl adj[],vector<bool> vis,ll i){
    queue<pair<ll,ll>> q;
    q.push({i,-1});
    vis[i]=1;
    while(!q.empty()){
        ll node=q.front().first;
        ll prev=q.front().second;
        q.pop();
        for(auto it:adj[node]){
            if(vis[it]&&prev!=it)return 1;
            else if(!vis[it]){
                vis[it]=1;
                q.push({it,node});
            }
        }
    }
    return 0;
}

int main()
{
    fastio;
    ll t;cin>>t;
    while(t--){
        ll size;cin>>size;
        ll edges;cin>>edges;
        vector<bool> vis(size+1,0);
        vl adj[size+1];
        ll flag=0;
        FOR(i,0,edges){
            ll x,y;cin>>x>>y;
            adj[x].pb(y);
            adj[y].pb(x);
        }
        FOR(i,0,size+1){
            if(!vis[i]){
                if(isCycle(adj,vis,i))flag=1;
            }
            if(flag)break;
        }
        if(flag)cout<<"Cycle detected"<<endl;
        else cout<<"No cycle"<<endl;
    }
}