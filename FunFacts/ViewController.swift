//
//  ViewController.swift
//  FunFacts
//
//  Created by Jonathan Prince on 06/10/14.
//  Copyright (c) 2014 Jonathan Prince. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var funFactLabel: UILabel!
    @IBOutlet weak var funFactButton: UIButton!
    
    let factBook = FactBook()
    let colorWheel = ColorWheel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        funFactLabel.text = factBook.randomFact()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func showFunFact() {
        var randomColor = colorWheel.randomColor()
        funFactButton.tintColor = randomColor
        funFactLabel.text = factBook.randomFact()
        view.backgroundColor = randomColor
    }

}

