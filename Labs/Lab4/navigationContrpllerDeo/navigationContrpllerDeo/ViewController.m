//
//  ViewController.m
//  navigationContrpllerDeo
//
//  Created by JETS Mobile Lab-11 on 4/13/19.
//  Copyright © 2019 Jets. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (IBAction)goByactiontoSecondView:(id)sender {
//    SecondViewController * seconView=[SecondViewController new];
//    [self.navigationController pushViewController:seconView animated:NO];
//    the related object is totaly different from the one on the storyboard
    SecondViewController * secondVC = [self.storyboard instantiateViewControllerWithIdentifier:@"secondView"];
    secondVC.prevView = self;
    secondVC.temp = [@"Hello " stringByAppendingString: _inputField.text];
        [self.navigationController pushViewController:secondVC animated:NO];
    
}
- (void)clearText{
    _inputField.text=@"";
}
@end
