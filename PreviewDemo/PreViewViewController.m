//
//  PreViewViewController.m
//  PreviewDemo
//
//  Created by llbt_LLC on 14-8-6.
//  Copyright (c) 2014年 LLC. All rights reserved.
//

#import "PreViewViewController.h"
#import "LCPreviewController.h"
@interface PreViewViewController ()

@end

@implementation PreViewViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    self.title = @"点击预览xls文件";
    UIButton * button = [UIButton buttonWithType:UIButtonTypeContactAdd];
    button.frame = CGRectMake(100, 200, 30, 30);
    [button addTarget:self action:@selector(showXLS) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
}

- (void)showXLS
{
    NSString * filePath = [[NSBundle mainBundle] pathForResource:@"people" ofType:@"xls"];
    LCPreviewController * lcPreVC = [[[LCPreviewController alloc] initWithFilePath:filePath] autorelease];
    [self.navigationController pushViewController:lcPreVC animated:YES];
}

- (void)judgeTypeOfFile
{
    @autoreleasepool
    {
        
        NSFileManager *manager = [NSFileManager defaultManager];
        
        NSString *home = [@"/test" stringByExpandingTildeInPath];
        
        NSDirectoryEnumerator *direnum = [manager enumeratorAtPath:home];
        
        NSMutableArray *files = [NSMutableArray arrayWithCapacity:42];
        NSString *filename ;
        
        while (filename = [direnum nextObject])
        {
            if ([[filename pathExtension] isEqualToString:@"jpg"])
            {
                [files addObject: filename];
            }
        }
        NSEnumerator *fileenum;
        fileenum = [files objectEnumerator];
        
        while (filename = [fileenum nextObject])
        {
            NSLog(@"%@", filename);
        }
        
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
