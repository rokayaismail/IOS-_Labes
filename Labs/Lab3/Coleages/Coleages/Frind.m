//
//  Frind.m
//  frindDemo
//
//  Created by JETS Mobile Lab-11 on 4/13/19.
//  Copyright © 2019 Jets. All rights reserved.
//

#import "Frind.h"
@implementation Frind
static int l=0;
-(id) initWithName :(NSString*) name andAge:(int) age andPhone:(NSString*) phone andEmail:(NSString*) email andAddress:(NSString*) address andGender:(NSString*) gender{
    self = [super init];
    _fID = ++l;
    _name=name;
    _age=age;
    _phone=phone;
    _email=email;
    _address =address;
    _gender = gender;
    return self;
}

-(void)printFrind{
    NSLog(@"frind id: %d frind name: %@ frind age: %d frind phone: %@ frind email: %@\n",_fID,_name,_age,_phone,_email);
}
@end
