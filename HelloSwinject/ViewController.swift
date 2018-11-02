//
//  ViewController.swift
//  HelloSwinject
//
//  Created by Alexander Larsson on 2018-11-02.
//

import UIKit
import Swinject
import SwinjectAutoregistration

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        let helloWorld = container ~> HelloWorldProvider.self

        label.text = helloWorld.helloWorld()
    }


}

