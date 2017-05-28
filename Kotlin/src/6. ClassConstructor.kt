class User(email: String){
    init {
        println("Init block executed")

    }

    constructor(id: String, name: String, email: String, password: String): this(email){
        println(id)
        println(name)
        println(email)
        println(password)
    }
}

fun main(args: Array<String>){
    var bikash = User("1407001", "Bikash", "bikash@gmail.com","pass")
}