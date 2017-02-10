//
//  Tool.h
//  CommonFile
//
//  Created by mac on 2017/2/10.
//  Copyright © 2017年 heyode. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Tool : NSObject
/** 上传图片的压缩*/
+ (NSData *)compressWithOrgImg:(UIImage *)img;
/** 开启定位服务的询问*/
+ (void)queryLocationAuthorization;
@end
