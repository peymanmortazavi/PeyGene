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

+(instancetype)create {
    return [[PGButton alloc] init];
}

-(instancetype)init {
    if(self = [super init]) {
        _nativeButton = [UIButton buttonWithType:UIButtonTypeCustom];
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

@end