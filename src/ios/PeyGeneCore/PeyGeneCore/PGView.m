//
// Created by Peyman Mortazavi on 6/23/15.
// Copyright (c) 2015 Peyman Mortazavi. All rights reserved.
//

#import <PeyGeneCore/PeyGeneCore.h>
#import "PGView.h"


@implementation PGView

@synthesize style = _style;

+(instancetype)create {
    return [[PGView alloc] init];
}

-(instancetype)initWithNativeView:(UIView *)view {
    if(self = [super init]) {
        _nativeView = view;
        self.backgroundColor = [PGColor fromNativeColor:self.nativeView.backgroundColor];
        self.layoutParameters = [PGFrame fromNativeFrame:self.nativeView.frame];
        _style = [[PGLayer alloc] initWithNativeLayer:self.nativeView.layer];
    }
    return self;
}

-(instancetype)init {
    return [self initWithNativeView:[[UIView alloc] init]];
}


@synthesize nativeView = _nativeView;
-(UIView*)nativeView {
    return _nativeView;
}
-(void)setNativeView:(UIView *)nativeView {
    if(_nativeView != nil) {
        [_nativeView removeFromSuperview];
    }
    _nativeView = nativeView;
    [self syncNativeView];
    [super addSubview:_nativeView];
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
@synthesize layoutParameters = _layoutParameters;
-(PGFrame *)layoutParameters {
    return _layoutParameters;
}
-(void)setLayoutParameters:(PGFrame *)layoutParameters {
    _layoutParameters = layoutParameters;
    self.nativeView.frame = [layoutParameters toNativeFrame];
}

-(void)syncNativeView {
    self.nativeView.backgroundColor = [self.backgroundColor toNativeColor];
    self.nativeView.frame = [self.layoutParameters toNativeFrame];
    _style = [[PGLayer alloc] initWithNativeLayer:self.nativeView.layer];
}

-(void)addSubview:(PGView *)view {
    [self.nativeView addSubview:view.nativeView];
}

-(void)dealloc {
    NSLog(@"dealloc");
}

@end