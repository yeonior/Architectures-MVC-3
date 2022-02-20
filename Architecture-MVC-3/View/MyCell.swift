//
//  MyCell.swift
//  Architecture-MVC-3
//
//  Created by ruslan on 06.02.2022.
//

import UIKit

class MyCell: UICollectionViewCell {
    
    @IBOutlet weak var myImageView: UIImageView!
    @IBOutlet weak var myLabel: UILabel!
    
    var menu: Menu? {
        didSet{
            if let image = menu?.imageName {
                myImageView.image = UIImage(named: image)
            }
            myLabel.text = menu?.labelName
        }
    }
}
