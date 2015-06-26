//
// Created by Peyman Mortazavi on 6/23/15.
// Copyright (c) 2015 Peyman Mortazavi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <JavaScriptCore/JavaScriptCore.h>

#import "PGPoint.h"
#import "PGSize.h"

@protocol PGFrameExporting <NSObject, JSExport>

@property (nonatomic) float width;
@property (nonatomic) float height;
@property (nonatomic) float x;
@property (nonatomic) float y;

@property (nonatomic) PGPoint * location;
@property (nonatomic) PGSize * size;

+(instancetype)createWithX:(float)x y:(float)y width:(float)w height:(float)h;

@end

@interface PGFrame : NSObject<PGFrameExporting>

@end