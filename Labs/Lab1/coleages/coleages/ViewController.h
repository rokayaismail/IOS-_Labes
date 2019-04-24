//
//  ViewController.h
//  coleages
//
//  Created by JETS Mobile Lab-11 on 4/11/19.
//  Copyright © 2019 Jets. All rights reserved.
//

#import <UIKit/UIKit.h>
@interface ViewController : UIViewController{

     NSArray *marray;}
@property (weak, nonatomic) IBOutlet UILabel *nameLbl;
@property int pos;
- (IBAction)prevBtn:(id)sender;

- (IBAction)nextBtn:(id)sender;

@end

