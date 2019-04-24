//
//  ViewController.m
//  ScrollViewDemo
//
//  Created by JETS Mobile Lab-11 on 4/24/19.
//  Copyright © 2019 Jets. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIScrollView *mySV;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [_mySV setScrollEnabled:true];
    _mySV.contentSize=CGSizeMake(1000, 1000);
}


@end
