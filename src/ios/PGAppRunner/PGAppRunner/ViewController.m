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
    [self addObserver:self forKeyPath:@"dummy" options:NSKeyValueObservingOptionNew|NSKeyValueObservingOptionOld|NSKeyValueObservingOptionInitial context:nil];
    
}

-(void)viewDidAppear:(BOOL)animated {
    
    LayoutEngineInfo* layoutEngineInfo = [LayoutEngineInfo withVersionName:@"Alpha Peyman" version:@0.1];
    
    EnvironmentInfo* environmentInfo = [EnvironmentInfo withLayoutEngineInfo:layoutEngineInfo operatingSystemName:@"iOS 8.3"];
    
    PGJavaScriptInterpreter* runtime = [PGJavaScriptInterpreter withEnvironmentInfo:environmentInfo];
    
    runtime.mainContext[@"app"] = self;
    
    runtime.mainContext[@"present"] = ^(PGPage* page) {
        [self presentViewController:page animated:YES completion:nil];
    };
    [runtime.mainContext[@"done"] callWithArguments:nil];
//    
//    self.dummy = [PGFrame createWithX:10 y:20 width:30 height:40];
//    [self.dummy addObserver:self forKeyPath:@"location" options:NSKeyValueObservingOptionNew context:nil];
//    
//    self.dummy.x = 52;
//    self.dummy2 = 1;
//    
//    [self.dummy removeObserver:self forKeyPath:@"location"];
////    [runtime.mainContext[@"done"] callWithArguments:nil];
    
}

+(BOOL)automaticallyNotifiesObserversOfDummy{
    return [NSSet setWithObjects:@"dummy.width", @"dummy.size", @"dummy2", nil];
}

-(void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context {
    NSLog(keyPath);
}

-(void)dealloc {
    [self removeObserver:self forKeyPath:@"dummy"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
