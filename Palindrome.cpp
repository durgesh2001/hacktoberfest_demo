class Solution{
public:	
	
	
	int isPalindrome(string S)
	{
	    // Your code goes here
	    string t=S;
	    reverse(S.begin(),S.end());
	    if(t==S){
	        return 1;
	    }
	    return 0;
	}

};
