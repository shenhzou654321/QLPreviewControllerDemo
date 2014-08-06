//
//  LCPreviewController.h
//  PreviewDemo
//
//  Created by llbt_LLC on 14-8-6.
//  Copyright (c) 2014年 LLC. All rights reserved.
//

#import <QuickLook/QuickLook.h>
#import "PreviewDataSource.h"

@interface LCPreviewController : QLPreviewController

- (id)initWithFilePath:(NSString *) filePath;

@end
