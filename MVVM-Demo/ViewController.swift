//
//  ViewController.swift
//  MVVM-Demo
//
//  Created by Dipesh Dhakal on 1/13/18.
//  Copyright © 2018 Dipesh Dhakal. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    ///Cal tabbar
    override func viewDidAppear(_ animated: Bool) {
        let vc = TabBarController.init(nibName: TabBarController.stringRepresentation, bundle: nil)
        UIApplication.shared.delegate?.window!!.rootViewController = vc
    }


}

