//
//  CurrencyExchangeRatePresnter.swift
//  currencyexchage
//
//  Created by JETS Mobile Lab-11 on 5/26/19.
//  Copyright © 2019 Jets. All rights reserved.
//

import Foundation

class CurrencyExchangeRatePresnter{
    let currencyService : CurrencyService?
    init() {
        currencyService = CurrencyService()
    }
    func getCurrencyRates() /*-> Rates */{
//        var result : Rates? = nil
        currencyService?.getCurrencyRates(url:"https://api.exchangeratesapi.io/latest" /*, completionHandler: {r in
            print(r)
        }*/)
//        return  result
    }
}
