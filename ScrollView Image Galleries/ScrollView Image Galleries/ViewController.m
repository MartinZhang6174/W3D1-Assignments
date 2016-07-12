//
//  ViewController.m
//  ScrollView Image Galleries
//
//  Created by Martin Zhang on 2016-07-11.
//  Copyright © 2016 Martin Zhang. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UIScrollViewDelegate>

@property (strong, nonatomic) IBOutlet UIScrollView *scrollView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
//    [self.view layoutIfNeeded];
    
    double firstImageViewX = 0;
    double secondImageViewX = CGRectGetWidth(self.view.frame);
    double thirdImageViewX = CGRectGetWidth(self.view.frame) * 2;
    UIImageView *imageView1 = [[UIImageView alloc]
                               initWithFrame:CGRectMake(firstImageViewX, 0, CGRectGetWidth(self.view.frame), CGRectGetHeight(self.view.frame))];
    UIImageView *imageView2 = [[UIImageView alloc]
                               initWithFrame:CGRectMake(secondImageViewX, 0, CGRectGetWidth(self.view.frame), CGRectGetHeight(self.view.frame))];
    UIImageView *imageView3 = [[UIImageView alloc]
                               initWithFrame:CGRectMake(thirdImageViewX, 0, CGRectGetWidth(self.view.frame), CGRectGetHeight(self.view.frame))];
    imageView1.backgroundColor = [UIColor redColor];
    imageView2.backgroundColor = [UIColor blueColor];
    imageView3.backgroundColor = [UIColor orangeColor];
    
    [self.scrollView addSubview:imageView1];
    [self.scrollView addSubview:imageView2];
    [self.scrollView addSubview:imageView3];
    
    self.scrollView.contentSize = CGSizeMake(CGRectGetWidth(self.view.frame)*3, CGRectGetHeight(self.view.frame));
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
