//
// Created by Peyman Mortazavi on 6/23/15.
// Copyright (c) 2015 Peyman Mortazavi. All rights reserved.
//

#import "PGView.h"

@implementation PGView

@synthesize frame;
@synthesize backgroundColor;

SEL eventSelector;
id eventTarget;

+(instancetype)create {
    return [[PGView alloc] init];
}

-(instancetype)init {
    
    if(self = [super init]) {
        [self addObserver:self forKeyPath:@"frame" options:NSKeyValueObservingOptionNew context:nil];
        [self addObserver:self forKeyPath:@"backgroundColor" options:NSKeyValueObservingOptionNew context:nil];
    }
    return self;
}

-(void)addTarget:(id)target selector:(SEL)selector {
    eventTarget = target;
    eventSelector = selector;
}

-(void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context {
    [eventTarget performSelector:eventSelector withObject:keyPath];
}

-(void)dealloc{
    [self removeObserver:self forKeyPath:@"frame"];
    [self removeObserver:self forKeyPath:@"backgroundColor"];
}

@end