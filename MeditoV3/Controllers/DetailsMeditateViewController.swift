//
//  DetailsMeditateViewController.swift
//  MeditoV3
//
//  Created by Victor Germain on 06/06/2018.
//  Copyright © 2018 HETIC. All rights reserved.
//

import UIKit
import AVFoundation

class DetailsMeditateViewController: UIViewController {

    var player: AVAudioPlayer = AVAudioPlayer()
    var meditation: Meditation!
    var allMeditations: [Meditation?]!
    var index: Int!
    var total: Int!
    var indexVC: Int!
    
    var actif = true
    
    @IBOutlet weak var labelSession: UILabel!
    @IBOutlet weak var LabelTitle: UILabel!
    @IBOutlet weak var buttonPlayPause: UIButton!
    @IBOutlet weak var buttonBack: UIButton!
    @IBOutlet weak var buttonRight: UIButton!
    @IBOutlet weak var buttonMore: UIButton!
    @IBOutlet weak var buttonNavBack: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        buttonPlayPause.setImage(UIImage(named: "play")?.withRenderingMode(.alwaysOriginal), for: .normal)
        buttonPlayPause.contentMode = .center
        buttonPlayPause.imageView?.contentMode = .scaleAspectFit
        
        buttonBack.setImage(UIImage(named: "shape-left")?.withRenderingMode(.alwaysOriginal), for: .normal)
        
        buttonRight.setImage(UIImage(named: "shape-right")?.withRenderingMode(.alwaysOriginal), for: .normal)
        
        buttonMore.setImage(UIImage(named: "more")?.withRenderingMode(.alwaysOriginal), for: .normal)
        buttonMore.layer.shadowColor = UIColor.black.cgColor
        buttonMore.layer.shadowOffset = CGSize(width: 5, height: 5)
        buttonMore.layer.shadowRadius = 5
        buttonMore.layer.shadowOpacity = 0.3
        buttonMore.contentEdgeInsets = UIEdgeInsetsMake(5,5,5,5) 
        
        buttonNavBack.setImage(UIImage(named: "back-arrow")?.withRenderingMode(.alwaysOriginal), for: .normal)
        
        labelSession.text = "Session \(index + 1)/\(total ?? 0)"
        LabelTitle.text = meditation.title
        do {
            try player = AVAudioPlayer(contentsOf: NSURL(fileURLWithPath: meditation.sound) as URL)
        }
        catch {
            //ERROR
        }
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func buttonNext(_ sender: Any) {
        if index < allMeditations.count - 1  {
            index = index + 1
            indexVC = index
            buttonPlayPause.setImage(UIImage(named: "play")?.withRenderingMode(.alwaysOriginal), for: .normal)
            buttonPlayPause.contentMode = .center
            buttonPlayPause.imageView?.contentMode = .scaleAspectFit
            labelSession.text = "Session \(indexVC + 1)/\(total ?? 0)"
            LabelTitle.text = allMeditations[indexVC]?.title
            do {
                try player = AVAudioPlayer(contentsOf: NSURL(fileURLWithPath: (allMeditations[indexVC]?.sound)!) as URL)
            }
            catch {
                //ERROR
            }
        }
    }
    
    @IBAction func buttonBack(_ sender: Any) {
        if index > 0 {
            index = index - 1
            indexVC = index
            buttonPlayPause.setImage(UIImage(named: "play")?.withRenderingMode(.alwaysOriginal), for: .normal)
            buttonPlayPause.contentMode = .center
            buttonPlayPause.imageView?.contentMode = .scaleAspectFit
            labelSession.text = "Session \(indexVC + 1)/\(total ?? 0)"
            LabelTitle.text = allMeditations[indexVC]?.title
            do {
                try player = AVAudioPlayer(contentsOf: NSURL(fileURLWithPath: (allMeditations[indexVC]?.sound)!) as URL)
            }
            catch {
                //ERROR
            }
        }
    }
    
    @IBAction func labelPlayPause(_ sender: Any) {
        if actif {
            player.play()
            buttonPlayPause.setImage(UIImage(named: "pause")?.withRenderingMode(.alwaysOriginal), for: .normal)
        }
        else {
            player.pause()
            buttonPlayPause.setImage(UIImage(named: "play")?.withRenderingMode(.alwaysOriginal), for: .normal)
        }
        actif = !actif
    }
    
    @IBAction func buttonExit(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
}
