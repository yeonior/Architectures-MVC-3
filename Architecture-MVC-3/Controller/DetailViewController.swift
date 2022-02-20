//
//  DetailViewController.swift
//  Architecture-MVC-3
//
//  Created by Ruslan on 06.02.2022.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var detailImageView: UIImageView! {
        didSet {
            if let image = menu?.imageName {
                detailImageView.image = UIImage(named: image)
            }
        }
    }
    @IBOutlet weak var detailLabel: UILabel! {
        didSet {
            detailLabel.text = menu?.labelName
        }
    }
    
    var menu: Menu?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
}
