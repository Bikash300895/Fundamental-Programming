class User{
    init {
        println("Init block executed")

    }

    constructor(id: String, name: String, password: String){
        println(id)
        println(name)
        println(password)
    }
}

fun main(args: Array<String>){
    var bikash = User("1407001", "Bikash", "pass")
}