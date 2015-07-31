//
//  PGPage.m
//  PeyGeneCore
//
//  Created by Peyman Mortazavi on 7/29/15.
//  Copyright (c) 2015 Peyman Mortazavi. All rights reserved.
//

#import "PGPage.h"

@implementation PGPage

@synthesize view = _view;

+(instancetype)create {
    return [[PGPage alloc] initWithViewController:[[UIViewController alloc]init]];
}

-(instancetype)initWithViewController:(UIViewController *)viewController {
    if(self = [super init]) {
        _view = [[PGView alloc] initWithNativeView:viewController.view];
        _nativeViewController = viewController;
        NSError *error;
        BOOL result = [[self class] jr_swizzleMethod:@selector(viewWillAppear:) withMethod:@selector(xxx_viewWillAppear) error:&error];
        if (!result || error) {
            NSLog(@"Can't swizzle methods - %@", [error description]);
        }
    }
    return self;
}

@end
