class Hero{
    var nickName: String = "";

    fun findSquare(a: Int): Int{
        return a*a;
    }
}

fun main(args: Array<String>){
    var spidy = Hero();
    spidy.nickName = "Spidy";

    println(spidy.nickName)
    println(spidy.findSquare(5))
}