//
//  PGPage.m
//  PeyGeneCore
//
//  Created by Peyman Mortazavi on 6/25/15.
//  Copyright (c) 2015 Peyman Mortazavi. All rights reserved.
//

#import "PGPage.h"

@implementation PGPage

PGViewRenderer* viewRenderer;

@synthesize rootView;

+(instancetype)create {
    return [[PGPage alloc] init];
}

-(instancetype)init {
    if(self = [super init]) {
        self.rootView = [PGView new];
        viewRenderer = [[PGViewRenderer alloc] initWithModel:self.rootView];
    }
    return self;
}

-(void)loadView {
    self.view = viewRenderer.nativeView;
}

@end
