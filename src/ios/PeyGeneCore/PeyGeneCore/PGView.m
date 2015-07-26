//
// Created by Peyman Mortazavi on 6/23/15.
// Copyright (c) 2015 Peyman Mortazavi. All rights reserved.
//

#import <PeyGeneCore/PeyGeneCore.h>
#import "PGView.h"

//@interface PGView()
//
//@property NSMutableDictionary* eventTargets;
//
//@end

@implementation PGView

@synthesize backgroundColor;

+(instancetype)create {
    return [[PGView alloc] init];
}

-(instancetype)init {

    if(self = [super init]) {
//        [self addObserver:self forKeyPath:@"frame" options:NSKeyValueObservingOptionNew context:nil];
        [self addObserver:self forKeyPath:@"backgroundColor" options:NSKeyValueObservingOptionNew context:nil];

        self.backgroundColor = [[PGColor alloc] initFromR:255 g:255 b:0 a:255];
        super.backgroundColor = [UIColor blueColor];

        //self.frame = [[PGFrame alloc] init];
        //self.backgroundColor = [[PGColor alloc] initFromR:255 g:255 b:255 a:255];

        //self.subviews = [[NSMutableSet alloc] initWithObjects:nil];
        //self.eventTargets = [[NSMutableDictionary alloc] initWithObjects:nil forKeys:nil];
    }
    return self;
}

-(void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context {
    if([keyPath isEqualToString:@"backgroundColor"]) {
        super.backgroundColor = [self.backgroundColor toNativeColor];
    }
}

-(void)dealloc {
//    [self removeObserver:self forKeyPath:@"frame"];
    [self removeObserver:self forKeyPath:@"backgroundColor"];
}

@end