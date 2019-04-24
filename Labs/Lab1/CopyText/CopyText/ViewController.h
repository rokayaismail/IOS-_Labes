//
//  ViewController.h
//  CopyText
//
//  Created by JETS Mobile Lab-11 on 4/11/19.
//  Copyright © 2019 Jets. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *myText;
- (IBAction)cText:(id)sender;
@property (weak, nonatomic) IBOutlet UILabel *myCopiedText;

@end

