//
//  ViewController.m
//  zhiyebao
//
//  Created by mac on 14-9-9.
//  Copyright (c) 2014年 e360. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    if ([[NSUserDefaults standardUserDefaults] boolForKey:@"IntroViewController"]) {
        [self loadPage];
    }else{
        [_pageView setNumberOfPages:3];
        [_imageView setContentSize:CGSizeMake(320*3, 568)];
    }
}

- (void)loadPage{
    [_introView removeFromSuperview],_introView=nil;
    [_contentView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://www.zhiyebao.net/?n=m&a=home&c=home"]]];
}

-(void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    //
    if (_introView) {
        [_imageView setContentSize:CGSizeMake(320*3, 568)];
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)scrollViewDidScroll:(UIScrollView *)scrollView{
    int page=round(scrollView.contentOffset.x/scrollView.frame.size.width);
    [_pageView setCurrentPage:page];
}
- (IBAction)initTouch:(id)sender {
    [[NSUserDefaults standardUserDefaults] setBool:YES forKey:@"IntroViewController"];
    [[NSUserDefaults standardUserDefaults] synchronize];
    [self loadPage];
}
@end
