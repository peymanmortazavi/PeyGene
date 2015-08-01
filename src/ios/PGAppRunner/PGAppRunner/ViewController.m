//
//  ViewController.m
//  PGAppRunner
//
//  Created by Peyman Mortazavi on 6/23/15.
//  Copyright (c) 2015 Peyman Mortazavi. All rights reserved.
//
//  This program is free software: you can redistribute it and/or modify
//  it under the terms of the GNU General Public License as published by
//  the Free Software Foundation, either version 3 of the License, or
//  (at your option) any later version.
//
//  This program is distributed in the hope that it will be useful,
//  but WITHOUT ANY WARRANTY; without even the implied warranty of
//  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
//  GNU General Public License for more details.
//
//  You should have received a copy of the GNU General Public License
//  along with this program.  If not, see <http://www.gnu.org/licenses/>
//


#import "ViewController.h"
#import <PeyGeneCore/PGPage.h>

@interface ViewController (){
    PGJavaScriptInterpreter* runtime;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
}

-(void)viewDidAppear:(BOOL)animated {
    
    LayoutEngineInfo* layoutEngineInfo = [LayoutEngineInfo withVersionName:@"Alpha" version:@0.001];
    
    EnvironmentInfo* environmentInfo = [EnvironmentInfo withLayoutEngineInfo:layoutEngineInfo operatingSystemName:@"iOS 8.4"];
    
    runtime = [PGJavaScriptInterpreter withEnvironmentInfo:environmentInfo];
    
    // Execute setup.js
    NSURL* url = [[NSBundle mainBundle] URLForResource:@"app" withExtension:@"js"];
    //[[NSBundle bundleForClass:[PGJavaScriptInterpreter class]] URLForResource:@"setup" withExtension:@"js"];
    
    runtime.mainContext[@"app"] = self;
    
//    runtime.mainContext[@"loadView"] = ^(PGView* view) {
//        [self.view addSubview:view.nativeView];
//    };
    
    [runtime.mainContext evaluateScript:[NSString stringWithContentsOfURL:url encoding:NSUTF8StringEncoding error:nil]];

    JSValue* value = [runtime.mainContext[@"main"] callWithArguments:nil];
    PGPage* page = [value toObjectOfClass:[PGPage class]];
    NSLog(page == nil ? @"Page is null" : @"Page is good");
    [self presentViewController:page animated:false completion:nil];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
