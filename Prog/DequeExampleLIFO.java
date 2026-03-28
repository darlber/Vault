import java.util.ArrayDeque;
import java.util.Deque;
import java.util.LinkedList;

public class DequeExampleLIFO {
    public static void main(String[] args) {
        LinkedList<Integer> stack = new LinkedList();
        // LIFO: Push
        stack.push(10);
        stack.push(20);
        stack.push(30);

        // Peek (mirar el top)
        System.out.println("Top: " + stack.peek()); // 30

        // Pop (quitar el top)
        System.out.println("Pop: " + stack.pop() + "/ Top ahora es: " + stack.peek()); // 20
        System.out.println("Pop: " + stack.pop() + "/ Top ahora es: " + stack.peek()); // 10
        

        // Verificar si está vacío
        System.out.println("Is empty? " + stack.isEmpty()); // false
    
        // FIFO: 
        stack.push(20);
        stack.push(30);

        System.out.println("Top: " + stack.peek()); // 30
        System.out.println("RemoveFirst: " + stack.removeFirst()); // 30
        System.out.println("First: " + stack.getFirst()); // 20


    }
}
