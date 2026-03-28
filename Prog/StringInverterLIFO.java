import java.util.LinkedList;
import java.util.Stack;

public class StringInverterLIFO {
    public static void main(String[] args) {
        String s = "Hola Mundo";

        System.out.println(s);
        String[] arr = s.split("");
        LinkedList ll = new LinkedList();
        // Stack ss = new Stack(); es lo mismo

        for (int i = 0; i < arr.length; i++) {
            ll.push(arr[i]);
        }
        System.out.println(ll);
        ll.pop();
        System.out.println(ll);
        String result = String.join("", ll);
        System.out.println(result);

    }

}
