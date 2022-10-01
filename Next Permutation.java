class Solution {
    public void nextPermutation(int[] num) {
    for(int i = num.length-1; i > 0; i--) {
        if(num[i-1] < num[i]) {
            Arrays.sort(num, i, num.length);
            for(int j = i; j < num.length; j++) {
                if(num[j] > num[i-1]) {
                   // swap num[i-1] and num[j]
                    num[i-1] = num[i-1] + num[j];
                    num[j] = num[i-1] - num[j];
                    num[i-1] = num[i-1] - num[j];
                    return;
                }
            }
        }
    }
    Arrays.sort(num);
}
}
