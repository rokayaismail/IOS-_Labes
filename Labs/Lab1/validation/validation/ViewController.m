//
//  ViewController.m
//  validation
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


- (IBAction)isNumber:(id)sender {
    NSString *temp=_myText.text;
    NSString * regex = @"^[0-9]*$";
    NSPredicate *regexTest = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", regex];
    BOOL valid = [regexTest evaluateWithObject:temp];
    if(valid){
        _myRes.text=@"yes";
    }else{
        _myRes.text=@"No";
    }
}

- (IBAction)isChar:(id)sender {
    NSString *temp=_myText.text;
    NSString * regex = @"[a-zA-Z]+";
    NSPredicate *regexTest = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", regex];
    BOOL valid = [regexTest evaluateWithObject:temp];
    if(valid){
        _myRes.text=@"yes";
    }else{
        _myRes.text=@"No";
    }
}
@end
