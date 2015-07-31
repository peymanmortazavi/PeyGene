//
// Created by Peyman Mortazavi on 6/23/15.
// Copyright (c) 2015 Peyman Mortazavi. All rights reserved.
//

#import <PeyGeneCore/PeyGeneCore.h>
#import "PGView.h"


@implementation PGView

@synthesize layer = _layer;

+(instancetype)create {
    return [[PGView alloc] initWithNativeView:[[UIView alloc] init]];
}

@synthesize nativeView = _nativeView;
-(UIView*)nativeView {
    return _nativeView;
}
-(void)setNativeView:(UIView *)nativeView {
    _nativeView = nativeView;
    [self syncNativeView];
}

// Background Color
@synthesize backgroundColor = _backgroundColor;
-(PGColor*)backgroundColor {
    return _backgroundColor;
}
-(void)setBackgroundColor:(PGColor *)backgroundColor {
    _backgroundColor = backgroundColor;
    self.nativeView.backgroundColor = [backgroundColor toNativeColor];
}

// Frame
@synthesize frame = _layoutParameters;
-(PGFrame *)frame {
    return _layoutParameters;
}
-(void)setFrame:(PGFrame *)layoutParameters {
    _layoutParameters = layoutParameters;
    self.nativeView.frame = [layoutParameters toNativeFrame];
}

-(instancetype)initWithNativeView:(UIView *)view {
    if(self = [super init]) {
        _nativeView = view;
        self.backgroundColor = [PGColor fromNativeColor:self.nativeView.backgroundColor];
        self.frame = [PGFrame fromNativeFrame:self.nativeView.frame];
        _layer = [[PGLayer alloc] initWithNativeLayer:self.nativeView.layer];
    }
    return self;
}

-(void)syncNativeView {
    self.nativeView.backgroundColor = [self.backgroundColor toNativeColor];
    self.nativeView.frame = [self.frame toNativeFrame];
    _layer = [[PGLayer alloc] initWithNativeLayer:self.nativeView.layer];
}

-(void)addSubview:(PGView *)view {
    [self.nativeView addSubview:view.nativeView];
}

@end