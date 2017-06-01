interface Human2
{
    void think();
}

public class AnonymousInnerClass {
    public static void main(String[] args){
        Human2 programmer = new Human2() {
            @Override
            public void think() {
                System.out.print("Think virtual");
            }
        };

        programmer.think();
    }
}
