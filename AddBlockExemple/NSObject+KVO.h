//
//  NSObject+KVO.h
//  AddBlockExemple
//
//  Created by Alvin on 16/4/17.
//  Copyright © 2016年 Alvin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (KVO)

@property (nonatomic, strong) NSMutableDictionary *keyPathBlocks;

- (void)al_addObserKeyPath:(NSString *)keyPath options:(NSKeyValueObservingOptions)options changedBlock:(void(^)(id newValue))handle;


- (void)al_unObserKeyPath:(NSString *)keyPath;

@end
