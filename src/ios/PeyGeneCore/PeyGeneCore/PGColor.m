//
//  PGColor.m
//  PeyGeneCore
//
//  Created by Peyman Mortazavi on 6/25/15.
//  Copyright (c) 2015 Peyman Mortazavi. All rights reserved.
//

#import "PGColor.h"

@implementation PGColor

@synthesize red;
@synthesize green;
@synthesize blue;
@synthesize alpha;

+(instancetype)fromR:(float)red g:(float)green b:(float)blue a:(float)alpha {
    return [[PGColor alloc] initFromR:red g:green b:blue a:alpha];
}

+(instancetype)fromNativeColor:(UIColor *)nativeColor {
    CGFloat r, g, b, a;
    [nativeColor getRed:&r green:&g blue:&b alpha:&a];
    return [[PGColor alloc] initFromR:r*255.0f g:g*255.0f b:b*255.0f a:a*255.0f];
}

-(instancetype)initFromR:(float)red g:(float)green b:(float)blue a:(float)alpha {
    if(self = [super init]){
        self.red = red;
        self.green = green;
        self.blue = blue;
        self.alpha = alpha;
    }
    return self;
}

-(UIColor*)toNativeColor {
    return [UIColor colorWithRed:self.red/255.0f green:self.green/255.0f blue:self.blue/255.0f alpha:self.alpha/255.0f];
}

@end