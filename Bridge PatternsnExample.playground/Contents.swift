//: Playground - noun: a place where people can play

import UIKit

protocol PersonaProtocol {
    var idioma:Idioma { set get }
    func hablar()
}


protocol Idioma {
    func habla()
}



class Persona: PersonaProtocol {
    
    var idioma: Idioma
    
    func hablar() {
        print("La Persona esta hablando")
    }
    
    init(idioma:Idioma) {
        self.idioma = idioma
    }
}


class IdiomaAleman:Idioma {
    func habla() {
        print("Persona Habla en aleman...")
    }
}


class IdiomaIngles: Idioma {
    func habla() {
        print("Persona habla ingles...")
    }
}



var aleman = Persona(idioma: IdiomaAleman())
aleman.hablar()

var ingles = Persona(idioma: IdiomaIngles())
ingles.hablar()
