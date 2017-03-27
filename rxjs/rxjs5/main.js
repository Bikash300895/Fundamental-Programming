"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
var rxjs_1 = require("rxjs");
var numbers = [1, 2, 3];
var source = rxjs_1.Observable.create(function (observer) {
    for (var n in numbers) {
        observer.next(n);
    }
    observer.complete();
});
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
source.subscribe(function (value) { return console.log("value : " + value); }, function (e) { return console.log(e); }, function () { return console.log("Complete"); });
//# sourceMappingURL=main.js.map