//
//  PGPage.h
//  PeyGeneCore
//
//  Created by Peyman Mortazavi on 7/29/15.
//  Copyright (c) 2015 Peyman Mortazavi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <JavaScriptCore/JavaScriptCore.h>
#import <UIKit/UIKit.h>
#import "PGView.h"

@protocol PGPageExporting <NSObject, JSExport>

@property (nonatomic, readonly) PGView* view;

+(instancetype)create;

@end



@interface PGPage : NSObject<PGPageExporting>

@property (readonly, nonatomic) UIViewController* nativeViewController;

-(instancetype)initWithViewController:(UIViewController*)viewController;

@end
