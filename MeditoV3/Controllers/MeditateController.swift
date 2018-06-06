//
//  MeditateController.swift
//  MeditoV3
//
//  Created by Victor Germain on 04/06/2018.
//  Copyright © 2018 HETIC. All rights reserved.
//

import UIKit

class MeditateController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {

    @IBOutlet weak var CollectionView: UICollectionView!

    let meditations = [
        Meditation("Sleeping better", "sleepingbetter", "sleepingbetter"),
        Meditation("Less stressed", "lessstressed", "lessstressed"),
        Meditation("Finding calm", "findingcalm", "findingcalm"),
        Meditation("Managing anxiety", "managinganxiety", "managinganxiety"),
        Meditation("More focused", "morefocused", "morefocused"),
        Meditation("Just checking", "justchecking", "justchecking")
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        CollectionView.dataSource = self
        CollectionView.delegate = self
        
        print("ok")
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return meditations.count
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let newViewController = storyBoard.instantiateViewController(withIdentifier: "DetailsVC") as! DetailsMeditateViewController
        
        newViewController.meditation = meditations[indexPath.row]
        newViewController.index = indexPath.row
        newViewController.total = meditations.count
        
        self.present(newViewController, animated: true, completion: nil)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let padding: CGFloat = 15
        let collectionViewSize = collectionView.frame.size.width - padding
        
        print("collectionView.frame.size.width \(collectionView.frame.size.width)")
        print("collectionViewSize \(collectionViewSize)")
        print("collectionViewSize/2 \(collectionViewSize/2)")
        
        return CGSize(width: collectionViewSize * 0.5, height: collectionViewSize * 0.4)
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! CollectionViewCell
        
        cell.labelView.text = meditations[indexPath.item].title
        cell.imageView.image = meditations[indexPath.item].image
        
        return cell
    }
    
}
