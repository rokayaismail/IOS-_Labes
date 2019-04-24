//
//  ViewController.h
//  animatorDemo
//
//  Created by JETS Mobile Lab-11 on 4/22/19.
//  Copyright © 2019 Jets. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UICollisionBehaviorDelegate>

@property UIDynamicAnimator * animator;
-(void) animate;
@end

