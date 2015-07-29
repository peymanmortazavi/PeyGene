//
//  PGLabel.m
//  PeyGeneCore
//
//  Created by Peyman Mortazavi on 7/28/15.
//  Copyright (c) 2015 Peyman Mortazavi. All rights reserved.
//

#import "PGLabel.h"

@implementation PGLabel

UILabel* _nativeLabel;

+(instancetype)create {
    return [[PGLabel alloc] init];
}

-(instancetype)init {
    if(self = [super init]) {
        _nativeLabel = [[UILabel alloc] init];
        super.nativeView = _nativeLabel;
    }
    return self;
}

-(NSString *)text {
    return _nativeLabel.text;
}
-(void)setText:(NSString *)text {
    _nativeLabel.text = text;
}

-(PGColor *)textColor {
    return [PGColor fromNativeColor:_nativeLabel.textColor];
}
-(void)setTextColor:(PGColor *)textColor {
    _nativeLabel.textColor = [textColor toNativeColor];
}

@end
