//
// Created by Peyman Mortazavi on 6/23/15.
// Copyright (c) 2015 Peyman Mortazavi. All rights reserved.
//

#import <PeyGeneCore/PeyGeneCore.h>
#import "PGView.h"

//@interface PGView()

//@property NSMutableDictionary* eventTargets;

//@end

@implementation PGView

@synthesize backgroundColor;
@synthesize layoutParameters;

+(instancetype)create {
    return [[PGView alloc] init];
}

-(instancetype)init {

    if(self = [super init]) {
        
        [self addObserver:self forKeyPath:@"backgroundColor" options:NSKeyValueObservingOptionNew context:nil];
        [self addObserver:self forKeyPath:@"layoutParameters" options:NSKeyValueObservingOptionNew context:nil];

        self.backgroundColor = [PGColor fromNativeColor:super.backgroundColor];
        self.layoutParameters = [PGFrame fromNativeFrame:super.frame];
    }
    return self;
}

-(void)addSubview:(PGView *)view {
    [super addSubview:view];
}

-(void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context {
    if([keyPath isEqualToString:@"backgroundColor"]) {
        super.backgroundColor = [self.backgroundColor toNativeColor];
    } else if ([keyPath isEqualToString:@"layoutParameters"]) {
        super.frame = [self.layoutParameters toNativeFrame];
    }
}

-(void)dealloc {
    [self removeObserver:self forKeyPath:@"backgroundColor"];
    [self removeObserver:self forKeyPath:@"layoutParameters"];
}

@end