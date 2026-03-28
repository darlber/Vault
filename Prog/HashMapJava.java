import java.util.HashMap;

public class HashMapJava {

    public static void main(String[] args) {
        HashMap <String, Integer> hm= new HashMap<>();
        hm.put("prueba1", 1);
        hm.put("prueba2", 2);
        hm.put("prueba1", 3);
        System.out.println(hm);
        hm.computeIfPresent("prueba2", (k, v) -> v + 1);
        System.out.println(hm);
        hm.computeIfAbsent("prueba3", v -> 4);
        System.out.println(hm);
    }
}