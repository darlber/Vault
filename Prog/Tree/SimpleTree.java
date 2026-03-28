public class SimpleTree {

    int value;
    SimpleTree left;
    SimpleTree right;

    public SimpleTree(int value) {
        this.value = value;
        this.left = null;
        this.right = null;
    }

    // IN-ORDER: left -> root -> right
    public void inOrder() {

        //     1
        //    / \
        //   2   3
        //  / \
        // 4   5
        if (left != null) {
            left.inOrder();
        }
        System.out.print(value + " ");
        if (right != null) {
            right.inOrder();
        }
    }

    // PRE-ORDER: root -> left -> right
    public void preOrder() {

        /*
         * EJEMPLO VISUAL (PreOrder):
         * 
         * Visita primero el nodo ACTUAL
         * Luego baja a la izquierda
         * Luego a la derecha
         * 
         * Orden:
         * 1 → 2 → 4 → 5 → 3
         */
        System.out.print(value + " ");
        if (left != null) {
            left.preOrder();
        }
        if (right != null) {
            right.preOrder();
        }
    }

    // POST-ORDER: left -> right -> root
    public void postOrder() {

        /*
         * EJEMPLO VISUAL (PostOrder):
         * 
         * Baja hasta el fondo
         * Sube imprimiendo al final
         * 
         * Orden:
         * 4 → 5 → 2 → 3 → 1
         */
        if (left != null) {
            left.postOrder();
        }
        if (right != null) {
            right.postOrder();
        }
        System.out.print(value + " ");
    }

    public static void main(String[] args) {

        //     1
        //    / \
        //   2   3
        //  / \
        // 4   5
        SimpleTree root = new SimpleTree(1);
        root.left = new SimpleTree(2);
        root.right = new SimpleTree(3);

        root.left.left = new SimpleTree(4);
        root.left.right = new SimpleTree(5);

        System.out.print("InOrder: ");
        root.inOrder(); // 4 2 5 1 3

        System.out.print("\nPreOrder: ");
        root.preOrder(); // 1 2 4 5 3

        System.out.print("\nPostOrder: ");
        root.postOrder(); // 4 5 2 3 1
    }
}
