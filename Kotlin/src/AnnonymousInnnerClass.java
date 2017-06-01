interface Human
{
    void think();
}

public class AnnonymousInnnerClass {
    public static void main(String[] args){
        Human programmer = new Human() {
            @Override
            public void think() {
                System.out.print("Think virtual");
            }
        };

        programmer.think();
    }
}
