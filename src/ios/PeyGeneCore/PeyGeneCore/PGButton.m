//
//  PGButton.m
//  PeyGeneCore
//
//  Created by Peyman Mortazavi on 7/26/15.
//  Copyright (c) 2015 Peyman Mortazavi. All rights reserved.
//

#import "PGButton.h"

@implementation PGButton

UIButton* _nativeButton;

@synthesize onClick;

+(instancetype)create {
    return [[PGButton alloc] init];
}

-(instancetype)init {
    if(self = [super init]) {
        _nativeButton = [[UIButton alloc] init];
        [_nativeButton addTarget:self action:@selector(buttonClicked) forControlEvents:UIControlEventTouchUpInside];
        _textColor = [PGColor fromNativeColor:[_nativeButton currentTitleColor]];
        super.nativeView = _nativeButton;
    }
    return self;
}

-(NSString *)text{
    return [_nativeButton currentTitle];
}
-(void)setText:(NSString *)text {
    [_nativeButton setTitle:text forState:UIControlStateNormal];
}

@synthesize textColor = _textColor;
-(void)setTextColor:(PGColor *)textColor {
    [_nativeButton setTitleColor:[textColor toNativeColor] forState:UIControlStateNormal];
    _textColor = textColor;
}

-(void)buttonClicked {
    if (onClick != nil) {
        [onClick callWithArguments:[NSArray arrayWithObject:self]];
    }
}

@end