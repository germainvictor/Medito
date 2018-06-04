//
//  WelcomeController.swift
//  MeditoV3
//
//  Created by Victor Germain on 04/06/2018.
//  Copyright © 2018 HETIC. All rights reserved.
//

import UIKit

class WelcomeController: UIViewController {

    @IBOutlet weak var onboardingButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        onboardingButton.layer.cornerRadius = 25;
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
