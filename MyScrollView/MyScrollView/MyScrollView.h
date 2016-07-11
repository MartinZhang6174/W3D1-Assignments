//
//  MyScrollView.h
//  MyScrollView
//
//  Created by Martin Zhang on 2016-07-11.
//  Copyright © 2016 Martin Zhang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MyScrollView : UIView

@property CGSize contentSize;

- (void)moveByPan:(UIPanGestureRecognizer *)panSender inView:(UIView *)aView;

@end
