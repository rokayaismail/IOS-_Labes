//
//  ProfileViewController.m
//  UserDefaults_Demo
//
//  Created by JETS Mobile Lab-11 on 4/23/19.
//  Copyright © 2019 Jets. All rights reserved.
//

#import "ProfileViewController.h"

@interface ProfileViewController (){
    NSUserDefaults * defaults;
}
@property (weak, nonatomic) IBOutlet UILabel *nameLbl;
@property (weak, nonatomic) IBOutlet UILabel *passLbl;

@end

@implementation ProfileViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    defaults = [NSUserDefaults standardUserDefaults];
    
    NSString *name= [defaults objectForKey:@"name"];
    NSString *pass= [defaults objectForKey:@"pass"];
    
    _nameLbl.text=name;
    _passLbl.text=pass;
    
    UISwipeGestureRecognizer * recognizer =[[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(goToWelcome)];
    recognizer.direction = UISwipeGestureRecognizerDirectionRight;
    [self.view addGestureRecognizer:recognizer];
}
-(void) goToWelcome{
//    WelcomeViewController * welcome = [self.storyboard instantiateViewControllerWithIdentifier:@"welcomeID"];
    [self dismissViewControllerAnimated:YES completion:nil];
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
