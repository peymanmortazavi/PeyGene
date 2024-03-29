//
//  PGLayer.m
//  PeyGeneCore
//
//  Created by Peyman Mortazavi on 7/28/15.
//  Copyright (c) 2015 Peyman Mortazavi. All rights reserved.
//

#import "PGLayer.h"

@implementation PGLayer

CALayer* _nativeLayer;

-(instancetype)initWithNativeLayer:(CALayer *)layer {
    if(self = [super init]) {
        _nativeLayer = layer;
        _borderColor = [PGColor fromNativeColor:[UIColor colorWithCGColor:layer.borderColor]];
    }
    return self;
}

-(CGFloat)cornerRadius {
    return _nativeLayer.cornerRadius;
}
-(void)setCornerRadius:(CGFloat)cornerRadius {
    _nativeLayer.cornerRadius = cornerRadius;
}

-(CGFloat)opacity {
    return _nativeLayer.opacity;
}
-(void)setOpacity:(CGFloat)opacity {
    _nativeLayer.opacity = opacity;
}

-(CGFloat)borderWidth {
    return _nativeLayer.borderWidth;
}
-(void)setBorderWidth:(CGFloat)borderWidth {
    _nativeLayer.borderWidth = borderWidth;
}

@synthesize borderColor = _borderColor;
-(void)setBorderColor:(PGColor *)borderColor {
    _borderColor = borderColor;
    _nativeLayer.borderColor = [[borderColor toNativeColor] CGColor];
}

@end