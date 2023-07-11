//
//  ViewController.swift
//  SegueApp
//
//  Created by uludağ on 22.06.2023.
//

import UIKit

class ViewController: UIViewController {
    
    var userName = ""

    @IBOutlet weak var firstViewController: UILabel!
    @IBOutlet weak var nameText: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        // LifeCycle
        print("viewDidLoad funtions called ")
    }

    override func viewDidDisappear(_ animated: Bool) {
        print("viewDidDisappear functions called")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print("viewDidAppear funtions called")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("viewWillAppear functions called")
        nameText.text = ""
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print("viewWillDisappear funtions called")
    }
    
    
    
    @IBAction func nextButton(_ sender: Any) {
        
        userName = "Name : \(nameText.text!)"
        performSegue(withIdentifier: "toSecondVC", sender: nil)
        
        
        
    }
    
    override func prepare(for segue : UIStoryboardSegue, sender: Any?){
        
       
        if segue.identifier == "toSecondVC" {
            // as --- Casting
            let destinationVC = segue.destination as! SecondViewController
            destinationVC.myName = userName
                
            
        }
    }
    
}

