//
//  searchViewContrller.swift
//  RxSwift-Example2
//
//  Created by JETS Mobile Lab-11 on 5/27/19.
//  Copyright © 2019 Sally Ahmed. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa
class searchViewContrller: UIViewController {

    @IBOutlet weak var searchArea: UITextField!
    @IBOutlet weak var searchResult: UILabel!
    var disposable = DisposeBag()
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
 searchArea.rx.controlEvent(UIControl.Event.editingDidEnd).asObservable()
    .subscribe({_ in
            self.searchResult.text = self.searchArea.text
        }).disposed(by: disposable)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
