//
// Created by Peyman Mortazavi on 6/23/15.
// Copyright (c) 2015 Peyman Mortazavi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <JavaScriptCore/JavaScriptCore.h>
#import "PGFrame.h"
#import "PGColor.h"
#import "PGViewRenderer.h"
#import "PGDefines.h"
#import "PGControlTargetActionPair.h"

@class PGView;

@protocol PGViewExporting <NSObject, JSExport>

@property (nonatomic) PGFrame* frame;
@property (nonatomic) PGColor* backgroundColor;
@property (nonatomic) NSMutableSet* subviews;

+(instancetype)create;

-(void)addSubview:(PGView*)view;

@end

@interface PGView : NSObject<PGViewExporting>

-(void)addTarget:(id)target selector:(SEL)selector forControlEvents:(PGControlEvents)event;

@end