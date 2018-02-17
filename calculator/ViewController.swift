//
//  ViewController.swift
//  calculator
//
//  Created by Sean Wesenberg on 2/15/18.
//  Copyright © 2018 Sean Wesenberg. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var longOutput: UILabel!
    @IBOutlet weak var currentOutput: UILabel!
    
    var previousNumber:Double = 0
    var currentOperator:String = ""
    
    @IBAction func numberPushed(_ sender: UIButton) {
        if currentOutput.text == "0" && sender.currentTitle != "." {
            currentOutput.text = ""
        }
        currentOutput.text! += sender.currentTitle!
    }
    
    @IBAction func operatorPushed(_ sender: UIButton) {
        if currentOutput.text == "" {
            return
        }
        currentOperator = sender.currentTitle!
        // send currentOutput to longOutput with operator
        longOutput.text! += "\(currentOutput.text!) \(currentOperator) "
        previousNumber = Double(currentOutput.text!)!
        currentOutput.text = ""//currentOperator
    }
    
    @IBAction func equalsPushed(_ sender:UIButton) {
        if currentOutput.text == "" {
            return
        }
        longOutput.text! += "\(currentOutput.text!) ="
        let currentNumber = Double(currentOutput.text!)!
        switch currentOperator {
        case "+":
            currentOutput.text = String(previousNumber + currentNumber)
        case "-":
            currentOutput.text = String(previousNumber - currentNumber)
        case "X":
            currentOutput.text = String(previousNumber * currentNumber)
        case "/":
            currentOutput.text = String(previousNumber / currentNumber)
        default:
            return
        }
    }
    
    @IBAction func clearPushed(_ sender: UIButton) {
        currentOutput.text = ""
        longOutput.text = ""
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

