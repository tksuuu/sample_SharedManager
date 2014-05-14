//
//  SampleObject.h
//  InitializeSample
//
//  Created by tksuuu on 2014/05/15.
//  Copyright (c) 2014年 tksuuu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SampleObject : NSObject

+(SampleObject*)sharedManager;

- (NSString*)sampleMethodStart;

@end
