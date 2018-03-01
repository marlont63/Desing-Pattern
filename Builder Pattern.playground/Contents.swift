//: Playground - noun: a place where people can play

import UIKit

protocol ThemeProtocol {
    var backgroundColor:UIColor? { get }
    var textColor:UIColor? { get }
}


class Theme : ThemeProtocol {
    var backgroundColor:UIColor?
    var textColor:UIColor?
    typealias buildThemeClosure = (Theme) -> Void
    init(build:buildThemeClosure) {
        build(self)
    }
}


let darkTheme = Theme(build: {
    $0.backgroundColor = UIColor.black
    $0.textColor = UIColor.white
})
let lightTheme = Theme(build: {
    $0.backgroundColor = UIColor.white
    $0.textColor = UIColor.black
})


protocol PersonaValoresOpcionales {
    var nombre:String? { get }
    var ciudad:String? { get }
    var email:String? { get }
}

class Persona:PersonaValoresOpcionales {
    var nombre: String?
    var ciudad: String?
    var email: String?
    
    typealias buildPersonaClouse = (Persona) -> Void
    init(build:buildPersonaClouse) {
        build(self)
    }
}

let Persona1 = Persona(build: {
    $0.nombre = "Marlon"
    $0.email = "tavarez.marlon@gmail.com"
    $0.ciudad = "Santo Domingo"
})


print(Persona1.nombre!)


protocol PersonaProtocolSinValoresOpcionales {
    var nombre:String { get }
    var ciudad:String { get }
    var emial:String { get }
}

class PersonaSinOpcional: PersonaProtocolSinValoresOpcionales {
    let nombre: String
    let emial: String
    let ciudad: String
    
    typealias buildPersonaSinOpcionalesClouse = (Persona) -> ()
    init(build:buildPersonaSinOpcionalesClouse) {
       // self.nombre = build.nombre

    }
}


