//
//  LobbyVC.swift
//  GroceryItemsUikit
//
//  Created by Ramy Anber on 2022-03-31.
//

import UIKit
import SwiftUI

class LobbyVC: UIViewController {
    var headerLabel: UILabel!
    var headerView: UIView!
    var bodyView: UIView!
    var sf = ScaleFactor()
    
    lazy var collectionView: CollectionVC = {
        let tv = CollectionVC()
        tv.translatesAutoresizingMaskIntoConstraints = false
        return tv
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        headerView = UIView()
        bodyView = UIView()
        bodyView.backgroundColor = .white
    
        headerView.backgroundColor = .white
        self.view.addSubview(headerView)
        self.view.addSubview(bodyView)
  
        headerView.translatesAutoresizingMaskIntoConstraints = false
        headerView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor).isActive = true
        headerView.topAnchor.constraint(equalTo: self.view.topAnchor).isActive = true
        headerView.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 1).isActive = true
        headerView.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.15).isActive = true
        
        headerLabel = UILabel()
        headerView.addSubview(headerLabel)
        headerLabel.text = "Welcome"
        headerLabel.textAlignment = .center
        headerLabel.textColor = .black
        headerLabel.font = UIFont(name: "Times New Roman", size: sf.w * 0.15)
        headerLabel.translatesAutoresizingMaskIntoConstraints = false
        headerLabel.centerXAnchor.constraint(equalTo: headerView.centerXAnchor).isActive = true
        headerLabel.centerYAnchor.constraint(equalTo: headerView.centerYAnchor).isActive = true
        
        bodyView.translatesAutoresizingMaskIntoConstraints = false
        bodyView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        bodyView.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
        bodyView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor).isActive = true
        bodyView.widthAnchor.constraint(equalTo: self.view.widthAnchor , multiplier: 1.0).isActive = true
        bodyView.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.65).isActive = true
        
        bodyView.addSubview(collectionView)
        collectionView.leadingAnchor.constraint(equalTo: bodyView.leadingAnchor).isActive = true
        collectionView.topAnchor.constraint(equalTo: bodyView.topAnchor).isActive = true
        collectionView.widthAnchor.constraint(equalTo: bodyView.widthAnchor, multiplier: 1.0 ).isActive = true
        collectionView.heightAnchor.constraint(equalTo: bodyView.heightAnchor, multiplier: 2.0).isActive = true
        
    }
    
    
}


#if canImport(SwiftUI) && DEBUG

struct ViewControllerRepresentable: UIViewControllerRepresentable {
    
    func makeUIViewController(context: Context) -> some UIViewController  {
        return LobbyVC() // change UIViewController
    }
    
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
        
    }
}

struct ViewController_Preview: PreviewProvider {
    static var previews: some View {
        ViewControllerRepresentable()
    }
}
#endif
