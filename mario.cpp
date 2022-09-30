#include <iostream>
#include<conio.h>
using namespace std;
int main(void)
{
    int height;
    //Gets height of pyramid from User
    do
    {
        cout<<"enter the height between 1 and 8: ";
        cin>>height;
    }
    while (!(height >= 1 && height <= 8));

    for (int i = 0; i < height; i++)
    {
        for (int space1 = height; space1 > i + 1; space1--)
        {
            cout<<" "; // print right spaces pyramid
        }
        for (int j = 0; j <= i; j++)
        {
            cout<<"#"; //print left hashes(#) pyramid
        }
        for (int space2 = 0; space2 < 2; space2++)
        {
            cout<<" "; //prints spaces between pyramid
        }
        for (int l = 0; l <= i; l++)
        {
            cout<<"#"; //prints right hashes(#) pyramid
        }
        printf("\n");
    }
    getch();
}
