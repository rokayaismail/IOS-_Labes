//
//  DBManager.h
//  SingletoneDemo
//
//  Created by JETS Mobile Lab-11 on 5/2/19.
//  Copyright © 2019 Jets. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface DBManager : NSObject

+(DBManager *) sharedInstance;
+(int)getCount;
@end

NS_ASSUME_NONNULL_END
