//: Playground - noun: a place where people can play

import UIKit

func convertPersianNumToEngNum(num:String)->String {
    let format = NumberFormatter()
    format.locale = Locale(identifier: "EN")
    let number =   format.number(from: num)
    if number != nil {
        let faNumber = format.string(from: number!)
        return faNumber!
    }
    return num
}

func convertEngNumToPersianNum(num: String)->String{
    //let number = NSNumber(value: Int(num)!)
    let format = NumberFormatter()
    format.locale = Locale(identifier: "fa_IR")
    let number =   format.number(from: num)
    if number != nil {
        let enNumber = format.string(from: number!)
        return enNumber!
    }
    return num
}


var emailStr: String = "fa.shapouri@gmail.com"
var usernameStr: String = "fa.shapouri۱۲۳456"
var phoneStr: String = "۰۹۱۲123۴۵۶۷"

var letter : [String] = []


while let ch = usernameStr.characters.popFirst() {
    letter.append(convertEngNumToPersianNum(num: String(ch)))
}


letter.joined()

