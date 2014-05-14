//
//  SampleObject.m
//  InitializeSample
//
//  Created by tksuuu on 2014/05/15.
//  Copyright (c) 2014年 tksuuu. All rights reserved.
//

#import "SampleObject.h"

@implementation SampleObject

static SampleObject *_shared = nil;

+(SampleObject*)sharedManager
{
    if (!_shared) {
        _shared = [[SampleObject alloc]init];
    }
    return _shared;
}

- (id)init
{
    self = [super init];
    if (!self) {
        return nil;
    }
    
    return self;
}

- (NSString*)sampleMethodStart
{
    return @"SampleObject start";
}

@end
