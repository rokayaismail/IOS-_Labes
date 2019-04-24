//
//  Frind.h
//  frindDemo
//
//  Created by JETS Mobile Lab-11 on 4/13/19.
//  Copyright © 2019 Jets. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Frind : NSObject
@property int fID;
@property int age;
@property NSString *name;
@property NSString *phone;
@property NSString *email;
@property NSString *address;
@property NSString *gender;
-(id) initWithName :(NSString*) name andAge:(int) age andPhone:(NSString*) phone andEmail:(NSString*) email andAddress:(NSString*) address andGender:(NSString*) gender;
-(void) printFrind;
@end

NS_ASSUME_NONNULL_END
