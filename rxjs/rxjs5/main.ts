import {Observable} from 'rxjs';

//Getting the list of movies as an example of responding to http request
let output = document.getElementById("output");
let button = document.getElementById("button");

// Handeling the click event
let click = Observable.fromEvent(button, "click");


// let source = Observable.fromEvent(document, "mousemove")
//     .map( (e:MouseEvent) =>{
//             return {
//                 x:e.clientX,
//                 y:e.clientY
//             }
//         }
//     ).filter(value => value.x<500);



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




// source.subscribe(
//     value => console.log(value),
//     e => console.log(e),
//     () => console.log("Complete")

// );


function load(url: string){
    let xhr = new XMLHttpRequest();

    xhr.addEventListener("load", ()=>{
        let movies = JSON.parse(xhr.responseText);
        movies.forEach(m=>{
            let div = document.createElement("div");
            div.innerText = m.title;
            output.appendChild(div);
        });
    });

    xhr.open("GET", url);
    xhr.send();
}

click.subscribe(
    e => load("movies.json"),
    e => console.log(e),
    () => console.log("Complete")

);

