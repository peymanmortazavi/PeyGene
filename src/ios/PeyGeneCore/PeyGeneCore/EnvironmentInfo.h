//
//  EnvironmentInfo.h
//  PeyGeneRunner
//
//  Created by Peyman Mortazavi on 6/21/15.
//  Copyright (c) 2015 Peyman Mortazavi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LayoutEngineInfo.h"

@interface EnvironmentInfo : NSObject

@property(nonatomic) NSString* os;

@property(nonatomic) LayoutEngineInfo* layoutEngineInfo;

-(instancetype)initWithLayoutEngineInfo:(LayoutEngineInfo*)layoutInfo operatingSystemName:(NSString*)os;

+(instancetype)withLayoutEngineInfo:(LayoutEngineInfo*)layoutInfo operatingSystemName:(NSString*)os;

@end