//
//  UIImage+Create.h
//  100yh
//
//  Created by 王若风 on 15/5/14.
//  Copyright (c) 2015年 王若风. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (Create)

/**
 *  根据一种颜色快速创建一张图片
 *
 *  @param color 需要创建图片的颜色
 *
 *  @return UIImage对象
 */
+ (UIImage *)createImageWithColor:(UIColor *)color;


// 等比压缩图片到指定分辨率
- (UIImage*)imageByScalingAndCroppingForSize:(CGSize)targetSize;


@end
