//
//  CurrencyService.swift
//  RxSwift-Example2
//
//  Created by JETS Mobile Lab-11 on 5/28/19.
//  Copyright © 2019 Sally Ahmed. All rights reserved.
//

import Foundation
import RxSwift
import RxCocoa
import RxAlamofire

class CurrencyService{
    let disposeBag = DisposeBag()
    
    func getCurrencyRates(url : String/*,completionHandler: (@escaping (Rates) -> Void)*/){
        RxAlamofire.requestJSON(.get , url).asObservable()
            .subscribe(onNext: {(response , json) in
                    print("\((json as! [String , Codable]))")
                },
                onError: { (e) in
                    print(e)
                })
            .disposed(by: disposeBag)
//        RxAlamofire.requestJSON(.get , url).bind { (arg0) in
//            let  json = arg0.1
//            let jsonData = (json as! String).data(using: .utf8)
//            completionHandler(try! JSONDecoder().decode(Rates.self, from: jsonData!))
//        }
//        var result : Rates? = nil
//        RxAlamofire.requestData(.get, url)
//            .subscribe(onNext: { (r, json) in
//                completionHandler(try! JSONDecoder().decode(Rates.self, from: json ))
//            })
//            .disposed(by: disposeBag)
    }
    
}
