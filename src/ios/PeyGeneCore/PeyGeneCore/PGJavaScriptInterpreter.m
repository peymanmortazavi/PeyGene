//
//  PGJavaScriptInterpreter.m
//  PeyGeneRunner
//
//  Created by Peyman Mortazavi on 6/21/15.
//  Copyright (c) 2015 Peyman Mortazavi. All rights reserved.
//

#import <PeyGeneCore/PeyGeneCore.h>
#import <objc/runtime.h>
#import "PGColor.h"
#import "PGSize.h"
#import "PGButton.h"
#import "PGLabel.h"

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

    // Register core classes
    self.mainContext[@"PGColor"] = [PGColor class];
    self.mainContext[@"PGSize"] = [PGSize class];
    self.mainContext[@"PGPoint"] = [PGPoint class];
    self.mainContext[@"PGFrame"] = [PGFrame class];
    
    // Register views.
    self.mainContext[@"PGView"] = [PGView class];
    self.mainContext[@"PGButton"] = [PGButton class];
    self.mainContext[@"PGLabel"] = [PGLabel class];
    
    // Register pages.
    self.mainContext[@"PGPage"] = [PGPage class];

    // Register common functions.
    self.mainContext[@"console"] = [[NSMutableDictionary alloc]initWithCapacity:1];
    self.mainContext[@"console"][@"log"] = ^(JSValue* value) {
//        NSObject* object = [value toObject];
//        
//        NSMutableArray* properties = [self allPropertiesOfClass:[object class]];
//        [properties removeObjectsInArray:[NSArray arrayWithObjects:@"hash", @"superclass", @"description", @"debugDescription", nil]];
//        NSLog([properties description]);
        NSLog([value toString]);
    };

    // Execute setup.js
    NSURL* url =[[NSBundle bundleForClass:[PGJavaScriptInterpreter class]] URLForResource:@"setup" withExtension:@"js"];
    [self.mainContext evaluateScript:[NSString stringWithContentsOfURL:url encoding:NSUTF8StringEncoding error:nil]];
}

-(NSMutableArray*)allPropertiesOfClass:(Class)class {
    unsigned count;
    objc_property_t *properties = class_copyPropertyList(class, &count);
    
    NSMutableArray *rv = [NSMutableArray array];
    
    unsigned i;
    for (i = 0; i < count; i++)
    {
        objc_property_t property = properties[i];
        NSString *name = [NSString stringWithUTF8String:property_getName(property)];
        [rv addObject:name];
    }
    
    free(properties);
    return rv;
}

-(void)dealloc {
    NSLog(@"runtime deallocated");
}

@end
