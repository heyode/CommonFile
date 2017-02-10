//
//  NSDate+Extension.h
//  CommonFile
//
//  Created by mac on 2017/2/10.
//  Copyright © 2017年 heyode. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDate (Extension)
/**
 *  判断某个时间是否为今年
 */
-(BOOL)isThisYear;
/**
 *  判断是否为昨天
 */
-(BOOL)isYesterday;
/**
 *  判断是否为今天
 */
-(BOOL)isToday;
/** 判断是否为7天内*/
- (BOOL)isWithin7days;

/** 判断是否在1天内*/
- (BOOL)isWithin1days;
@end
