//
//  CacularManager.m
//  AddBlockExemple
//
//  Created by Alvin on 16/4/17.
//  Copyright © 2016年 Alvin. All rights reserved.
//

#import "CacularManager.h"

@implementation CacularManager

+ (instancetype)shareManager
{
    static dispatch_once_t pred = 0;
    __strong static CacularManager *_manager;
    dispatch_once(&pred, ^{
        _manager = [[self alloc] init];
    });
    return _manager;
}

- (CacularManager *(^)(NSInteger num))add
{
    return ^CacularManager *(NSInteger num){
        _result += num;
        return self;
    };
}

- (CacularManager *(^)(NSInteger num))subtract
{
    return ^CacularManager *(NSInteger num){
        _result -= num;
        return self;
    };
}

- (CacularManager *(^)(NSInteger num))multiply
{
    return ^CacularManager *(NSInteger num){
        _result *= num;
        return self;
    };
}



@end
