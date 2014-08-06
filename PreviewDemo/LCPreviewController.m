//
//  LCPreviewController.m
//  PreviewDemo
//
//  Created by llbt_LLC on 14-8-6.
//  Copyright (c) 2014年 LLC. All rights reserved.
//

#import "LCPreviewController.h"
#import "PreviewDataSource.h"

@interface LCPreviewController ()

@end

@implementation LCPreviewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (id)initWithFilePath:(NSString *)filePath
{
    if (self = [super init])
    {
        PreviewDataSource *dataSource = [[[PreviewDataSource alloc]init] autorelease];
        dataSource.path=[[NSString alloc] initWithString:filePath];
        
        self.dataSource = dataSource;
        
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
