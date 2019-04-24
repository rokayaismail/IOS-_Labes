//
//  ViewController.m
//  coleages
//
//  Created by JETS Mobile Lab-11 on 4/11/19.
//  Copyright © 2019 Jets. All rights reserved.
//

#import "ViewController.h"
#import <Foundation/Foundation.h>
@interface ViewController ()

@end
@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    _pos=0;
    marray=@[@"xffff",@"yfff",@"zghhh"];
    _nameLbl.text = marray[_pos];
}


- (IBAction)prevBtn:(id)sender {
    _pos = (_pos-1+3)%3;
    _nameLbl.text = marray[_pos];
}

- (IBAction)nextBtn:(id)sender {
    _pos = (1+_pos)%3;
    _nameLbl.text = marray[_pos];
}
@end
