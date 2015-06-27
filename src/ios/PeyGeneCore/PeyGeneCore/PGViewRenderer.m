//
//  PGViewRenderer.m
//  PeyGeneCore
//
//  Created by Peyman Mortazavi on 6/25/15.
//  Copyright (c) 2015 Peyman Mortazavi. All rights reserved.
//

#import <PeyGeneCore/PeyGeneCore.h>
#import "PGViewRenderer.h"
#import <UIKit/UIKit.h>

@implementation PGViewRenderer

-(instancetype)initWithModel:(PGView*)pgView {
    if(self = [super init]){
        self.nativeView = [[UIView alloc] init];
        self.viewModel = pgView;
        [self.viewModel addTarget:self selector:@selector(propertyChanged:)];
    }
    return self;
}

-(void)propertyChanged:(NSString*)key {
    
    if([key isEqualToString:@"frame"]) {
        self.nativeView.frame = [self.viewModel.frame toNativeFrame];
    }
    if([key isEqualToString:@"backgroundColor"]) {
        self.nativeView.backgroundColor = [self.viewModel.backgroundColor toNativeColor];
    }
}

@end
