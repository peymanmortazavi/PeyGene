//
// Created by Peyman Mortazavi on 6/23/15.
// Copyright (c) 2015 Peyman Mortazavi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <JavaScriptCore/JavaScriptCore.h>

@protocol PGPointExporting <NSObject, JSExport>

@property (nonatomic) float x;

@property (nonatomic) float y;

+(instancetype)create;

@end


@interface PGPoint : NSObject<PGPointExporting>


@end