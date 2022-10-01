#include <iostream>
#include <cmath>
#include <vector>
using namespace std;

#define N 4

void Display(int arr[][N])
{
    for (int i = 0; i < N; i++)
    {
        for (int j = 0; j < N; j++)
        {
            cout << arr[i][j] << ", ";
        }
        cout << endl;
    }
    cout << endl;
}

bool IsSafe(int arr[][N], int row, int col, int numberToPut)
{
    for (int i = 0; i < N; i++)
    {
        if (arr[row][i] == numberToPut)
        {
            return false;
        }
    }
    for (int j = 0; j < N; j++)
    {
        if (arr[j][col] == numberToPut)
        {
            return false;
        }
    }
    int sqt = sqrt(N);
    int start = row - row % sqt;
    int end = col - col % sqt;
    for (int i = start; i < start + sqt; i++)
    {
        for (int j = end; j < end + sqt; j++)
        {
            if (arr[i][j] == numberToPut)
            {
                return false;
            }
        }
    }

    return true;
}
void Solve(int arr[][N])
{
    int row = -1, col = -1;
    int flag = 0;
    for (int i = 0; i < N; i++)
    {
        for (int j = 0; j < N; j++)
        {
            if (arr[i][j] == 0)
            {
                row = i;
                col = j;
                flag = 1;
            }
        }
        if (flag == 1)
        {
            break;
        }
    }
    if (flag == 0)
    {
        Display(arr);
        return;
    }
    for (int i = 1; i <= N; i++)
    {
        if (IsSafe(arr, row, col, i) == 1)
        {
            arr[row][col] = i;
            Solve(arr);
            arr[row][col] = 0;
        }
    }
}

int main(int argc, char const *argv[])
{
    int Board[N][N] = {
        {4, 1, 3, 0},
        {2, 0, 0, 0},
        {0, 0, 0, 0},
        {0, 0, 0, 4}};
    Solve(Board);

    return 0;
}
