//
// Created by Peyman Mortazavi on 6/23/15.
// Copyright (c) 2015 Peyman Mortazavi. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <JavaScriptCore/JavaScriptCore.h>
#import "PGColor.h"

@protocol PGViewExporting <NSObject, JSExport>

+(instancetype)new;

@property (nonatomic) PGColor* backgroundColor;

@end



@interface PGView : UIView<PGViewExporting>

@end