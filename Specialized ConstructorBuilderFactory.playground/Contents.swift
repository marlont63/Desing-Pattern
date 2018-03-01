//: Playground - noun: a place where people can play

import UIKit

class Persona:CustomStringConvertible {
    let nombre:String
    let ciudad:String
    let email:String
    let edad:Int
    let ocupacion:String
    let superPoder:String
    
    var description: String {
        return "EL nombre de la persona es \(nombre) \n" +
            "Vive en la siguiente ciudad \(ciudad) \n" +
            "Su email es el siguiente \(email) \n" +
            "su edad es \(edad) \n" +
        "y su ocupacion es la siguiente: \(ocupacion)" +
        "Su super poder es el siguiente: \(superPoder)"
    }
    
    init(nombre:String, ciuadad:String, email:String, edad:Int, ocupacion:String, superPoder:String) {
        self.nombre = nombre
        self.ciudad = ciuadad
        self.email = email
        self.edad = edad
        self.ocupacion = ocupacion
        self.superPoder = superPoder
    }
}


enum PersonaType {
    case NormalHombre
    case NormalMujer
    case SuperHombre
    case SuperMujer
}


class PersonaBuilderFactory {
    
     var nombre = "Marlon"
     var email = "as@gmail.com"
     var ciudad = "Santo Domingo"
     var edad = 30
     var ocupacion = "Desarrollador"
     var superPoder = "Volar"
     init(){}
    
    func setNombre(nombre:String) {
        self.nombre = nombre
    }
    
    func setEmail(email:String){
        self.email = email
    }
    
    func setCiudad(ciudad:String) {
        self.ciudad = ciudad
    }
    
    func setEdad(edad:Int) {
        self.edad = edad
    }
    
    func setSuperPoder(superPoder:String){
        self.superPoder = superPoder
    }
    
    func buildPersona(nombre:String) -> Persona {
        return Persona(nombre: nombre, ciuadad: ciudad, email: email, edad: edad, ocupacion: ocupacion, superPoder: superPoder)
    }
    
    class func getPersonaBuilder(personaType:PersonaType) -> PersonaBuilderFactory {
        switch personaType {
        case .NormalHombre: return NormalHombreBuilder()
        case .NormalMujer: return NormalMujerBuilder()
        case .SuperHombre: return SuperHombreBuilder()
        case .SuperMujer: return SuperMujerBuilder()
        }
    }
}

class NormalHombreBuilder: PersonaBuilderFactory {
    override init() {
        super.init()
        self.nombre = "Marlon"
        self.superPoder = "Ninguno"
    }
}

class NormalMujerBuilder: PersonaBuilderFactory {
    override init() {
        super.init()
        self.nombre = "Maria"
        self.superPoder = "Ninguno"
    }
}

class SuperHombreBuilder: PersonaBuilderFactory {
    override init() {
        super.init()
        self.nombre = "Super Marlon"
        self.superPoder = "Poder volar"
    }
}

class SuperMujerBuilder: PersonaBuilderFactory {
    override init() {
        super.init()
        self.nombre = "Super Maria"
        self.superPoder = "Puede ir a la velocidad de la luz"
    }
}

let builder1 = PersonaBuilderFactory.getPersonaBuilder(personaType: .NormalHombre)
builder1.setSuperPoder(superPoder: "No tiene")
let Persona1 = builder1.buildPersona(nombre: "Marlon")
print(Persona1.description)


