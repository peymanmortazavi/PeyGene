//
// Created by Peyman Mortazavi on 6/23/15.
// Copyright (c) 2015 Peyman Mortazavi. All rights reserved.
//

#import "PGFrame.h"

@implementation PGFrame

+(instancetype)create {
    return [[PGFrame alloc] init];
}

+(instancetype)fromNativeFrame:(CGRect)rect {
    PGFrame* frame = [[PGFrame alloc] init];
    frame.width = rect.size.width;
    frame.height = rect.size.height;
    frame.x = rect.origin.x;
    frame.y = rect.origin.y;
    return frame;
}

-(instancetype)init {
    if(self = [super init]) {
        self.location = [[PGPoint alloc] init];
        self.size = [[PGSize alloc] init];
    }
    return self;
}

@synthesize location;
@synthesize size;

-(float)x {
    return self.location.x;
}

-(void)setX:(float)x {
    self.location.x = x;
}

-(float)y {
    return self.location.y;
}

-(void)setY:(float)y {
    self.location.y = y;
}

-(float)width {
    return self.size.width;
}

-(void)setWidth:(float)width {
    self.size.width = width;
}

-(float)height {
    return self.size.height;
}

-(void)setHeight:(float)height {
    self.size.height = height;
}

-(CGRect)toNativeFrame {
    return CGRectMake(self.x, self.y, self.width, self.height);
}

@end