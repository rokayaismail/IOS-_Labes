//
//  FrindManager.m
//  frindDemo
//
//  Created by JETS Mobile Lab-11 on 4/13/19.
//  Copyright © 2019 Jets. All rights reserved.
//

#import "FrindManager.h"

@implementation FrindManager
static bool instance=false;
-(id)init{
    if(!instance){
        instance=true;
        self=[super init];}
    _maleList =[NSMutableArray new];
    _femaleList =[NSMutableArray new];
    return self;
}
-(void)addFrind:(Frind*) frind{
    
    if([frind.gender  isEqual: @"female"])
        [_femaleList addObject:frind];
    else
        [_maleList addObject:frind];
}
-(void)deleteFrind:(NSString *)gender :(NSInteger) index{
    if([gender  isEqual: @"female"])
        [_femaleList removeObjectAtIndex:index];
    else
        [_maleList removeObjectAtIndex:index];
}

@end
