//
// Created by Peyman Mortazavi on 6/23/15.
// Copyright (c) 2015 Peyman Mortazavi. All rights reserved.
//

#import <PeyGeneCore/PeyGeneCore.h>
#import "PGView.h"


@implementation PGView

+(instancetype)create {
    return [[PGView alloc] initWithNativeView:[[UIView alloc] init]];
}

UIView* _nativeView;
-(UIView*)nativeView {
    return _nativeView;
}
-(void)setNativeView:(UIView *)nativeView {
    _nativeView = nativeView;
    [self syncNativeView];
}

PGColor* _backgroundColor;
-(PGColor*)backgroundColor {
    return _backgroundColor;
}
-(void)setBackgroundColor:(PGColor *)backgroundColor {
    _backgroundColor = backgroundColor;
    self.nativeView.backgroundColor = [backgroundColor toNativeColor];
}

PGFrame* _layoutParameters;
-(PGFrame *)layoutParameters {
    return _layoutParameters;
}
-(void)setLayoutParameters:(PGFrame *)layoutParameters {
    _layoutParameters = layoutParameters;
    self.nativeView.frame = [layoutParameters toNativeFrame];
}

-(instancetype)initWithNativeView:(UIView *)view {
    if(self = [self init]) {
        self.nativeView = view;
        self.backgroundColor = [PGColor fromNativeColor:self.nativeView.backgroundColor];
        self.layoutParameters = [PGFrame fromNativeFrame:self.nativeView.frame];
    }
    return self;
}

-(void)syncNativeView {
    self.nativeView.backgroundColor = [self.backgroundColor toNativeColor];
    self.nativeView.frame = [self.layoutParameters toNativeFrame];
}

-(void)addSubview:(PGView *)view {
    [self.nativeView addSubview:view.nativeView];
}

@end