//
//  SecondViewController.m
//  navigationContrpllerDeo
//
//  Created by JETS Mobile Lab-11 on 4/13/19.
//  Copyright © 2019 Jets. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UIBarButtonItem *btn=[UIBarButtonItem new];
    btn.action = @selector(done);
    btn.title = @"Hello";
    btn.target = self;
    self.navigationItem.rightBarButtonItem = btn;
    _outputField.text=_temp;
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
-(void) done{
    printf("Done\n");
    [self.navigationController popViewControllerAnimated:YES];
    [_prevView clearText];
    //[self.navigationController popToViewController:_prevView animated:NO];
}

@end
