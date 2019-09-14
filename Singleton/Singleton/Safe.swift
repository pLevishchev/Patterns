//
//  Safe.swift
//  Singleton
//
//  Created by Павел Левищев on 11/09/2019.
//  Copyright © 2019 Pavel Levishchev. All rights reserved.
//


class Safe {
    
    var money = 0
    static let shared = Safe()
    
    private init() {
        
    }
}

