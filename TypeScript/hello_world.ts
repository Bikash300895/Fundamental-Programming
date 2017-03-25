class HelloWorld{
    constructor(public message: string){}
}

var hello = new HelloWorld('Hollo TypeScript')
console.log(hello.message)