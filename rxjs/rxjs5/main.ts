import {Observable} from 'rxjs';

let numbers = [1,2,3];
let source = Observable.from(numbers)

class MyOvservable{
    next(value){
        console.log(`value : ${value}`);
    }

    complete(){
        console.log("complete");
    }
}

source.subscribe(new MyOvservable());