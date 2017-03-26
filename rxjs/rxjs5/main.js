"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
var rxjs_1 = require("rxjs");
var numbers = [1, 2, 3];
var source = rxjs_1.Observable.from(numbers);
var MyOvservable = (function () {
    function MyOvservable() {
    }
    MyOvservable.prototype.next = function (value) {
        console.log("value : " + value);
    };
    MyOvservable.prototype.error = function (e) {
        console.log(e);
    };
    MyOvservable.prototype.complete = function () {
        console.log("complete");
    };
    return MyOvservable;
}());
source.subscribe(new MyOvservable());
//# sourceMappingURL=main.js.map