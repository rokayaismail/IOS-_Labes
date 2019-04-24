//
//  ViewController.m
//  UserDefaults_Demo
//
//  Created by JETS Mobile Lab-11 on 4/23/19.
//  Copyright © 2019 Jets. All rights reserved.
//

#import "ViewController.h"

@interface ViewController (){
    NSUserDefaults * defaults;}
@property (weak, nonatomic) IBOutlet UITextField *userName;
@property (weak, nonatomic) IBOutlet UITextField *userPassword;
- (IBAction)loginBtn:(UIButton *)sender;

@property bool fail;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    defaults = [NSUserDefaults standardUserDefaults];
    [defaults setObject:@"Rokaya" forKey:@"name"];
    [defaults setObject:@"123456" forKey:@"pass"];
    
}



- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex{
    switch (buttonIndex) {
        case 0:
            if(!_fail){
                printf("go to another view");
                WelcomeViewController * welcomView = [self.storyboard instantiateViewControllerWithIdentifier:@"welcomeID"];
                [self presentViewController:welcomView animated:YES completion:nil];
            }
            break;
        case 1:
            _userName.text=@"";
            _userPassword.text=@"";
            break;
        default:
            break;
    }
}
- (IBAction)loginBtn:(UIButton *)sender {
    NSString *name= [defaults objectForKey:@"name"];
    NSString *pass= [defaults objectForKey:@"pass"];
    if([name isEqualToString:_userName.text] && [pass isEqualToString: _userPassword.text]){
        UIAlertView *alert= [[UIAlertView alloc] initWithTitle:@"Welcom" message:@"Login success" delegate:self cancelButtonTitle:nil otherButtonTitles:@"ok", nil];
        [alert show];
        _fail=false;
    }else{
        UIAlertView *alert= [[UIAlertView alloc] initWithTitle:@"Fail" message:@"Login Failed" delegate:self cancelButtonTitle:nil otherButtonTitles:@"ok",@"Try again", nil];
        [alert show];
        _fail=true;
    }
}
@end
