//
//  Basic.swift
//  Starter
//
//  Created by Chan Myae Thu on 17/03/2023.
//

import Foundation

var fruits = ["Strawberry","Apple","Pineapple","Avocado"]
var colors :Set = ["red","yellow","white","red"]
var fruitsClass:[String:[String]] = ["Red":["Apple","Strawberry"],"Green":["Cucamber","Avocado"]]

var doOnNext : ((String)->String)?=nil//global closure

func main(){
    fruits.append("Cucamber")
//    let arraylist = fruits
//    let setlist = colors
    let dict = fruitsClass["Green"] ?? [] //to find
//    debugPrint(arraylist)
//    debugPrint(setlist)
    debugPrint(dict)
    
    for fruit in fruits{
        debugPrint(fruit)
    }
    debugPrint("---------------")
    var index = 0;
    while index<3 {
        debugPrint(fruits[index])
        index += 1
    }
    
    var repeatwhileindex = 0;
    repeat{
        debugPrint(repeatwhileindex)
        repeatwhileindex += 1
    }while repeatwhileindex<3
    
    doOnNext = { name -> String in
        debugPrint("Hello \(name)")
        return "Hello \(name)"
    }//global closure
    decrease(amount: 2){
        
    }
    addition(doCalculate: {}, addAmount: 20)
}
func increase(amount:Int)->()->Int{
    func doIncrease()->Int{
        return amount
    }
    return doIncrease
}//nested loop

func decrease(amount:Int,doDecrease:()->Void)->Void{
    debugPrint("decrease")
}//trailing closure

func addition(doCalculate:()->Void,addAmount:Int)->Void{
    debugPrint("Add")
}//trailing closure
