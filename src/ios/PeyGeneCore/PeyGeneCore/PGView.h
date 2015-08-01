//
// Created by Peyman Mortazavi on 6/23/15.
// Copyright (c) 2015 Peyman Mortazavi. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <JavaScriptCore/JavaScriptCore.h>
#import "PGColor.h"
#import "PGFrame.h"
#import "PGLayer.h"

@class PGView;

@protocol PGViewExporting <NSObject, JSExport>

+(instancetype)create;

@property (nonatomic) PGColor* backgroundColor;
@property (nonatomic) PGFrame* layoutParameters;
@property (readonly, nonatomic) PGLayer* style;

-(void)addSubview:(PGView*)view;

@end


@interface PGView : UIView<PGViewExporting>

@property (nonatomic) UIView* nativeView;

-(instancetype)initWithNativeView:(UIView*)view;

@end