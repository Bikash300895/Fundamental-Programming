import {Observable} from 'rxjs';

let numbers = [1,2,3];
let source = Observable.create(observer => {
    for(let n in numbers){
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

source.subscribe(
    value => console.log(`value : ${value}`),
    e => console.log(e),
    () => console.log("Complete")
);