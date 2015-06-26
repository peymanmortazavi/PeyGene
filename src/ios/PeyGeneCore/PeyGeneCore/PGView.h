//
// Created by Peyman Mortazavi on 6/23/15.
// Copyright (c) 2015 Peyman Mortazavi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <JavaScriptCore/JavaScriptCore.h>
#import "PGFrame.h"
#import "PGColor.h"

@protocol PGViewExporting <NSObject, JSExport>

@property (nonatomic) PGFrame* frame;
@property (nonatomic) PGColor* backgroundColor;

+(instancetype)create;

@end


@interface PGView : NSObject<PGViewExporting>

@end