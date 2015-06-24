//
//  LayoutEngineInfo.h
//  PeyGeneRunner
//
//  Created by Peyman Mortazavi on 6/21/15.
//  Copyright (c) 2015 Peyman Mortazavi. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LayoutEngineInfo : NSObject

@property (nonatomic) NSString* VersionName;

@property (nonatomic) NSNumber* Version;

-(instancetype)initWithVersionName:(NSString*)versionName version:(NSNumber*)version;

+(instancetype)withVersionName:(NSString*)versionName version:(NSNumber*)version;

@end
