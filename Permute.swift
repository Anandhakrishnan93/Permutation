
import Foundation

func permute(_ text : String,_ index : Int){
    var str = text
    if index == str.count - 1{
        print(str)
        return
    }
    for i in index...str.count - 1{
        str.swapAt(index, i)
        permute(str, index + 1)
        str.swapAt(index, i)
    }
}

extension String {
    mutating func swapAt(_ index1: Int, _ index2: Int) {
        var characters = Array(self)
        characters.swapAt(index1, index2)
        self = String(characters)
    }
}
