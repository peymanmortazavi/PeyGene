//
//  ViewController.m
//  PGAppRunner
//
//  Created by Peyman Mortazavi on 6/23/15.
//  Copyright (c) 2015 Peyman Mortazavi. All rights reserved.
//


#import "ViewController.h"
#import <PeyGeneCore/PeyGeneCore.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    LayoutEngineInfo* layoutEngineInfo = [LayoutEngineInfo withVersionName:@"Alpha Peyman" version:@0.1];

    EnvironmentInfo* environmentInfo = [EnvironmentInfo withLayoutEngineInfo:layoutEngineInfo operatingSystemName:@"iOS 8.3"];

    PGJavaScriptInterpreter* runtime = [PGJavaScriptInterpreter withEnvironmentInfo:environmentInfo];

    runtime.mainContext[@"app"] = self;

    [runtime.mainContext[@"done"] callWithArguments:nil];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
