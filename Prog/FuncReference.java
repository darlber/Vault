import java.util.List;
import java.util.ArrayList;

public class FuncReference {
    public static void main(String[] args) {
        List<String> users = new ArrayList<>();
        List<String> upperUsers = new ArrayList<>();
        users.add("Aaaaa");
        users.add("Bbbbb");
        users.add("Ccccc");
        users.add("Ddddd");
        users.add("Eeeee");
        for (String s : users) {
            upperUsers.add(s.toUpperCase());
        }
        System.out.println(upperUsers);

        // lambda
        List<String> upperUsersLambda = users.stream()
                .map(s -> s.toUpperCase())
                .toList();
        System.out.println(upperUsersLambda);

        // FuncReference
        List<String> upperUsersReference = users.stream()
                .map(String::toUpperCase) // referencia a método
                .toList();
        System.out.println(upperUsersReference);

    }

}
