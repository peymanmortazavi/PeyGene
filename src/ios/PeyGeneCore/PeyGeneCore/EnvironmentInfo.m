//
//  EnvironmentInfo.m
//  PeyGeneRunner
//
//  Created by Peyman Mortazavi on 6/21/15.
//  Copyright (c) 2015 Peyman Mortazavi. All rights reserved.
//

#import "EnvironmentInfo.h"

@implementation EnvironmentInfo

-(instancetype)initWithLayoutEngineInfo:(LayoutEngineInfo*)layoutInfo operatingSystemName:(NSString*)os {
    
    self = [super init];
    
    if(self){
        self.os = os;
        self.layoutEngineInfo = layoutInfo;
    }
    
    return self;
}

+(instancetype)withLayoutEngineInfo:(LayoutEngineInfo*)layoutInfo operatingSystemName:(NSString*)os
{
    return [[EnvironmentInfo alloc]initWithLayoutEngineInfo:layoutInfo operatingSystemName:os];
}

@end
