//
//  PGButton.h
//  PeyGeneCore
//
//  Created by Peyman Mortazavi on 7/26/15.
//  Copyright (c) 2015 Peyman Mortazavi. All rights reserved.
//

#import <PeyGeneCore/PeyGeneCore.h>

@protocol PGButtonExporting <PGViewExporting, JSExport>

@property (nonatomic) NSString* text;
@property (nonatomic) PGColor* textColor;

// Actions
@property (nonatomic) JSValue* onClick;

+(instancetype)create;

@end


@interface PGButton : PGView<PGButtonExporting>

@end
