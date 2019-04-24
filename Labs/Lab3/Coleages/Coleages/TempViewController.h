//
//  TempViewController.h
//  Coleages
//
//  Created by JETS Mobile Lab-11 on 4/23/19.
//  Copyright © 2019 Jets. All rights reserved.
//

#import <UIKit/UIKit.h>
#include "Frind.h"
NS_ASSUME_NONNULL_BEGIN

@interface TempViewController : UIViewController
@property Frind* frind;

@property (weak, nonatomic) IBOutlet UITextField *fId;

@property (weak, nonatomic) IBOutlet UITextField *fName;
@property (weak, nonatomic) IBOutlet UITextField *fAge;
@property (weak, nonatomic) IBOutlet UITextField *fPhone;
@property (weak, nonatomic) IBOutlet UITextField *fEmail;
@property (weak, nonatomic) IBOutlet UITextField *fAddress;
@property (weak, nonatomic) IBOutlet UITextField *fGender;
@end

NS_ASSUME_NONNULL_END
