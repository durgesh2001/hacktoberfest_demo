// Given a number num. Add n to each digit and give result.
// Ex: num = 2075, n=5 then result is 7520

#include<bits/stdc++.h>
using namespace std;

int main()
{
    int num = 2075, n=5;
    int z_count = 0, rem, temp=0;
    int count=0;
    while(num != 0)
    {
        rem = num%10;
        int s_num = rem+n;
        temp = temp*10+((rem+n)%10);
        if((s_num % 10 == 0) && (count == 0))
        {
            z_count++;
        }
        else
        {
            count++;
        }
        num = num/10;
    }
    int new_num=0;
    while(temp != 0)
    {
        rem = temp%10;
        new_num = new_num*10+rem;
        temp = temp/10;

    }
    new_num = new_num*(pow(10, z_count));
    cout<<"result: "<<new_num<<endl;
    
}
