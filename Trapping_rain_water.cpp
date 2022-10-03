# Question - Given an arry of non-negative integer, the values represented here are the heights of the bar. Find the watre you can collect in between the bars.
i/p arr[]={2,0,2}
o/p = 2.
  int getWater(int arr[],int n) // function
{
  int res=0;
  int lmax[n],rmax[n];
  lmax[0]=arr[0];
  for(int i=1;i<n;i++)
    lmax[i]=max(arr[i],lmax[i-1]);
  rmax(n-1)=arr[n-1];
  for(i=n-2;i>=0;i--)
    rmax[i]=max(arr[i],rmax[i+1]);
  for(int i=1;i<n-1;i++)
    res=res+(min(lmax[i],rmax[i]-arr[i]);
   return res;
             }
         
