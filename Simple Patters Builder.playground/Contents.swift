// Simple Buidel Patter

class Persona:CustomStringConvertible {
    let nombre:String
    let ciudad:String
    let email:String
    let edad:Int
    let ocupacion:String
    
    var description: String {
        return "EL nombre de la persona es \(nombre) \n" +
        "Vive en la siguiente ciudad \(ciudad) \n" +
        "Su email es el siguiente \(email) \n" +
        "su edad es \(edad) \n" +
        "y su ocupacion es la siguiente: \(ocupacion)"
    }
    
    init(nombre:String, ciuadad:String, email:String, edad:Int, ocupacion:String) {
        self.nombre = nombre
        self.ciudad = ciuadad
        self.email = email
        self.edad = edad
        self.ocupacion = ocupacion
    }
}

class PersonaBuilder {
    private var nombre = "Marlon"
    private var ciuad = "Santo Domingo"
    private var email = "as@gmail.com"
    private var edad = 30
    private var ocupacion = "Desarrollador"
    
    func setNombre(nombre:String) {
        self.nombre = nombre
    }
    
    func setCiudad(ciuad:String){
        self.ciuad = ciuad
    }
    
    func setEmail(email:String) {
        self.email = email
    }
    
    func setEdad(edad:Int) {
        self.edad = edad
    }
    
    func setOcupacion(ocupacion:String) {
        self.ocupacion = ocupacion
    }
    
    func buildPersona(nombre:String) -> Persona {
        return Persona(nombre: nombre, ciuadad: ciuad, email: email, edad: edad, ocupacion: ocupacion)
    }
}

let builder = PersonaBuilder()
builder.setNombre(nombre: "Malron")
builder.setOcupacion(ocupacion: "Desarrollador")

let Marlon = builder.buildPersona(nombre: "Marlon")
print(Marlon.description)



