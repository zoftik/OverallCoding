{
    let a = 100
    console.log("external a", a)
}

{
    let a = 100
    console.log("external a", a)
}

// IIFE

(function (a, b){
    console.log("Adding two numbers in iife", a+b)
})(2, 4)


{
    let add = function (a, b) { 
        console.log("Adding two numbers in block", a+b)
    }
    add(34, 6)
}


let funcexp = function func1 () { console.log("function exp.")}
// let funcexp = function func2 () {console.log}

// funcexp()

