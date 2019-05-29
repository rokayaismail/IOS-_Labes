//
//  Frind.h
//  FrindUsingNSCoding
//
//  Created by JETS Mobile Lab-11 on 5/2/19.
//  Copyright © 2019 Jets. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Frind : NSObject <NSCoding>
@property NSInteger age;
@property NSString *name;
@property NSString *phone;
-(id) initWithName :(NSString*) name andAge:(NSInteger) age andPhone:(NSString*) phone;
@end

NS_ASSUME_NONNULL_END
