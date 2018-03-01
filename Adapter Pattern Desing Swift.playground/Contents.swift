//: Playground - noun: a place where people can play

import UIKit

protocol HotelReservaProtocol {
    func setReserva(idReserva:String)
    func getInfoReserva() -> String
}

class MyHotel: HotelReservaProtocol {
    
    var reservaInfo = String()
    
    func setReserva(idReserva: String) {
        self.reservaInfo = idReserva
        print("La reseva se la realizado correctamente....")
    }
    func getInfoReserva() -> String {
        return self.reservaInfo
    }
}

class HotelReservaAdapter : MyHotel {
    let hotel: MyHotel
    init(hotel: MyHotel) {
        self.hotel = hotel
    }
    func generaReservaAdaptada(idReserva:String) {
        hotel.setReserva(idReserva: idReserva)
    }
    func informacionDeLaReserva() -> String {
        return hotel.getInfoReserva()
    }
}

let hotel = MyHotel()
let HotelAdapter = HotelReservaAdapter(hotel: hotel)
HotelAdapter.setReserva(idReserva: "Informacion de la reserva")
print(HotelAdapter.informacionDeLaReserva())


