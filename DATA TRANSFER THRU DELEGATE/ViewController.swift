//
//  ViewController.swift
//  DATA TRANSFER THRU DELEGATE
//
//  Created by Syed.Reshma Ruksana on 18/11/19.
//  Copyright © 2019 Syed.Reshma Ruksana. All rights reserved.
//

import UIKit

class ViewController: UIViewController, DataTransfer {
   
    
    var labels = [[]]//[[String]]()
    
    var xpos = 50
    var ypos = 150
    
    var allLabels = [UILabel]()


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func passingData(values: [String]) {
        labels.append(values)
    }
    
    
    override func viewWillAppear(_ animated: Bool)
    {
        
        xpos = 50
        ypos = 150
        for x in allLabels
        {
            x.removeFromSuperview()
        }
        createUI()
    }
    func createUI()
    {
    for x in labels
    {
    var i = 0
    
    for m in x
    {
    
    
    let label = UILabel()
    
    
    label.frame = CGRect(x: xpos, y: ypos, width: 150, height: 40)
    
    allLabels.append(label)
    
    if(i == 0)
    {
    
    label.backgroundColor = .green
        
    
        label.text = m as! String
      view.addSubview(label)
    
    i += 1
    xpos += 200
    
    }
    else
    {
    
    label.backgroundColor = .green
    
        label.text = m as! String
    view.addSubview(label)
    xpos = 50
    ypos += 70
    
    }
    
    
    }
    }
    }
    
    @IBAction func onAddNamesBtnTap(_ sender: Any) {
        
        let targetVC = self.storyboard?.instantiateViewController(withIdentifier: "secondVC") as! SecondViewController
        
        targetVC.delegate = self
        
        self.present(targetVC, animated: true, completion: nil)
        
    }
    

}

