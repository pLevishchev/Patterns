//
//  ViewController.swift
//  Singleton
//
//  Created by Павел Левищев on 11/09/2019.
//  Copyright © 2019 Pavel Levishchev. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let safe = Safe.shared
        print(safe.money)
    }
}

