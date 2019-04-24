//
//  ViewController.m
//  Hello_Lifecycle
//
//  Created by JETS Mobile Lab-11 on 4/11/19.
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

- (IBAction)sayHello:(id)sender {
    _myLabel.text=@"Hello :*";
}
@end
