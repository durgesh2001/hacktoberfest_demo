class Solution {
    public int longestValidParentheses(String s) {
        Stack<Integer> st = new Stack<>();
        st.push(-1);
        int maxl=0;
        for(int i=0;i<s.length();i++) {
            if(s.charAt(i) == '(') {
                st.push(i);
            }else{
                st.pop();
                if(st.isEmpty()) {
                    st.push(i);
                }else{
                    maxl = Math.max(maxl, i-st.peek());
                }
            }
        }
        return maxl;
    }
}
