//
//  ViewController.swift
//  SwiftKeyPathDict
//
//  Created by TangChi on 2018/4/19.
//  Copyright © 2018 TangChi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var dict: [String : Any] = [
        "language": "de",
        "translator": "Erika Fuchs",
        "translations": [
            "characters": [
                "Scrooge McDuck": "Dagobert",
                "Huey": "Tick",
                "Dewey": "Trick",
                "Louie": "Track",
                "Gyro Gearloose": "Daniel Düsentrieb",
            ],
            "places": [
                "Duckburg": "Entenhausen",
                "Money Bin": "Geldspeicher",
            ]
        ]
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        let a = dict[keyPath: "translations.characters.Scrooge McDuck"]
        print(a ?? "") // Dagobert
        dict[string: "translations.characters.Scrooge McDuck"]?.append(" Duck")
        let b = dict[keyPath: "translations.characters.Scrooge McDuck"]
        print(b ?? "") // Dagobert Duck
        let c = dict[string: "translations.characters.Scrooge McDuck"]
        print(c ?? "") // Dagobert Duck
        dict[dict: "translations.places"]?.removeAll()
        let d = dict[keyPath: "translations.places"]
        print(d ?? "") // [:]

    }

}
