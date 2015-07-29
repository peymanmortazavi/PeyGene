//
//  PGLayer.h
//  PeyGeneCore
//
//  Created by Peyman Mortazavi on 7/28/15.
//  Copyright (c) 2015 Peyman Mortazavi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <JavaScriptCore/JavaScriptCore.h>
#import <UIKit/UIKit.h>
#import "PGColor.h"

@protocol PGLayerExporting <NSObject, JSExport>

@property (nonatomic) CGFloat cornerRadius;

@property (nonatomic) CGFloat borderWidth;

@property (nonatomic) CGFloat opacity;

@property (nonatomic) PGColor* borderColor;

@end


@interface PGLayer : NSObject<PGLayerExporting>

-(instancetype)initWithNativeLayer:(CALayer*)layer;

@end
