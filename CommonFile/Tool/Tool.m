//
//  Tool.m
//  CommonFile
//
//  Created by mac on 2017/2/10.
//  Copyright © 2017年 heyode. All rights reserved.
//

#import "Tool.h"
#import <UIKit/UIKit.h>
#import "UIImage+Create.h"
#import <CoreLocation/CoreLocation.h>
@implementation Tool

+ (NSData *)compressWithOrgImg:(UIImage *)img
{
    
    NSData *imageData = UIImageJPEGRepresentation(img, 1);
    float length = imageData.length;
    length = length/1024;
    NSLog(@"压缩前的大小：%fKB",length);
    // 裁剪比例
    CGFloat cout = 0.5;
    
    // 压缩比例
    CGFloat imgCout = 0.1;
    if(length > 25000){ // 25M以上的图片
        cout = 0.1;
        imgCout = 0;
    }else if(length > 10000){ // 10M以上的图片
        cout = 0.2;
        imgCout = 0;
    }else if (length > 5000) { // 5M以上的图片
        cout = 0.3;
        imgCout = 0;
    }else if (length > 1500) { // 如果原图大于1.5M就换一个压缩级别
        cout = 0.7;
        imgCout = 0.1;
    }else if (length > 1000) {
        cout = 0.8;
        imgCout = 0.2;
    }else if (length > 500) {
        cout = 0.8;
        imgCout = 0.3;
    }else if (length >100){ // 小于500k的不用裁剪
        
        imageData = UIImageJPEGRepresentation(img, 50 / imageData.length);
        float length = imageData.length;
        length = length/1024;
        NSLog(@"压缩后的大小：%fKB",length);
        return imageData;
    }else{
        
        imageData = UIImageJPEGRepresentation(img, 0.5);
        float length = imageData.length;
        length = length/1024;
        NSLog(@"压缩后的大小：%fKB",length);
        return imageData;
    }
    
    
    // 按裁剪比例裁剪
    UIImage *compressImage =  [img imageByScalingAndCroppingForSize:CGSizeMake(img.size.width * cout, img.size.height *cout)];
    
    
    // 那压缩比例压缩
    imageData = UIImageJPEGRepresentation(compressImage, imgCout);
    
    length= imageData.length / 1024;
    NSLog(@"裁剪比例：%f，压缩比例：%f,压缩后的大小：%fKB",cout,imgCout,length);
    return imageData;
}


/** 开启定位服务的询问*/
+ (void)queryLocationAuthorization
{
    CLAuthorizationStatus status = [CLLocationManager authorizationStatus];
    if (![CLLocationManager locationServicesEnabled] || kCLAuthorizationStatusDenied == status || kCLAuthorizationStatusRestricted == status)
    {
        UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"请您开启定位服务！" message:@"设置->XX->位置"
                                                           delegate:nil cancelButtonTitle:@"取消" otherButtonTitles:@"去设置", nil];
        
        [alertView show];
        return;
    }
}


@end
