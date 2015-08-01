//
//  PGLabel.m
//  PeyGeneCore
//
//  Created by Peyman Mortazavi on 7/28/15.
//  Copyright (c) 2015 Peyman Mortazavi. All rights reserved.
//

#import "PGLabel.h"

@interface PGLabel(){
    UILabel* _nativeLabel;
}
@end

@implementation PGLabel

+(instancetype)create {
    return [[PGLabel alloc] init];
}

-(instancetype)init {
    _nativeLabel = [[UILabel alloc] init];
    if(self = [super initWithNativeView:_nativeLabel]) {
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
