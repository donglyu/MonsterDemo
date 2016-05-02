//
//  UIGestureRecognizer+Block.m
//  MonsterDemo
//
//  Created by donglyu on 16/4/11.
//  Copyright © 2016年 lydsnm. All rights reserved.
//

#import "UIGestureRecognizer+Block.h"
#import "objc/runtime.h"

static const int target_key;
@implementation UIGestureRecognizer (Block)

+(instancetype)nvm_gestureRecognizerWithActionBlock:(DDGestureBlock)block {
    return [[self alloc]initWithActionBlock:block];
}

- (instancetype)initWithActionBlock:(DDGestureBlock)block {
    self = [self init];
    [self addActionBlock:block];
    [self addTarget:self action:@selector(invoke:)];
    return self;
}

- (void)addActionBlock:(DDGestureBlock)block {
    if (block) {
        objc_setAssociatedObject(self, &target_key, block, OBJC_ASSOCIATION_COPY_NONATOMIC);
    }
}

- (void)invoke:(id)sender {
    DDGestureBlock block = objc_getAssociatedObject(self, &target_key);
    if (block) {
        block(sender);
    }
}

@end