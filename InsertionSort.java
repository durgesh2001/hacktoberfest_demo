public class InsertionSort {
    public static void insertion(int[] arr) {
        for (int i = 0; i <= arr.length-2; i++) {
            for (int j =i+1; j >0; j--) {
                if (arr[j]<arr[j-1]) {
                    swap(arr, j,j-1);
                } else break;
            }
        }
    }

    public static void swap(int[] arr, int first, int second) {
        int temp = arr[second];
        arr[second] = arr[first];
        arr[first] = temp;
    }
}
