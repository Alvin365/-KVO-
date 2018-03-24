//
//  NSObject+KVO.m
//  AddBlockExemple
//
//  Created by Alvin on 16/4/17.
//  Copyright © 2016年 Alvin. All rights reserved.
//

#import "NSObject+KVO.h"
#import <objc/runtime.h>
@implementation NSObject (KVO)

- (void)al_addObserKeyPath:(NSString *)keyPath options:(NSKeyValueObservingOptions)options changedBlock:(void(^)(id newValue))handle
{
    if (!self.keyPathBlocks) {
        self.keyPathBlocks = [NSMutableDictionary dictionary];
    }
    [self.keyPathBlocks setObject:handle forKey:keyPath];
    [self addObserver:self forKeyPath:keyPath options:options context:nil];
}

- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSString *,id> *)change context:(void *)context
{
    void (^block)(id newValue) = [self.keyPathBlocks objectForKey:keyPath];
    if (block) {
        block(change[@"new"]);
    }
}

- (void)al_unObserKeyPath:(NSString *)keyPath
{
    [self removeObserver:self forKeyPath:keyPath];
    [self.keyPathBlocks removeObjectForKey:keyPath];
}

- (NSMutableDictionary *)keyPathBlocks
{
   return objc_getAssociatedObject(self, "keyPathBlocks");
}

- (void)setKeyPathBlocks:(NSMutableDictionary *)keyPathBlocks
{
    objc_setAssociatedObject(self, "keyPathBlocks", keyPathBlocks, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

@end
