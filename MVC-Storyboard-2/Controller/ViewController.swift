//
//  ViewController.swift
//  MVC-Storyboard-2
//
//  Created by ruslan on 11.10.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myCollectionView: UICollectionView!
    
    var menu: [Menu] = {
        var firstItem = Menu()
        firstItem.imageName = "Cola"
        firstItem.labelName = "Cola"
        
        var secondItem = Menu()
        secondItem.imageName = "Sprite"
        secondItem.labelName = "Sprite"
        
        return [firstItem, secondItem]
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        myCollectionView.dataSource = self
        myCollectionView.delegate = self
    }
}

extension ViewController: UICollectionViewDataSource, UICollectionViewDelegate {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        menu.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let item = collectionView.dequeueReusableCell(withReuseIdentifier: "MyCell", for: indexPath) as? MyCell {
            item.menu = menu[indexPath.row]
            return item
        }
        return UICollectionViewCell()
    }
}
