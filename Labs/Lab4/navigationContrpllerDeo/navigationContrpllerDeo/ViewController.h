//
//  ViewController.h
//  navigationContrpllerDeo
//
//  Created by JETS Mobile Lab-11 on 4/13/19.
//  Copyright © 2019 Jets. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ViewDelegator.h"
@interface ViewController : UIViewController <ViewDelegator>

- (IBAction)goByactiontoSecondView:(id)sender;
@property (weak, nonatomic) IBOutlet UITextField *inputField;
-(void)clearText;
@end

