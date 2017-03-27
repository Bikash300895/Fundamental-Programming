import {Observable} from 'rxjs';

let numbers = [1,2,3];
let source = Observable.create(observer => {
    let index =0;

    let produceValue = () =>{
        observer.next(numbers[index++]);

        if(index<numbers.length){
            setTimeout(produceValue,2000);
        } else {
            observer.complete();
        }
    }

    produceValue();

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