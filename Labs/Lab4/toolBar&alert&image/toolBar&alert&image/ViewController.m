//
//  ViewController.m
//  toolBar&alert&image
//
//  Created by JETS Mobile Lab-11 on 4/16/19.
//  Copyright © 2019 Jets. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (IBAction)loadImagBtn:(id)sender {
    UIImage* myImage=[UIImage imageNamed:@"26893-3-welcome-free-download-thumb.png"];
    _imageSpace.image = myImage;
}

- (IBAction)alertBtn:(id)sender {
    UIAlertView* alertView=[[UIAlertView alloc] initWithTitle:@"Hello" message:@"Hello to our App, enter your name: " delegate:self cancelButtonTitle:nil otherButtonTitles:@"Ok",@"cancel", nil];
    alertView.alertViewStyle=UIAlertViewStylePlainTextInput;
    [alertView show];
}
- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex{
    switch (buttonIndex) {
        case 0:{
            NSString* temp =[[alertView textFieldAtIndex:0] text];
            _welcomtext.text=temp;
            
        }
            break;
        default:
        {
            _welcomtext.text=@"Cancel Pressed";
            
        }
            break;
    }
    
}
@end
