public class CircularQ {
    private int[] queue;
    private int front;
    private int last;
    private int size;

    public CircularQ(int size) {
        this.queue = new int[size];
        this.front = -1;
        this.last = -1;
        this.size = size;
    }

    private boolean isFull() {
        // Explicación paso a paso:
        // Caso 1: front == 0 y last == size-1
        // Ejemplo: size = 5, front = 0, last = 4
        // Queue: [x x x x x] → lleno
        // Caso 2: (last + 1) % size == front
        // Ejemplo circular: size = 5, front = 2, last = 1
        // Queue: [x _ front _ last x] → el próximo enqueue estaría encima del front →
        // lleno (1+1)%5=2
        return (front == 0 && last == size - 1) || (last + 1) % size == front;
    }

    private boolean isEmpty() {
        return front == -1;
    }

    private void enqueue(int value) {
        if (isFull()) {
            System.out.println("Queue is full");
            return;
        }
        if (front == -1)
            front = 0; // primer elemento
        last = (last + 1) % size; // circular
        // ejemplo, añadimos 10. (-1+1)%5=0
        // Index: 0 1 2 3 4
        // Queue: 10 _ _ _ _
        // Front=0, Last=0

        queue[last] = value;
        // queue[0] = 10
    }

    private int dequeue() {
        if (isEmpty()) {
            System.out.println("Queue is empty");
            return -1;
        }
        int value = queue[front];
        // Último elemento
        if (front == last) {
            front = -1;
            last = -1;
        } else {
            front = (front + 1) % size; // circular increment
            // ejemplo, quitamos 10. (0+1)%5=1
            // Index: 0 1 2 3 4
            // Queue: 10 20 30 40 50
            // Front=1, Last=4

            // Quitamos 10, ahora el front es 1, por lo que se queda
            // 20 30 40 50, el 10 no se sobreescribirá hasta que el modulo
            // sea 0. Otro ejemplo:
            // last = (last + 1) % size; // (4+1) % 5 = 0
            // queue[last] = 60;
            // Index: 0 1 2 3 4
            // Queue: 60 20 30 40 50
            // Front=1, Last=0

        }
        return value;
    }

    // PEEK
    public int peek() {
        if (isEmpty()) {
            System.out.println("Queue is empty!");
            return -1;
        }
        return queue[front];
    }

    // Mostrar la queue
    public void display() {
        if (isEmpty()) {
            System.out.println("Queue is empty!");
            return;
        }
        System.out.print("Queue: ");
        int i = front;
        // queue = [60, 20, 30, 40, 50] front= 1, last= 0
        // int i = 1; por lo que habrá que volver a la posicion del array 0
        while (true) {
            System.out.print(queue[i] + " ");
            if (i == last)
                break;
            i = (i + 1) % size;
            // i = (4+1) % 5 = 0, aqui socio
        }
        System.out.println();
    }

    public static void main(String[] args) {
        CircularQ q = new CircularQ(5);
        q.enqueue(10);
        q.enqueue(20);
        q.enqueue(30);
        q.enqueue(40);
        q.enqueue(50);
        q.enqueue(60);
        q.enqueue(70);
        q.display();
        q.dequeue();
        q.dequeue();
        q.display();
        q.enqueue(60);
        q.enqueue(70);
        q.peek(); // devuelve el resto de la queue
        q.display();

    }
}
