//
//  SecondViewController.swift
//  SwiftTogether
//
//  Created by Poonam Pandey on 12/02/23.
//

import UIKit
class SecondViewController: UIViewController {
    
    @IBOutlet weak var widthLabel: UILabel!
    
    var shape = Shape(width: 11, height: 12)
    var ground = Ground(width: 35, height: 75)
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func setWidth(_ sender: Any) {
        shape.width = 12000
        ground.width = 300
        
        let shapeWidth = shape.width
        let shapeWidthInString = "Shape Width is " + String(shapeWidth)
        
        let groundWidth = ground.width
        let groundWidthInString = " Ground Width is " + String(groundWidth)
        
        widthLabel.text = "second view " + shapeWidthInString + groundWidthInString
        
        
    }
    
}

