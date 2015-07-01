//
//  PGControlTargetActionPair.h
//  PeyGeneCore
//
//  Created by Peyman Mortazavi on 7/1/15.
//  Copyright (c) 2015 Peyman Mortazavi. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PGControlTargetActionPair : NSObject

@property (nonatomic, assign) id target;

@property (nonatomic, assign) SEL action;

@end
