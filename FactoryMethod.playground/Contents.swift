


protocol Vehicle {
    
    func drive()
}

class Car: Vehicle {
    
    func drive() {
        print("drive a car")
    }
}

class Truck: Vehicle {
    
    func drive() {
        print("drive a truck")
    }
}

class Bus: Vehicle {
    
    func drive() {
        print("drive a bus")
    }
}


protocol VehicleFactory {
    
    func produce() -> Vehicle
}

class CarFactory: VehicleFactory {
    
    func produce() -> Vehicle {
        print("car is created")
        return Car()
    }
}

class TruckFactory: VehicleFactory {
    
    func produce() -> Vehicle {
        print("truck is created")
        return Truck()
    }
}

class BusFactory: VehicleFactory {
    
    func produce() -> Vehicle {
        print("bus is created")
        return Bus()
    }
}


let carFactory = CarFactory()
carFactory.produce()

let truckFactory = TruckFactory()
truckFactory.produce()

let busFactory = BusFactory()
busFactory.produce()
