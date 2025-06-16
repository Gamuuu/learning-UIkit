//
//  CollectionView.swift
//  generalSetting-homework
//
//  Created by Siwakorn Phanitphichetvong on 13/6/2568 BE.
//

import Foundation
import UIKit

class CollectionView: UIViewController {
    @IBOutlet weak var collectionView: UICollectionView!

//    let icons: [UIImage] = [
//        UIImage(systemName: "square.and.arrow.up.fill")!,
//        UIImage(systemName: "heart.fill")!,
//        UIImage(systemName: "star.fill")!,
//        UIImage(systemName: "trash.fill")!
//       ]
    let icons: [UIImage] = ["square.and.arrow.up.fill",
                            "heart.fill",
                            "star.fill",
                            "trash.fill"]
                           .compactMap { UIImage(systemName: $0) }

// titles will be set after `icons` is initialized
    var titles: [String] = []

        override func viewDidLoad() {
            super.viewDidLoad()

            let nib = UINib(nibName: "viewCollectionView", bundle: nil)
            collectionView.register(nib, forCellWithReuseIdentifier: "collectionViewContent")

            collectionView.delegate = self
            collectionView.dataSource = self

        // Initialize titles now that `self` is available
        titles = (1...icons.count).map { "icon \($0)" }
        }
    }

    extension CollectionView: UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {

        func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
            return icons.count
        }

        func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {

            guard let cell = collectionView.dequeueReusableCell(
                withReuseIdentifier: "collectionViewContent", for: indexPath
            ) as? collectionViewContent else {
                fatalError("❌ ไม่พบ collectionViewContent")
            }

            cell.configure(image: icons[indexPath.item], text: titles[indexPath.item])
            return cell
        }

        func collectionView(_ collectionView: UICollectionView,
                            layout collectionViewLayout: UICollectionViewLayout,
                            sizeForItemAt indexPath: IndexPath) -> CGSize {
            return CGSize(width: 200, height: 200)
        }
    }
