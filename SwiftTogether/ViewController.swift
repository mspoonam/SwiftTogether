//
//  ViewController.swift
//  SwiftTogether
//
//  Created by Poonam Pandey on 12/02/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var widthLabel: UILabel!
    
    var shape = Shape(width: 10, height: 20)
    var ground = Ground(width: 25, height: 50)
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }

    @IBAction func Tap(_ sender: Any) {
        let vc = (UIStoryboard.init(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "SecondViewController") as? SecondViewController)!
        vc.shape = shape
        vc.ground = ground
        self.present(vc, animated: true, completion: nil)
    }
   
    @IBAction func PrintWidth(_ sender: Any) {
        let shapeWidth = shape.width
        let shapeWidthInString = "Shape Width is " + String(shapeWidth)
        
        let groundWidth = ground.width
        let groundWidthInString = " Ground Width is " + String(groundWidth)
        
        widthLabel.text = "first view " + shapeWidthInString + groundWidthInString
    }
}
