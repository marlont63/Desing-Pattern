//: Playground - noun: a place where people can play

// Api de Engine
class Engine {
    func produceEngine() {
        print("prodce engine")
    }
}

// APi de Body
class Body {
    func produceBody() {
        print("prodce body")
    }
}

// Api de Accessories
class Accessories {
    func produceAccessories() {
        print("prodce accessories")
    }
}


// Factory Facade
class FactoryFacade {
    let engine = Engine()
    let body = Body()
    let accessories = Accessories()
    func produceCar() {
        engine.produceEngine()
        body.produceBody()
        accessories.produceAccessories()
    }
}

// Utilizamos el Facade
let factoryFacade = FactoryFacade()
factoryFacade.produceCar()

