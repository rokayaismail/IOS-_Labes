//
//  ViewController.h
//  toolBar&alert&image
//
//  Created by JETS Mobile Lab-11 on 4/16/19.
//  Copyright © 2019 Jets. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UIAlertViewDelegate>

- (IBAction)loadImagBtn:(id)sender;
- (IBAction)alertBtn:(id)sender;
@property (weak, nonatomic) IBOutlet UIImageView *imageSpace;
@property (weak, nonatomic) IBOutlet UILabel *welcomtext;

@end

