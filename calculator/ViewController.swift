//
//  ViewController.swift
//  calculator
//
//  Created by Sean Wesenberg on 2/15/18.
//  Copyright © 2018 Sean Wesenberg. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var output: UILabel!
    
    @IBOutlet weak var button0: UIButton!
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    
    
    @IBAction func button0pushed(_ sender: Any) {
        self.output.text = "0"
    }
    @IBAction func button1pushed(_ sender: Any) {
        self.output.text = "1"
    }
    @IBAction func button2pushed(_ sender: Any) {
        self.output.text = "2"
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

