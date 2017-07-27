//
//  UIImage+Image.m
//  Max
//
//  Created by 曹均华 on 2017/7/27.
//  Copyright © 2017年 caojunhua. All rights reserved.
//

#import "UIImage+Image.h"

@implementation UIImage (Image)
+ (UIImage *)imageWithOriginalImageName:(NSString *)name{
    UIImage *image = [UIImage imageNamed:name];
    return [image imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
}
@end
