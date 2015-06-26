//
// Created by Peyman Mortazavi on 6/23/15.
// Copyright (c) 2015 Peyman Mortazavi. All rights reserved.
//

#import "PGView.h"


@implementation PGView

@synthesize frame;
@synthesize backgroundColor;

+(instancetype)create {
    return [[PGView alloc] init];
}

-(instancetype)init {
    
    if(self = [super init]) {
        
    }
    return self;
}

@end