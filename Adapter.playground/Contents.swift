

// adaptee
class SimpleCar {
    
    func sound() -> String {
        return "tr-tr-tr"
    }
}

//target
protocol SupercarProtocol {
    
    func makeNoise() -> String
}

class SuperCar: SupercarProtocol {
    
    func makeNoise() -> String {
        return "wroom-wroom"
    }
}

//adaptor
class SuperCarAdapter: SupercarProtocol {
    
    var simpleCar: SimpleCar
    
    init(simpleCar: SimpleCar) {
        self.simpleCar = simpleCar
    }
    
    func makeNoise() -> String {
        return simpleCar.sound()
    }
}

