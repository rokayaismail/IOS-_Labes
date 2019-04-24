//
//  ViewController.m
//  animatorDemo
//
//  Created by JETS Mobile Lab-11 on 4/22/19.
//  Copyright © 2019 Jets. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIView *ball;
@property (weak, nonatomic) IBOutlet UILabel *myLabel;
@property bool flag;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _ball.layer.cornerRadius=25;
    _ball.layer.borderColor=[UIColor blueColor].CGColor;
    _ball.layer.borderWidth=1;
    _animator = [[UIDynamicAnimator alloc] initWithReferenceView: self.view];
    [self animate];
    _flag=true;
    // Do any additional setup after loading the view, typically from a nib.
}
-(void) animate{
    UIGravityBehavior *gravity=[[UIGravityBehavior alloc] initWithItems:@[_ball ,_myLabel]];
    [_animator addBehavior:gravity];
    
    UICollisionBehavior * collision =[[UICollisionBehavior alloc] initWithItems:@[_ball ,_myLabel ]];
    [collision setTranslatesReferenceBoundsIntoBoundary:YES];
    collision.collisionDelegate=self;
//    [self collisionBehavior:collision endedContactForItem:_ball withBoundaryIdentifier: nil];
    [_animator addBehavior:collision];
    UIDynamicItemBehavior * item = [[UIDynamicItemBehavior alloc] initWithItems:@[_ball,_myLabel]];
    item.elasticity =1;
    item.resistance=0.25;
    [_animator addBehavior:item];
}
- (void)collisionBehavior:(UICollisionBehavior *)behavior endedContactForItem:(id<UIDynamicItem>)item withBoundaryIdentifier:(id<NSCopying>)identifier{
    if(_flag)
        _ball.backgroundColor = [UIColor blackColor];
    else
        _ball.backgroundColor = [UIColor orangeColor];
    _flag = !_flag;
}

@end
