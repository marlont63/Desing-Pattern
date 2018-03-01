//: Playground - noun: a place where people can play

protocol Person {
    var name:String { get }
    var age:Int { get }
}

class Marlon:Person {
    var name: String {
        get {
            return "Marlon"
        }
    }
    
    var age: Int {
        get {
            return 30
        }
    }
}


class Mary:Person {
    var name:String {
        get {
            return "Maria Angeles"
        }
    }
    
    var age:Int {
        get {
            return 31
        }
    }
}



class MarlonDecorado:Person {
    
    let marlonInstance:Person
    
    required init(person:Person) {
        marlonInstance = person
    }
    
    var name: String {
        get {
            return marlonInstance.name
        }
    }
    
    var age: Int {
        get {
            return marlonInstance.age
        }
    }
}


class MarlonSuperPoderes:MarlonDecorado {
    
    required init(person:Person) {
        super.init(person: person)
    }
    
    override var name: String {
        get {
            return "Super" + marlonInstance.name
        }
    }
    
    override var age: Int {
        get {
            return marlonInstance.age * 1000
        }
    }
}



var MarlonNormal:Person = Marlon()
MarlonNormal.age
MarlonNormal.name

MarlonNormal = MarlonDecorado(person: MarlonNormal)
MarlonNormal.age
MarlonNormal.name

MarlonNormal = MarlonSuperPoderes(person: MarlonNormal)
MarlonNormal.name
MarlonNormal.age



