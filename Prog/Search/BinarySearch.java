public class BinarySearch {
    public static int binary (int [] arr, int target, int low, int high){
        if (low > high) return -1;
        int mid = (low+high)/2;

        if (arr[mid] == target) return mid;
        else if (arr[mid] < target) return binary(arr, target, mid+1, high);
        else return binary(arr, target, low, mid-1);
    }

    public static void main(String[] args) {
        int [] arr = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10};
        int target= 6;
        int low = 0;
        int high = arr.length - 1;
        int result = binary (arr, target, low, high);
        if (result == -1) System.out.println("Element not found");
        else System.out.println("Element found at index: " + result);
    }
}
