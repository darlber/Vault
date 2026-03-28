// Nuestra LinkedList simple
public class SimpleLinkedList {

    // head apunta al PRIMER nodo de la lista
    //
    // Ejemplo:
    // head
    //  ↓
    // [10] -> [20] -> [30] -> null
    //
    private Node head;

    // Constructor
    // Cuando se crea la lista, está vacía
    //
    // head = null
    // (no hay nodos todavía)
    public SimpleLinkedList() {
        this.head = null;
    }

    // Añadir un elemento al FINAL de la lista
    public void add(int data) {

        // Creamos un nuevo nodo
        // Ejemplo: new Node(30)
        //
        // [30 | next=null]
        Node newNode = new Node(data);

        // Si la lista está vacía:
        //
        // head = null
        // Entonces el nuevo nodo se convierte en el primero
        //
        // head
        //  ↓
        // [10] -> null
        if (head == null) {
            head = newNode;
            return;
        }

        // Si NO está vacía, recorremos la lista
        //
        // current empieza en head
        Node current = head;

        // Recorremos hasta el ÚLTIMO nodo
        //
        // Ejemplo:
        // [10] -> [20] -> [30] -> null
        //           ↑
        //        current
        //
        // Paramos cuando current.next == null
        while (current.next != null) {
            current = current.next;
        }

        // Aquí current es el último nodo
        //
        // [10] -> [20] -> [30] -> null
        //                     ↑
        //                  current
        //
        // Conectamos el último nodo con el nuevo
        current.next = newNode;

        // Resultado:
        //
        // [10] -> [20] -> [30] -> [40] -> null
    }

    // Elimina el PRIMER elemento
    public void removeFirst() {

        // Si la lista está vacía
        //
        // head = null
        if (head == null) {
            System.out.println("List is empty");
            return;
        }

        // Movemos head al siguiente nodo
        //
        // Antes:
        // head
        //  ↓
        // [10] -> [20] -> [30] -> null
        //
        // Después:
        //        head
        //         ↓
        // [20] -> [30] -> null
        head = head.next;
    }

    // Imprime toda la lista
    public void print() {

        // Empezamos desde head
        Node current = head;

        // Recorremos nodo por nodo
        while (current != null) {

            // Imprimimos el valor
            System.out.print(current.data + " -> ");

            // Pasamos al siguiente nodo
            current = current.next;
        }

        // Final de la lista
        System.out.println("null");
    }
}

// Clase Nodo
class Node {

    int data;   // valor del nodo
    Node next;  // referencia al siguiente nodo

    // Constructor del nodo
    //
    // Ejemplo:
    // new Node(10)
    //
    // [10 | next=null]
    Node(int data) {
        this.data = data;
        this.next = null;
    }
}
