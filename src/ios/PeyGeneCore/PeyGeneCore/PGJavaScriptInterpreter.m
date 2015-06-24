//
//  PGJavaScriptInterpreter.m
//  PeyGeneRunner
//
//  Created by Peyman Mortazavi on 6/21/15.
//  Copyright (c) 2015 Peyman Mortazavi. All rights reserved.
//

#import "PGJavaScriptInterpreter.h"
#import "PGFrame.h"

@implementation PGJavaScriptInterpreter

+(instancetype)withEnvironmentInfo:(EnvironmentInfo*)envInfo {
    
    return [[PGJavaScriptInterpreter alloc]initWithEnvironmentInfo:envInfo];
    
}

-(instancetype)initWithEnvironmentInfo:(EnvironmentInfo*)envInfo {
    
    self = [super init];
    
    if(self) {
        
        self.mainContext=[[JSContext alloc]init];
        self.environmentInfo = envInfo;
        [self setup];
    }

    return self;
}

-(void)setup {

    // Register core classes.
    self.mainContext[@"PGView"] = [PGFrame class];

    // Register common functions.
    self.mainContext[@"console"] = [[NSMutableDictionary alloc]initWithCapacity:1];
    self.mainContext[@"console"][@"log"] = ^(NSString* text) {
        NSLog(text);
    };

    // Execute setup.js
    NSBundle* bundle = [NSBundle bundleForClass:[PGJavaScriptInterpreter class]];
    NSURL* url =[[NSBundle bundleForClass:[PGJavaScriptInterpreter class]] URLForResource:@"setup" withExtension:@"js"];
    [self.mainContext evaluateScript:[NSString stringWithContentsOfURL:url encoding:NSUTF8StringEncoding error:nil]];
}

@end
