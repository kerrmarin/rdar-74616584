//
//  ViewController.swift
//  AppleRepro
//
//  Created by kerrmarin on 02/23/2021.
//  Copyright (c) 2021 kerrmarin. All rights reserved.
//

import UIKit
import SwiftUI

import AppleRepro

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        // Compiles in debug, doesn't compile in release
        // To reproduce, change the scheme's Run Build Configuration to `Release`
        let view = ParentView()
        let hosting = UIHostingController(rootView: view)
        self.view.addSubview(hosting.view)
    }
}

