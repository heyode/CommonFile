//
//  NSDictionary+Extension.h
//  CommonFile
//
//  Created by mac on 2017/2/10.
//  Copyright © 2017年 heyode. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDictionary (Extension)
/*** 处理为空的key名
 *** key可以是任意字符串，如果字典中没有该key，就返回nil
 ***/
-(id)handleNullObjectForKey:(NSString *)key;

@end
