//
//  PGColor.h
//  PeyGeneCore
//
//  Created by Peyman Mortazavi on 6/25/15.
//  Copyright (c) 2015 Peyman Mortazavi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <JavaScriptCore/JavaScriptCore.h>
#import <UIKit/UIKit.h>

@protocol PGColorExporting <NSObject, JSExport>

+(instancetype)fromR:(float)red g:(float)green b:(float)blue a:(float)a;

@property (nonatomic) float red;
@property (nonatomic) float green;
@property (nonatomic) float blue;
@property (nonatomic) float alpha;

@end

@interface PGColor : NSObject<PGColorExporting>

+(instancetype)fromNativeColor:(UIColor*)nativeColor;

-(UIColor*)toNativeColor;

-(instancetype)initFromR:(float)red g:(float)green b:(float)blue a:(float)a;

@end