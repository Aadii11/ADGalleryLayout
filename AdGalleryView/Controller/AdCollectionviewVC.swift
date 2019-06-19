//
//  CustomLayout.swift
//  Mosaic layout test
//
//  Created by Apple on 19/06/2019.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit

class AdCollectionviewVC:  UIViewController {
    
    var patteren = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
}

extension AdCollectionviewVC: UICollectionViewDelegateFlowLayout
{
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        if patteren == 0
        {
            
            let yourWidth = collectionView.bounds.width / 2.02 + 50
            let yourHeight = collectionView.bounds.width/2.02
            patteren += 1
            return CGSize(width: yourWidth, height: yourHeight)
            
            
            
        }
        else if patteren == 1
        {
            let yourWidth = collectionView.bounds.width/2.02 - 50
            let yourHeight = collectionView.bounds.width/2.02
            patteren += 1
            
            return CGSize(width: yourWidth, height: yourHeight)
            
        }
        else if patteren == 2
        {
            let yourWidth = collectionView.bounds.width
            let yourHeight = collectionView.bounds.width / 2
            patteren += 1
            return CGSize(width: yourWidth, height: yourHeight)
        }
            
        else if patteren == 3
        {
            let yourWidth = collectionView.bounds.width / 2.02 - 50
            let yourHeight = collectionView.bounds.width/2.02
            patteren += 1
            return CGSize(width: yourWidth, height: yourHeight)
        }
        else if patteren == 4
        {
            let yourWidth = collectionView.bounds.width / 2.02 + 50
            let yourHeight = collectionView.bounds.width/2.02
            patteren += 1
            return CGSize(width: yourWidth, height: yourHeight)
        }
        else if patteren == 5
        {
            let yourWidth = collectionView.bounds.width
            let yourHeight = collectionView.bounds.width / 2
            patteren = 0
            return CGSize(width: yourWidth, height: yourHeight)
        }
        else
        {
            let yourWidth = collectionView.bounds.width/2.02
            let yourHeight = yourWidth
            return CGSize(width: yourWidth, height: yourHeight)
        }
        
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets.zero
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 3
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 3
    }
    
}

//MARk : Collectionview DataSource
extension AdCollectionviewVC: UICollectionViewDataSource
{
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 7
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier:"AdLayoutCCell", for: indexPath) as! AdLayoutCCell
        cell.imgDisplay.layer.cornerRadius = 10
        return cell
    }
    
}

