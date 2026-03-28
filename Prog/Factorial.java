import java.util.Scanner;

public class Factorial {
    public static int recursiveFactorial(int num) {
        if (num < 0) {
            return -1;
        }
        if (num == 0) {
            return 1;
        }
        return num * recursiveFactorial(num - 1);
    }

    public static int[] factorialArray(int num) {
        int[] arr = new int[num+1];
        for (int i = 0; i < arr.length; i++) {
            arr[i] = recursiveFactorial(i);
        }
        return arr;
    }

    public static void main(String[] args) {
        Scanner sn = new Scanner(System.in);
        System.out.println("Ingrese el número: ");
        int num = sn.nextInt();
        
        int [] result = factorialArray(num);
        for (int i : result) {
            System.out.print(" " + i);
        }
    }
}
