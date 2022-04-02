//
//  CollectionViewCell.swift
//  GroceryItemsUikit
//
//  Created by Ramy Anber on 2022-04-01.
//

import UIKit
import SwiftUI

class CollectionViewCell: UICollectionViewCell {
    let postLabel = UILabel()
    var imageView =  UIView()
    
      override init(frame: CGRect) {
          super.init(frame: frame)
          
          self.contentView.translatesAutoresizingMaskIntoConstraints = false
          self.contentView.widthAnchor.constraint(equalTo: self.widthAnchor).isActive = true
          self.contentView.heightAnchor.constraint(equalTo: self.heightAnchor).isActive = true
          self.contentView.addSubview(postLabel)
          self.contentView.addSubview(imageView)
          
          postLabel.translatesAutoresizingMaskIntoConstraints = false
          postLabel.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
          postLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
          postLabel.lineBreakMode = .byWordWrapping
          postLabel.numberOfLines = 3
          
          imageView.translatesAutoresizingMaskIntoConstraints = false
          imageView.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
          imageView.heightAnchor.constraint(equalTo: self.heightAnchor).isActive = true
          imageView.centerXAnchor.constraint(equalTo: postLabel.centerXAnchor).isActive = true
          imageView.centerYAnchor.constraint(equalTo: postLabel.centerYAnchor).isActive = true
          imageView.backgroundColor = .green
      }
      
      required init?(coder: NSCoder) {
          fatalError("init(coder:) has not been implemented")
      }
}


