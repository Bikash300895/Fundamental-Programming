class A
{
    companion object{
        @JvmStatic
        fun show(){
            println("It's companion object")
        }
    }
}

fun main(args: Array<String>){
    A.show()
}