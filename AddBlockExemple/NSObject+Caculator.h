//
//  NSObject+Caculator.h
//  AddBlockExemple
//
//  Created by Alvin on 16/4/17.
//  Copyright © 2016年 Alvin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CacularManager.h"
@interface NSObject (Caculator)

+ (NSInteger)makeCaculate:(void (^)(CacularManager *make))block;

@end
