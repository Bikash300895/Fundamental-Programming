"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
var rxjs_1 = require("rxjs");
var source = rxjs_1.Observable.fromEvent(document, "mousemove")
    .map(function (e) {
    return {
        x: e.clientX,
        y: e.clientY
    };
}).filter(function (value) { return value.x < 500; });
// let numbers = [1,2,3];
// let source = Observable.create(observer => {
//     let index =0;
//
//     let produceValue = () =>{
//         observer.next(numbers[index++]);
//
//         if(index<numbers.length){
//             setTimeout(produceValue,500);
//         } else {
//             observer.complete();
//         }
//     }
//
//     produceValue();
//
// }).map(n=>n * 2)
//     .filter( n => n>2)
// let source = Observable.from(numbers);
//
// class MyOvservable{
//     next(value){
//         console.log(`value : ${value}`);
//     }
//
//     error(e){
//         console.log(e);
//     }
//
//     complete(){
//         console.log("complete");
//     }
// }
//
// source.subscribe(new MyOvservable());
//
// Observable with out class
source.subscribe(function (value) { return console.log(value); }, function (e) { return console.log(e); }, function () { return console.log("Complete"); });
//# sourceMappingURL=main.js.map