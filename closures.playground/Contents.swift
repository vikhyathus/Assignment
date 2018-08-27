//closures

import UIKit
import PlaygroundSupport

var listOfNames = ["vikhyath","darshan","avinash","sudhanva","anusha"]
var sorted_list = listOfNames.sorted(by:{
    (s1:String,s2:String)->Bool in
    return s1 > s2
})
print(sorted_list)

