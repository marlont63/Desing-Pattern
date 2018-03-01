//: Playground - noun: a place where people can play

import UIKit

protocol  VisitadoresDePlanetaProtocol {
    func visitar(planeta:PlanetaMarte)
    func visitar(planeta:PlanetaTierra)
}


protocol PlanetaProtocol {
    func acceptaVisita(visitador:VisitadoresDePlanetaProtocol)
}

class PlanetaMarte:PlanetaProtocol {
    func acceptaVisita(visitador: VisitadoresDePlanetaProtocol) {
        visitador.visitar(planeta: self)
    }
}

class PlanetaTierra:PlanetaProtocol {
    func acceptaVisita(visitador: VisitadoresDePlanetaProtocol) {
        visitador.visitar(planeta: self)
    }
}


class NombreDeLosVisitadores:VisitadoresDePlanetaProtocol {
    
    var name = ""
    
    func visitar(planeta: PlanetaMarte) {
        name = "Planeta Marte visitado por Marlon "
    }
    func visitar(planeta: PlanetaTierra) {
        name = "Planeta tierra visitado por Mary"
    }
}


var planetas:[PlanetaProtocol] = [PlanetaMarte(), PlanetaTierra()]

let nombres = planetas.map { (planeta:PlanetaProtocol) -> String in
    let nombreDelVisitador = NombreDeLosVisitadores()
    planeta.acceptaVisita(visitador: nombreDelVisitador)
    return nombreDelVisitador.name
}

print(nombres)
