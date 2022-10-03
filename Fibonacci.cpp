#include <iostream>
using namespace std;

int main() {
    //Initialize no.of terms to zero
    //And term1=0,term=1,next term=0
    int n, t1 = 0, t2 = 1, nextTerm = 0;
    
    //Taking no.of terms as input from user
    cout << "Enter the number of terms: ";
    cin >> n;

    cout << "Fibonacci Series: ";

    //Generating fibonacci sequence
    for (int i = 1; i <= n; ++i) {
        // Prints the first two terms.
        if(i == 1) {
            cout << t1 << ", ";
            continue;
        }
        if(i == 2) {
            cout << t2 << ", ";
            continue;
        }
        //Now,next item value becomes sum of current_value+previous_value
        nextTerm = t1 + t2;
        //Now term1 value changes to term2 and term2 value changes to term1
        t1 = t2;
        t2 = nextTerm;
        //Print the above next item value
        cout << nextTerm << ", ";
        //Go to next iteration
    }
    return 0;
}




//BETTER APPROACH WITH HELP OF RECURSION
#include <iostream>
using namespace std;
int fib(int x) {
   if((x==1)||(x==0)) {
      return(x);
   }else {
      return(fib(x-1)+fib(x-2));
   }
}
int main() {
   int x , i=0;
   cout << "Enter the number of terms of series : ";
   cin >> x;
   cout << "\nFibonnaci Series : ";
   while(i < x) {
      cout << " " << fib(i);
      i++;
   }
   return 0;
}
