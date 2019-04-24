//
//  ViewController.h
//  Calculator
//
//  Created by JETS Mobile Lab-11 on 4/22/19.
//  Copyright © 2019 Jets. All rights reserved.
//

#import <UIKit/UIKit.h>
#include <math.h>
@interface ViewController : UIViewController

- (IBAction)num0:(id)sender;
- (IBAction)num1:(id)sender;
- (IBAction)num2:(id)sender;
- (IBAction)num3:(id)sender;
- (IBAction)num4:(id)sender;
- (IBAction)num5:(id)sender;
- (IBAction)num6:(id)sender;
- (IBAction)num7:(id)sender;
- (IBAction)num8:(id)sender;
- (IBAction)num9:(id)sender;
- (IBAction)subtract:(id)sender;
- (IBAction)add:(id)sender;
- (IBAction)calculate:(id)sender;
- (IBAction)power:(id)sender;
- (IBAction)mult:(id)sender;
- (IBAction)divid:(id)sender;
- (IBAction)mod:(id)sender;
- (IBAction)backSpace:(id)sender;
- (IBAction)clear:(id)sender;
- (IBAction)point:(id)sender;
@property (weak, nonatomic) IBOutlet UITextField *display;
@property (weak, nonatomic) IBOutlet UILabel *errorLbl;

@end

