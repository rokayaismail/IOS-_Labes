//
//  ViewController.m
//  login
//
//  Created by JETS Mobile Lab-11 on 4/22/19.
//  Copyright © 2019 Jets. All rights reserved.
//

#import "ViewController.h"

@interface ViewController (){
    UIWebView * webView;}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (IBAction)asyncAction:(id)sender {
    NSURL * url=[NSURL URLWithString:@"https://developer.apple.com/documentation/foundation/nszone?language=objc"];
    NSURLRequest * req=[NSURLRequest requestWithURL:url];
    NSURLConnection * connection=[[NSURLConnection alloc] initWithRequest:req delegate:self];
    [connection start];
}

- (IBAction)syncAction:(id)sender {
    NSURL * url=[NSURL URLWithString:@"https://developer.apple.com/documentation/foundation/nszone?language=objc"];
    NSString *str =[[NSString alloc] initWithContentsOfURL:url encoding: NSUTF8StringEncoding error:nil];
//    _textView.text =str;
    [webView loadHTMLString:str baseURL:url];
}
- (void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data{
    printf("didReceiveData ");
    [_textView setText: [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding]];
    [_totaldata appendData:data];
}
- (void)connection:(NSURLConnection *)connection didReceiveResponse:(NSURLResponse *)response{
    printf("didReceiveResponse ");
    _totaldata =[NSMutableData new];
}
- (void)connection:(NSURLConnection *)connection didFailWithError:(NSError *)error{
    printf("didFailWithError ");
}
- (void)connectionDidFinishLoading:(NSURLConnection *)connection{
//    [_textView setText:[[NSString alloc] initWithData:_totaldata encoding:NSUTF8StringEncoding]];
    NSURL * url=[NSURL URLWithString:@"https://developer.apple.com/documentation/foundation/nszone?language=objc"];
    NSString *str=[[NSString alloc] initWithData:_totaldata encoding:NSUTF8StringEncoding];
    [webView loadHTMLString:str baseURL:url];
}
@end
