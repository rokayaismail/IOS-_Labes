//
//  ViewController.swift
//  currencyexchage
//
//  Created by JETS Mobile Lab-11 on 5/26/19.
//  Copyright © 2019 Jets. All rights reserved.
//

import UIKit

class CurrencyExchangeRateViewController: UIViewController {
    @IBOutlet weak var currencyview: UITableView!
    let presnter = CurrencyExchangeRatePresnter();
    var currencyRates : Rates? = nil
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        presnter.getCurrencyRates()
    }


}

