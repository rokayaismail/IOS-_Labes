//
//  ViewController.h
//  CustomRowTableView
//
//  Created by JETS Mobile Lab-11 on 4/24/19.
//  Copyright © 2019 Jets. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITableViewDelegate ,UITableViewDataSource>

@property (weak, nonatomic) IBOutlet UITableView *myTableView;

@end

