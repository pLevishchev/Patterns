


protocol Coworker {
    
    func hire(coworker: Coworker)
    func getInfo()
    var lvl: Int { get }
}

class Manager: Coworker {
    private var coworkers = [Coworker]()
    var lvl: Int
    
    init(lvl: Int) {
        self.lvl = lvl
    }
    
    func hire(coworker: Coworker) {
        self.coworkers.append(coworker)
    }
    
    func getInfo() {
        print(self.lvl.description + " level manager")
        for coworker in coworkers {
            coworker.getInfo()
        }
    }
}

class LowLevellManager: Coworker {
    var lvl: Int
    
    init(lvl: Int) {
        self.lvl = lvl
    }
    
    func hire(coworker: Coworker) {
        print("can't hire")
    }
    
    func getInfo() {
        print(self.lvl.description + " level manager")
    }
}

let topManager = Manager(lvl: 1)
let managerLevel2 = Manager(lvl: 2)
let magerLevel3_1 = Manager(lvl: 3)
let magerLevel3_2 = Manager(lvl: 3)

let managerLevel10 = Manager(lvl: 10)

topManager.hire(coworker: managerLevel2)
managerLevel2.hire(coworker: magerLevel3_1)
managerLevel2.hire(coworker: magerLevel3_2)
magerLevel3_1.hire(coworker: managerLevel10)

topManager.getInfo()

