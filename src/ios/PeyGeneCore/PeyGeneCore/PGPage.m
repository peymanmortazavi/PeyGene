//
//  PGPage.m
//  PeyGeneCore
//
//  Created by Peyman Mortazavi on 7/29/15.
//  Copyright (c) 2015 Peyman Mortazavi. All rights reserved.
//

#import "PGPage.h"

@implementation PGPage

@synthesize content = _content;

+(instancetype)create {
    return [[PGPage alloc] initWithViewController:[[UIViewController alloc]init]];
}

-(instancetype)initWithViewController:(UIViewController *)viewController {
    if(self = [super init]) {
        _content = [[PGView alloc] init];
    }
    return self;
}

-(void)loadView {
    self.view = _content.nativeView;
}

@end
