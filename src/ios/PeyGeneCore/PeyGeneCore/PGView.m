//
// Created by Peyman Mortazavi on 6/23/15.
// Copyright (c) 2015 Peyman Mortazavi. All rights reserved.
//

#import "PGView.h"

@interface PGView()

@property NSMutableDictionary* eventTargets;

@end

@implementation PGView

@synthesize frame;
@synthesize backgroundColor;
@synthesize subviews;

+(instancetype)create {
    return [[PGView alloc] init];
}

-(instancetype)init {
    
    if(self = [super init]) {
        [self addObserver:self forKeyPath:@"frame" options:NSKeyValueObservingOptionNew context:nil];
        [self addObserver:self forKeyPath:@"backgroundColor" options:NSKeyValueObservingOptionNew context:nil];
        
        self.frame = [[PGFrame alloc] init];
        self.backgroundColor = [[PGColor alloc] initFromR:255 g:255 b:255 a:255];
        
        self.subviews = [[NSMutableSet alloc] initWithObjects:nil];
        self.eventTargets = [[NSMutableDictionary alloc] initWithObjects:nil forKeys:nil];
    }
    return self;
}

-(void)addSubview:(PGView *)view {
    [self.subviews addObject:view];
    [self fireEvent:PGControlEventSubviewAdded withObject:view];
}

-(NSMutableArray*)mutableArrayOfTargetActionPairsForControlEvent:(PGControlEvents)event{
    NSMutableArray* targetActionPairSet = [self.eventTargets objectForKey:[NSNumber numberWithInt: event]];
    if(targetActionPairSet == nil){
        targetActionPairSet = [[NSMutableArray alloc] init];
        [self.eventTargets setObject:targetActionPairSet forKey:[NSNumber numberWithInt:event]];
    }
    return targetActionPairSet;
}

-(void)fireEvent:(PGControlEvents)event withObject:(NSObject*)object1  {

    NSMutableArray * targetActionPairArray = [self mutableArrayOfTargetActionPairsForControlEvent:event];
    for(PGControlTargetActionPair * pair in targetActionPairArray){
        [pair.target performSelector:pair.action withObject:object1];
    }
}

-(void)addTarget:(id)target selector:(SEL)selector forControlEvents:(PGControlEvents)event {

    PGControlTargetActionPair * targetActionPair = [[PGControlTargetActionPair alloc]init];
    targetActionPair.action = selector;
    targetActionPair.target = target;

    NSMutableArray * targetActionPairArray = [self mutableArrayOfTargetActionPairsForControlEvent:event];
    [targetActionPairArray addObject:targetActionPair];

}

-(void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context {
    [self fireEvent:PGControlEventPropertyChanges withObject:keyPath];
}

-(void)dealloc {
    [self removeObserver:self forKeyPath:@"frame"];
    [self removeObserver:self forKeyPath:@"backgroundColor"];
}

@end