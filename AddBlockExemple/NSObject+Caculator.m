//
//  NSObject+Caculator.m
//  AddBlockExemple
//
//  Created by Alvin on 16/4/17.
//  Copyright © 2016年 Alvin. All rights reserved.
//

#import "NSObject+Caculator.h"

@implementation NSObject (Caculator)

+ (NSInteger)makeCaculate:(void (^)(CacularManager *make))block
{
    CacularManager *c = [[CacularManager alloc]init];
    block(c);
    return c.result;
}

@end
