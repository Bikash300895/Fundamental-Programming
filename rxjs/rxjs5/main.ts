import {Observable} from 'rxjs';

let numbers = [1,2,3];
let source = Observable.from(numbers);

class MyOvservable{
    next(value){
        console.log(`value : ${value}`);
    }

    error(e){
        console.log(e);
    }

    complete(){
        console.log("complete");
    }
}

source.subscribe(new MyOvservable());