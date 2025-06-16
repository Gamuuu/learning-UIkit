//
//  collectionVIewContent.swift
//  generalSetting-homework
//
//  Created by Siwakorn Phanitphichetvong on 13/6/2568 BE.
//

import Foundation
import UIKit

class collectionViewContent: UICollectionViewCell {
        @IBOutlet weak var imageView: UIImageView!
        @IBOutlet weak var label: UILabel!

        func configure(image: UIImage, text: String) {
            imageView.image = image
            label.text = text
        }
}
