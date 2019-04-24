//
//  TempViewController.m
//  Coleages
//
//  Created by JETS Mobile Lab-11 on 4/23/19.
//  Copyright © 2019 Jets. All rights reserved.
//

#import "TempViewController.h"

@interface TempViewController ()

@end

@implementation TempViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
        _fId.text = [NSString stringWithFormat:@"%d", _frind.fID] ;
    _fName.text = _frind.name;
        _fAge.text = [NSString stringWithFormat:@"%d", _frind.age];
    _fPhone.text = _frind.phone;
    _fEmail.text=_frind.email;
    _fAddress.text=_frind.address;
    _fGender.text=_frind.gender;
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
