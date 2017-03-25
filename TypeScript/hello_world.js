var HelloWorld = (function () {
    function HelloWorld(message) {
        this.message = message;
    }
    return HelloWorld;
}());
var hello = new HelloWorld('Hollo TypeScript');
console.log(hello.message);
