//
//  NSString+Extension.h
//  CommonFile
//
//  Created by mac on 2017/2/10.
//  Copyright © 2017年 heyode. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (Extension)
// 此方法随机产生32位字符串， 修改代码红色数字可以改变 随机产生的位数。

+(NSString *)ret32bitString;
- (NSString *)getNOspaceString;
+ (NSString *)stringWithMD5Encrypt:(NSString *)str;
// 检测电话号码是否合法
- (BOOL)checkMobileNumber:(NSString *)mobileNum;
@end
