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

@synthesize viewModel;

+(instancetype)create {
    return [PGPage new];
}

-(instancetype)init {
    if(self = [super init]) {
        self.viewModel = [PGView new];
        viewRenderer = [[PGViewRenderer alloc] initWithModel:self.viewModel];
    }
    return self;
}

-(void)loadView {
    self.view = viewRenderer.nativeView;
}

@end
