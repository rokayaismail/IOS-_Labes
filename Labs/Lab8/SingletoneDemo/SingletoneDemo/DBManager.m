//
//  DBManager.m
//  SingletoneDemo
//
//  Created by JETS Mobile Lab-11 on 5/2/19.
//  Copyright © 2019 Jets. All rights reserved.
//

#import "DBManager.h"

@implementation DBManager

static int count=0;

- (instancetype)init
{
    self = [super init];
    if (self) {
        count++ ;
    }
    return self;
}
+(DBManager *) sharedInstance{
    static DBManager* dbMgr;
    static dispatch_once_t dispatcher;
    dispatch_once(&dispatcher, ^{
        dbMgr = [[DBManager alloc] init];
        printf("enter\n");
    });
    return dbMgr;
}
+(int)getCount{
    return count;
}
@end
