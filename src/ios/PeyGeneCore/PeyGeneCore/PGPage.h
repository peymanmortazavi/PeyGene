//
//  PGPage.h
//  PeyGeneCore
//
//  Created by Peyman Mortazavi on 6/25/15.
//  Copyright (c) 2015 Peyman Mortazavi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <JavaScriptCore/JavaScriptCore.h>
#import <UIKit/UIKit.h>
#import "PGView.h"
#import "PGViewRenderer.h"

@protocol PGPageExporting <NSObject, JSExport>

@property (nonatomic) PGView* rootView;

+(instancetype)create;

@end


@interface PGPage : UIViewController<PGPageExporting>

@end
