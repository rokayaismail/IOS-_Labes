//
//  Frind.m
//  FrindUsingNSCoding
//
//  Created by JETS Mobile Lab-11 on 5/2/19.
//  Copyright © 2019 Jets. All rights reserved.
//

#import "Frind.h"

@implementation Frind
-(id) initWithName :(NSString*) name andAge:(NSInteger) age andPhone:(NSString*) phone{
    self = [super init];
    _name=name;
    _age=age;
    _phone=phone;
    return self;
}
- (void)encodeWithCoder:(NSCoder *)coder
{
    
    [coder encodeObject:_name forKey:@"name"];
    [coder encodeInteger:_age forKey:@"age"];
    [coder encodeObject:_phone forKey:@"phone"];
}
- (instancetype)initWithCoder:(NSCoder *)aDecoder{
    self.name = [aDecoder decodeObjectForKey:@"name"];
    self.age = [aDecoder decodeIntegerForKey:@"age"];
    self.phone = [aDecoder decodeObjectForKey:@"phone"];
    
    return self;
}
@end
