//
// Created by Peyman Mortazavi on 6/23/15.
// Copyright (c) 2015 Peyman Mortazavi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <JavaScriptCore/JavaScriptCore.h>

@protocol PGSizeExporting <NSObject, JSExport>

@property (nonatomic) float width;

@property (nonatomic) float height;

+(instancetype)create;

@end


@interface PGSize : NSObject<PGSizeExporting>

@end