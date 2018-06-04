//
//  ViewController.swift
//  MeditoV3
//
//  Created by Victor Germain on 02/06/2018.
//  Copyright © 2018 HETIC. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var onboardingButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        onboardingButton.layer.cornerRadius = 25;
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

