//
//  PGJavaScriptInterpreter.h
//  PeyGeneRunner
//
//  Created by Peyman Mortazavi on 6/21/15.
//  Copyright (c) 2015 Peyman Mortazavi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <JavaScriptCore/JavaScriptCore.h>
#import "EnvironmentInfo.h"
#import "PGLogging.h"

@interface PGJavaScriptInterpreter : NSObject

@property (nonatomic) JSVirtualMachine* virtualMachine;
@property (nonatomic) JSContext* mainContext;
@property (nonatomic) EnvironmentInfo* environmentInfo;
@property (weak) id<PGLogging> logger;

-(instancetype)initWithEnvironmentInfo:(EnvironmentInfo*)envInfo;

+(instancetype)withEnvironmentInfo:(EnvironmentInfo*)envInfo;

@end
