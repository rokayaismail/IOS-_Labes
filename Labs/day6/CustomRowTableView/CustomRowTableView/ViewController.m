//
//  ViewController.m
//  CustomRowTableView
//
//  Created by JETS Mobile Lab-11 on 4/24/19.
//  Copyright © 2019 Jets. All rights reserved.
//

#import "ViewController.h"

@interface ViewController (){
    NSArray * arr;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    arr = @[@"x",@"y",@"z"];
    [_myTableView setDelegate:self];
    [_myTableView setDataSource:self];
}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return [arr count];
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 1;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell =[ tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath ];
    NSString *str =[NSString stringWithFormat:@"%ld",indexPath.row ];
    cell.textLabel.text = [@"hello " stringByAppendingString: str];
    return cell;
}


@end
