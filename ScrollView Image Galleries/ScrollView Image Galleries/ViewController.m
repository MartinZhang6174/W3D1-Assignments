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
@property (nonatomic) BOOL translatesAutoresizingMaskIntoConstraints;
@property CGSize contentSize;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.translatesAutoresizingMaskIntoConstraints = YES;
    self.contentSize = CGSizeMake(CGRectGetHeight(self.scrollView.frame), CGRectGetWidth(self.scrollView.frame));
    
    double firstImageViewX = 0;
    double secondImageViewX = CGRectGetWidth(self.scrollView.frame);
    double thirdImageViewX = CGRectGetWidth(self.scrollView.frame) * 2;
    UIImageView *imageView1 = [[UIImageView alloc] initWithFrame:CGRectMake(firstImageViewX, 0, CGRectGetHeight(self.scrollView.frame), CGRectGetWidth(self.scrollView.frame))];
    UIImageView *imageView2 = [[UIImageView alloc] initWithFrame:CGRectMake(secondImageViewX, 0, CGRectGetHeight(self.scrollView.frame), CGRectGetWidth(self.scrollView.frame))];
    UIImageView *imageView3 = [[UIImageView alloc] initWithFrame:CGRectMake(thirdImageViewX, 0, CGRectGetHeight(self.scrollView.frame), CGRectGetWidth(self.scrollView.frame))];
    imageView1.backgroundColor = [UIColor redColor];
    imageView2.backgroundColor = [UIColor blueColor];
    imageView3.backgroundColor = [UIColor orangeColor];
    
    [self.scrollView addSubview:imageView1];
    [self.scrollView addSubview:imageView2];
    [self.scrollView addSubview:imageView3];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
