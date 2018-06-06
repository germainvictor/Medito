//
//  DetailsMeditateViewController.swift
//  MeditoV3
//
//  Created by Victor Germain on 06/06/2018.
//  Copyright © 2018 HETIC. All rights reserved.
//

import UIKit

class DetailsMeditateViewController: UIViewController {

    var meditation: Meditation!
    var index: Int!
    var total: Int!
   
    @IBOutlet weak var labelSession: UILabel!
    @IBOutlet weak var LabelTitle: UILabel!
    @IBAction func buttonExit(_ sender: Any) {
        dismiss(animated: true, completion: nil)

    }
    override func viewDidLoad() {
        super.viewDidLoad()
        labelSession.text = "Session \(index + 1)/\(total ?? 0)"
        LabelTitle.text = meditation.title
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
