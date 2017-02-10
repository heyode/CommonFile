//
//  NSDictionary+Extension.m
//  CommonFile
//
//  Created by mac on 2017/2/10.
//  Copyright © 2017年 heyode. All rights reserved.
//

#import "NSDictionary+Extension.h"

@implementation NSDictionary (Extension)
-(id)handleNullObjectForKey:(NSString *)key {
    id object = [self objectForKey:key];
    if ([object isKindOfClass:[NSNull class]]) {
        return nil;
    }
    return object;
}
@end
