//
//  PreviewDataSource.m
//  PreviewDemo
//
//  Created by llbt_LLC on 14-8-6.
//  Copyright (c) 2014年 LLC. All rights reserved.
//

#import "PreviewDataSource.h"

@interface PreviewDataSource ()

@end
@implementation PreviewDataSource

- (void)dealloc
{
    [self.path release];
    [super dealloc];
}

- (NSInteger) numberOfPreviewItemsInPreviewController: (QLPreviewController *) controller
{
    return 1;
}


- (id <QLPreviewItem>)previewController: (QLPreviewController *)controller previewItemAtIndex:(NSInteger)index
{
    
    return [NSURL fileURLWithPath:self.path];
}




@end
