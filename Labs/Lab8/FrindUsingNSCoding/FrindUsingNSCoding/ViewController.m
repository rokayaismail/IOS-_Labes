//
//  ViewController.m
//  FrindUsingNSCoding
//
//  Created by JETS Mobile Lab-11 on 5/2/19.
//  Copyright © 2019 Jets. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *name;
@property (weak, nonatomic) IBOutlet UITextField *age;
@property (weak, nonatomic) IBOutlet UITextField *phone;
- (IBAction)save:(UIButton *)sender;
- (IBAction)retrive:(UIButton *)sender;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (IBAction)save:(UIButton *)sender {
    Frind * myFrind = [[Frind alloc] initWithName:_name.text andAge:[_age.text intValue] andPhone:_phone.text];
    NSData * data = [NSKeyedArchiver archivedDataWithRootObject:myFrind];
    
    NSUserDefaults * defaults = [NSUserDefaults standardUserDefaults];
    [defaults setObject:data forKey:@"Frind"];
    
    _name.text = @"";
    _age.text = @"";
    _phone.text =@"";
}

- (IBAction)retrive:(UIButton *)sender {
    
    NSUserDefaults * defaults = [NSUserDefaults standardUserDefaults];
    NSData * data = [defaults objectForKey:@"Frind"];
    Frind * myFrind = [NSKeyedUnarchiver unarchiveObjectWithData:data];
    _name.text = myFrind.name;
    _age.text = [NSString stringWithFormat:@"%d", myFrind.age];
    _phone.text =myFrind.phone;
}
@end
