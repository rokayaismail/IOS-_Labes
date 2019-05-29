//
//  MyViewController.swift
//  RxSwift-Example2
//
//  Created by JETS Mobile Lab-11 on 5/26/19.
//  Copyright © 2019 Sally Ahmed. All rights reserved.
//

import UIKit
import RxCocoa
import RxSwift
class MyViewController: UIViewController {

    @IBOutlet weak var myCollectionViewController: UICollectionView!
    
    let items = Observable.of(["Example 1","Example 2","Example 3", "Example 4" , "Example 5"])

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func onOffSwitch(_ sender: UISwitch) {
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
