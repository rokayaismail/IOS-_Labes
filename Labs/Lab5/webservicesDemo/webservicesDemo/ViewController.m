//
//  ViewController.m
//  webservicesDemo
//
//  Created by JETS Mobile Lab-11 on 4/23/19.
//  Copyright © 2019 Jets. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *name;
@property (weak, nonatomic) IBOutlet UITextField *pass;
- (IBAction)register:(id)sender;
@property NSMutableData *totaldata;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (IBAction)register:(id)sender {
    NSString * str = [@"http://jets.iti.gov.eg/FriendsApp/services/user/register?name=" stringByAppendingString: _name.text];
    str = [str stringByAppendingString:@"&phone="];
    str = [str stringByAppendingString:_pass.text];
    NSURL * url=[NSURL URLWithString:str];
    NSURLRequest * req=[NSURLRequest requestWithURL:url];
    NSURLConnection * connection=[[NSURLConnection alloc] initWithRequest:req delegate:self];
    [connection start];
}
- (void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data{
    printf("didReceiveData ");
    [_totaldata appendData:data];
}
- (void)connection:(NSURLConnection *)connection didReceiveResponse:(NSURLResponse *)response{
    printf("didReceiveResponse ");
    _totaldata =[NSMutableData new];
}
- (void)connectionDidFinishLoading:(NSURLConnection *)connection{
    //    [_textView setText:[[NSString alloc] initWithData:_totaldata encoding:NSUTF8StringEncoding]];
    
    NSDictionary * dict = [NSJSONSerialization JSONObjectWithData:_totaldata options:NSJSONReadingAllowFragments error:nil];
    NSString * status = [dict objectForKey:@"status"];
    if([status isEqualToString:@"FAILING"]){
        UIAlertView *alert= [[UIAlertView alloc] initWithTitle:@"Faile" message:@"register failed" delegate:self cancelButtonTitle:nil otherButtonTitles:@"ok", nil];
        [alert show];
    }else{
        UIAlertView *alert= [[UIAlertView alloc] initWithTitle:@"Welcom" message:@"register success" delegate:self cancelButtonTitle:nil otherButtonTitles:@"ok", nil];
        [alert show];
    }
}

- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex{}
@end
