//
//  PGLabel.h
//  PeyGeneCore
//
//  Created by Peyman Mortazavi on 7/28/15.
//  Copyright (c) 2015 Peyman Mortazavi. All rights reserved.
//

#import <PeyGeneCore/PeyGeneCore.h>
#import <UIKit/UIKit.h>

@protocol PGLabelExporting <NSObject, JSExport>

@property (nonatomic) NSString* text;
@property (nonatomic) PGColor* textColor;

+(instancetype)create;

@end



@interface PGLabel : PGView<PGLabelExporting>

@end
