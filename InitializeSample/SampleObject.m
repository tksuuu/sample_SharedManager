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

//-----
// http://secondflush2.blog.fc2.com/blog-entry-172.html#localizedCaseInsensitiveCompare
//_____
- (void)localizedCaseInsensitiveCompareSample
{
    NSString *str1 = @"がぎぐ";
    NSString *str2 = @"がぎく";
    NSString *result = [[NSString alloc] init];
    switch ([str1 localizedCaseInsensitiveCompare:str2]) {
        case NSOrderedAscending:
            result = @"<";
            break;
        case NSOrderedSame:
            result = @"=";
            break;
        case NSOrderedDescending:
            result = @">";
            break;
    }
    
    NSLog(@"%@", [NSString stringWithFormat:@"%@ %@ %@", str1, result, str2]);    //    ゆきぽ = ゆきぽ
}

- (void)localizedCompareSample
{
    NSString *str1 = @"がぎぐ";
    NSString *str2 = @"がぎく";
    NSString *result = [[NSString alloc] init];
    
    switch ([str1 localizedCompare:str2]) {
                case NSOrderedAscending:
                    result = @"<";
                    break;
                case NSOrderedSame:
                    result = @"=";
                    break;
                case NSOrderedDescending:
                    result = @">";
                    break;
            }
            
            NSLog(@"%@", [NSString stringWithFormat:@"%@ %@ %@", str1, result, str2]);    //    ゆきぽ = ゆきぽ
}

@end
