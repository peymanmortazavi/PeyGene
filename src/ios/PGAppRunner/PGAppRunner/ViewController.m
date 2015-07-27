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
#import <PeyGeneCore/PeyGeneCore.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
}

-(void)viewDidAppear:(BOOL)animated {
    
    LayoutEngineInfo* layoutEngineInfo = [LayoutEngineInfo withVersionName:@"Alpha" version:@0.001];
    
    EnvironmentInfo* environmentInfo = [EnvironmentInfo withLayoutEngineInfo:layoutEngineInfo operatingSystemName:@"iOS 8.4"];
    
    PGJavaScriptInterpreter* runtime = [PGJavaScriptInterpreter withEnvironmentInfo:environmentInfo];
    
    runtime.mainContext[@"app"] = self;
    
    runtime.mainContext[@"loadView"] = ^(PGView* view) {
        NSLog([view.nativeView description]);
        [self.view addSubview:view.nativeView];
    };
    [runtime.mainContext[@"done"] callWithArguments:nil];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
