//
//  MXViewController.m
//  MXCardsSwipingView
//
//  Created by Scott Kensell on 07/01/2016.
//  Copyright (c) 2016 Scott Kensell. All rights reserved.
//

#import "MXViewController.h"

#import <MXCardsSwipingView/MXCardsSwipingView.h>

@interface MXViewController () <MXCardsSwipingViewDelegate>

@end

@implementation MXViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    MXCardsSwipingView *cardsSwipingView = [[MXCardsSwipingView alloc] initWithFrame:CGRectMake(0, 0, self.view.bounds.size.width, self.view.bounds.size.height - 60)];
    cardsSwipingView.delegate = self;
    
    UIButton *notNowButton = [[UIButton alloc] init];
    [notNowButton setTitle:@"Not Now" forState:UIControlStateNormal];
    [notNowButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    notNowButton.titleLabel.font = [UIFont fontWithName:@"Avenir-Medium" size:18];
    [notNowButton sizeToFit];
    notNowButton.frame = CGRectMake(20, cardsSwipingView.frame.origin.y + cardsSwipingView.frame.size.height + 12, notNowButton.bounds.size.width, notNowButton.bounds.size.height);
    [notNowButton addTarget:cardsSwipingView action:@selector(dismissTopCardToLeft) forControlEvents:UIControlEventTouchUpInside];
    
    UIButton *connectButton = [[UIButton alloc] init];
    [connectButton setTitle:@"Connect" forState:UIControlStateNormal];
    [connectButton setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    connectButton.titleLabel.font = [UIFont fontWithName:@"Avenir-Medium" size:18];
    [connectButton sizeToFit];
    connectButton.frame = CGRectMake(self.view.bounds.size.width - (20 + connectButton.bounds.size.width), notNowButton.frame.origin.y, connectButton.bounds.size.width, connectButton.bounds.size.height);
    [connectButton addTarget:cardsSwipingView action:@selector(dismissTopCardToRight) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:notNowButton];
    [self.view addSubview:connectButton];
    [self.view addSubview:cardsSwipingView];
}

- (void)cardsSwipingView:(MXCardsSwipingView *)cardsSwipingView willDismissCard:(UIView *)card toLeft:(BOOL)toLeft {
    
}

@end
