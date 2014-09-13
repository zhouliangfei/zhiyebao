//
//  ViewController.h
//  zhiyebao
//
//  Created by mac on 14-9-9.
//  Copyright (c) 2014年 e360. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UIScrollViewDelegate>
@property (weak, nonatomic) IBOutlet UIWebView *contentView;
@property (weak, nonatomic) IBOutlet UIScrollView *imageView;
@property (weak, nonatomic) IBOutlet UIPageControl *pageView;
@property (weak, nonatomic) IBOutlet UIView *introView;
- (IBAction)initTouch:(id)sender;
@end
