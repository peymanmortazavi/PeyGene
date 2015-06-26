//
//  PGViewRenderer.m
//  PeyGeneCore
//
//  Created by Peyman Mortazavi on 6/25/15.
//  Copyright (c) 2015 Peyman Mortazavi. All rights reserved.
//

#import <PeyGeneCore/PeyGeneCore.h>
#import "PGViewRenderer.h"

@implementation PGViewRenderer

-(instancetype)initWithModel:(PGView*)pgView {
    if(self = [super init]){
        self.nativeView = [[UIView alloc] init];
        self.viewModel = pgView;
        
        [self addObserver:self forKeyPath:@"viewModel.frame" options:NSKeyValueObservingOptionNew context:nil];
        [self addObserver:self forKeyPath:@"viewModel.backgroundColor" options:NSKeyValueObservingOptionNew context:nil];
    }
    return self;
}

-(void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context{
    if([keyPath isEqualToString:@"viewModel.backgroundColor"]) {
        self.nativeView.backgroundColor = [self.viewModel.backgroundColor toNativeColor];
    }
}

-(void)dealloc{
    [self removeObserver:self forKeyPath:@"viewModel.frame"];
    [self removeObserver:self forKeyPath:@"viewModel.backgroundColor"];
}

@end
