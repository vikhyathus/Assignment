//: Playground - noun: a place where people can play

import UIKit
import PlaygroundSupport
import Darwin

class Shapes{
    
    //Definining the properties of a shape
    var color:String //color is an attribute commom to all the shapes
    
    init(color:String) {
        self.color = color // illustrating the use of self
    }
}

//defining the structure
struct Point{
    var x:Int = 0
    var y:Int = 0
    var z:Int = 0
    
    init(x:Int,y:Int,z:Int) {
        self.x = x
        self.y = y
        self.z = z
    }
    
    init(x:Int,y:Int) {
        self.x = x
        self.y = y
    }
}

//defining a class for a side
struct Side{
    
    var point1:Point
    var point2:Point
    
    init(point1:Point,point2:Point){
        self.point1 = point1
        self.point2 = point2
    }
    
//    func calculateLength(point1:Point,point2:Point)->Int{
//        let res = Int(sqrt(pow(Double(point1.x - point2.x),2.0) + pow(Double(point1.y - point2.y),2.0) + pow(Double(point1.z - point2.z),2.0)))
//        length = res
//        return length;
//    }
    
    //getter method
    var length:Int{
        get{
            return Int(sqrt(pow(Double(point1.x - point2.x),2.0) + pow(Double(point1.y - point2.y),2.0) + pow(Double(point1.z - point2.z),2.0)))
        }
    }
    
    
}

//inheriting from the Shapes class
class TwoDShapes:Shapes{
    var side1:Side
    
    init(side1:Side,color:String)
    {
        self.side1 = side1
        super.init(color: color)
    }
    
    func displayDetails()->String{
        return "This is a 2d shape with color \(color)"
    }
}




















