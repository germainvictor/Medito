//
//  Meditation.swift
//  MeditoV3
//
//  Created by Victor Germain on 06/06/2018.
//  Copyright © 2018 HETIC. All rights reserved.
//

import Foundation
import UIKit

class Meditation {
    
    var title: String
    var image: UIImage
    var sound: String

    init(_ title: String, _ image: String, _ sound: String) {
        self.title = title
        self.image = UIImage(named: image)!
        self.sound = sound
    }
}
