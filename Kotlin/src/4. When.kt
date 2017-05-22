fun main(args: Array<String>){
    var a = 10

    when(a){
        10 -> println("A is 10")

        20 -> {
            println("B is 20")
        }
        in 1..20 -> {
            println("A is in range 1 to 20 also")
        }
        else -> println("this is else")
    }
}