//
//  LayoutEngineInfo.m
//  PeyGeneRunner
//
//  Created by Peyman Mortazavi on 6/21/15.
//  Copyright (c) 2015 Peyman Mortazavi. All rights reserved.
//

#import "LayoutEngineInfo.h"

@implementation LayoutEngineInfo

-(instancetype)initWithVersionName:(NSString*)versionName version:(NSNumber*)version
{
    self = [super init];
    
    if(self) {
        self.VersionName = versionName;
        self.Version = version;
    }

    return self;
}

+(instancetype)withVersionName:(NSString*)versionName version:(NSNumber*)version {
    
    return [[LayoutEngineInfo alloc] initWithVersionName:versionName version:version];
    
}

@end
