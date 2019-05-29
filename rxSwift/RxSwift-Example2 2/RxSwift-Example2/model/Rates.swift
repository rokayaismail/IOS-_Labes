//
//  Rates.swift
//  RxSwift-Example2
//
//  Created by JETS Mobile Lab-11 on 5/28/19.
//  Copyright © 2019 Sally Ahmed. All rights reserved.
//

import Foundation

struct Rates: Codable {
    let base: String
    let rates: [String: Double]
    let date: String
}
