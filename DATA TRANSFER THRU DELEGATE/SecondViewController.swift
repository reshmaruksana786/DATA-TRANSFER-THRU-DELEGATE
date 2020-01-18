//
//  SecondViewController.swift
//  DATA TRANSFER THRU DELEGATE
//
//  Created by Syed.Reshma Ruksana on 18/11/19.
//  Copyright © 2019 Syed.Reshma Ruksana. All rights reserved.
//

import UIKit


protocol DataTransfer {
    
    func passingData(values:[String])
}

class SecondViewController: UIViewController {
    
    var delegate:DataTransfer!
    
    
    @IBOutlet weak var firstNameTF: UITextField!
    
    
    @IBOutlet weak var lastNameTF: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    
    @IBAction func onSubmitBtnTap(_ sender: Any) {
        
        var textFields = [String]()
        textFields.append(firstNameTF.text!)
        textFields.append(lastNameTF.text!)
        
        delegate.passingData(values: textFields)
        
        dismiss(animated: true, completion: nil)
        
    }
    
    
    
    

}
