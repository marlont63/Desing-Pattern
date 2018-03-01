//: Playground - noun: a place where people can play

protocol Figura {
    func pinta(color:String)
}

class Cuadrado:Figura {
    func pinta(color: String) {
        print("Pintando un cuadrado de color: \(color)")
    }
}

class Circulo:Figura {
    func pinta(color: String) {
        print("Pintado in circulo de color : \(color)")
    }
}


class PantallaEnBlanco: Figura {
    lazy var figuras =  [Figura]()
    
    init(_ figuras:Figura...) {
        self.figuras = figuras
    }
    
    func pinta(color: String) {
        for figura in self.figuras {
            figura.pinta(color: color)
        }
    }
}




var pantallaEnBlanco = PantallaEnBlanco(Circulo(), Cuadrado())
pantallaEnBlanco.pinta(color: "Black")
