//
//  ViewController.h
//  validation
//
//  Created by JETS Mobile Lab-11 on 4/11/19.
//  Copyright © 2019 Jets. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *myText;
@property (weak, nonatomic) IBOutlet UILabel *myRes;

- (IBAction)isNumber:(id)sender;
- (IBAction)isChar:(id)sender;

@end

