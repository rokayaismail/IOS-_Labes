//
//  main.m
//  SingletoneDemo
//
//  Created by JETS Mobile Lab-11 on 5/2/19.
//  Copyright © 2019 Jets. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "DBManager.h"
int main(int argc, const char * argv[]) {
    DBManager * mgr1= [DBManager sharedInstance];
    printf("%d\n",[DBManager getCount]);
    DBManager * mgr2= [DBManager sharedInstance];
    printf("%d\n",[DBManager getCount]);
    DBManager * mgr3= [DBManager sharedInstance];
    printf("%d\n",[DBManager getCount]);
    return 0;
}
