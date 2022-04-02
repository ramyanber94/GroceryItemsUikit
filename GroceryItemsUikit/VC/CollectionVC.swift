//
//  CollectionVC.swift
//  GroceryItemsUikit
//
//  Created by Ramy Anber on 2022-04-01.


import UIKit
import SwiftUI


class CollectionVC:  UIView, UICollectionViewDataSource, UICollectionViewDelegate {
    var collectionView: UICollectionView!
    var sf = ScaleFactor()
    
    override init(frame: CGRect) {
            super.init(frame: frame)

        let layout = UICollectionViewFlowLayout()
        collectionView = UICollectionView(frame: CGRect(x: sf.w * 0.1, y: sf.h * 0.05, width: sf.w * 0.8, height: sf.h * 0.5), collectionViewLayout: layout)
        //If you set it false, you have to add constraints.
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        collectionView.delegate = self
        collectionView.dataSource = self
        self.collectionView.register(CollectionViewCell.self, forCellWithReuseIdentifier: "CollectionViewCell")
        collectionView.backgroundColor = .yellow
  
        self.addSubview(collectionView!)
        }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionViewCell", for: indexPath) as! CollectionViewCell
        cell.postLabel.text = "dsadsdsahhjhhg"
        let myLayer = CALayer()
        let myImage = UIImage(named: "star")?.cgImage
        myLayer.contents = myImage
        cell.imageView.layer.addSublayer(myLayer)
      
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: self.bounds.width, height: 400)
    }
    

}


