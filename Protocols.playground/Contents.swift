//: Playground - noun: a place where people can play

import UIKit
import PlaygroundSupport

protocol FullyNamed {
    var fullName: String { get }
}

//Property requirement
struct Person:FullyNamed{
    var fullName: String
}

//Method requirement
protocol ABS{
    func implementABS() -> Bool
}

//class Brake conforms to ABS
class Brake:ABS{
    func implementABS() -> Bool {
        print("ABS is implemented")
        return true
    }
}

//Initializer Requirements
protocol Initialser{
    init(x:Int,y:Int,z:Int)
}

//Mutating method requirements
protocol Mutating{
    mutating func anyMethod(inc_length:Int)
}

class Point:Initialser{
    var x:Int = 0
    var y:Int = 0
    var z:Int = 0
    
    init(x:Int,y:Int) {
        self.x = x
        self.y = y
    }
    
    //conforming to the protocol
    required init(x: Int, y: Int, z: Int) {
        self.x = x
        self.y = y
        self.z = z
    }
}


struct Size{
    var length:Int
    var width:Int
    
    init(len:Int,wid:Int){
        length = len
        width = wid
    }
}
struct Rect:Mutating{
    var origin:Point
    var size:Size
    
    init(origin:Point,size:Size){
        self.size = size
        self.origin = origin
    }
    
    mutating func anyMethod(inc_length:Int) {
        origin.x += inc_length
        origin.y += inc_length
    }
}
var r = Rect(origin: Point(x:0,y:0), size: Size(len: 10, wid: 20))
print(r.origin.x, r.origin.y)
r.anyMethod(inc_length: 10)
print(r.origin.x, r.origin.y)



























