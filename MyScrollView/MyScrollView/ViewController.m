//
//  ViewController.m
//  MyScrollView
//
//  Created by Martin Zhang on 2016-07-11.
//  Copyright © 2016 Martin Zhang. All rights reserved.
//

#import "ViewController.h"
#import "MyScrollView.h"

@interface ViewController ()

@property UIView *myView;
@property IBOutlet MyScrollView *aScrollView;

@end

@implementation ViewController

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    [self.myView setBounds:CGRectMake(0, 100, CGRectGetWidth(self.view.frame), CGRectGetHeight(self.view.frame))];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.myView = [[UIView alloc] initWithFrame:self.view.frame];
    self.aScrollView.backgroundColor = [UIColor grayColor];
    
    self.aScrollView.contentSize = CGSizeMake(100, 300);
    
    UIView *redView = [[UIView alloc] initWithFrame:CGRectMake(20, 20, 100, 100)];
    UIView *greenView = [[UIView alloc] initWithFrame:CGRectMake(150, 150, 150, 200)];
    UIView *blueView = [[UIView alloc] initWithFrame:CGRectMake(40, 400, 200, 150)];
    UIView *yellowView = [[UIView alloc] initWithFrame:CGRectMake(100, 600, 180, 150)];
    redView.backgroundColor = [UIColor redColor];
    greenView.backgroundColor = [UIColor greenColor];
    blueView.backgroundColor = [UIColor blueColor];
    yellowView.backgroundColor = [UIColor yellowColor];
    
    [self.myView addSubview:redView];
    [self.myView addSubview:greenView];
    [self.myView addSubview:blueView];
    [self.myView addSubview:yellowView];
    [self.aScrollView addSubview:self.myView];
//    [self.view addSubview:self.myView];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)panGestureSelector:(UIPanGestureRecognizer *)panGestureSender {
    
    [self.aScrollView moveByPan:panGestureSender inView:self.view];

}


@end
