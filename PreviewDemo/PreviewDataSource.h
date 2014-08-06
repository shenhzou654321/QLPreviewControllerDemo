//
//  PreviewDataSource.h
//  PreviewDemo
//
//  Created by llbt_LLC on 14-8-6.
//  Copyright (c) 2014年 LLC. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <QuickLook/QuickLook.h>

@interface PreviewDataSource : NSObject<QLPreviewControllerDataSource>

@property (nonatomic, retain) NSString * path;

@end
