//
//  ViewController.h
//  login
//
//  Created by JETS Mobile Lab-11 on 4/22/19.
//  Copyright © 2019 Jets. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <NSURLConnectionDelegate , NSURLConnectionDataDelegate>

- (IBAction)asyncAction:(id)sender;
- (IBAction)syncAction:(id)sender;
@property (weak, nonatomic) IBOutlet UITextView *textView;
@property NSMutableData *totaldata;

@end

