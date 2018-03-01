//: Playground - noun: a place where people can play

import UIKit

final class Singleton {
    static let sharedInstance = Singleton()
    private init() {}
    
    static func SayHello() {
        print("Hola Mundo")
    }
}

class SingletonSimple {
    static let sharedInstance = SingletonSimple()
    
     func SayHello () {
        print("Hola")
    }
}


Singleton.SayHello()


