//
//  PGViewRenderer.h
//  PeyGeneCore
//
//  Created by Peyman Mortazavi on 6/25/15.
//  Copyright (c) 2015 Peyman Mortazavi. All rights reserved.
//

#import <Foundation/Foundation.h>

@class PGView;

@interface PGViewRenderer : NSObject

@property (nonatomic) PGView* viewModel;
@property (nonatomic) UIView* nativeView;

-(instancetype)initWithModel:(PGView*)pgView;

@end
