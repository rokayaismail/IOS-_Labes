//
//  SecondViewController.h
//  navigationContrpllerDeo
//
//  Created by JETS Mobile Lab-11 on 4/13/19.
//  Copyright © 2019 Jets. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ViewDelegator.h"
NS_ASSUME_NONNULL_BEGIN

@interface SecondViewController : UIViewController
@property id<ViewDelegator>  prevView;
@property NSString *temp;
@property (weak, nonatomic) IBOutlet UILabel *outputField;

@end

NS_ASSUME_NONNULL_END
