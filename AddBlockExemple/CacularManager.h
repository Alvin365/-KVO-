//
//  CacularManager.h
//  AddBlockExemple
//
//  Created by Alvin on 16/4/17.
//  Copyright © 2016年 Alvin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CacularManager : NSObject

@property (nonatomic, assign) NSInteger result;

+ (instancetype)shareManager;
- (CacularManager *(^)(NSInteger num))add;
- (CacularManager *(^)(NSInteger num))subtract;
- (CacularManager *(^)(NSInteger num))multiply;


@end
