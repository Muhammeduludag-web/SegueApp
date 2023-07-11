//
//  SecondViewController.swift
//  SegueApp
//
//  Created by uludağ on 22.06.2023.
//

import UIKit

class SecondViewController: UIViewController {

    
    @IBOutlet weak var secondViewController: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    
    var myName = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameLabel.text = myName

    }
    


}
