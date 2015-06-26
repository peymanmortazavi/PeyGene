//
//  PGColor.m
//  PeyGeneCore
//
//  Created by Peyman Mortazavi on 6/25/15.
//  Copyright (c) 2015 Peyman Mortazavi. All rights reserved.
//

#import "PGColor.h"

@interface PGColor()

@end

@implementation PGColor

@synthesize red;
@synthesize green;
@synthesize blue;
@synthesize alpha;

+(instancetype)fromR:(float)red g:(float)green b:(float)blue a:(float)alpha {
    return [[PGColor alloc] initFromR:red g:green b:blue a:alpha];
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
    return [UIColor colorWithRed:self.red green:self.green blue:self.blue alpha:self.alpha];
}

@end
