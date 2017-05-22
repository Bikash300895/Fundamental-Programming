fun main(args: Array<String>){
    var a = 10
    var b = 20

    var large = if(a>b) a else b
    println("Larger value is "+large)

    large = if(a>b){
        println("A is greater than B")
        a
    } else {
        println("B is greater than A")
        b
    }
}