//
//  FrindManager.h
//  frindDemo
//
//  Created by JETS Mobile Lab-11 on 4/13/19.
//  Copyright © 2019 Jets. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Frind.h"

@interface FrindManager : NSObject

@property NSMutableArray *maleList;
@property NSMutableArray *femaleList;

-(id)init;
-(void)addFrind:(Frind*) frind;
-(void)deleteFrind:(NSString*) gender : (NSInteger) index;

@end
