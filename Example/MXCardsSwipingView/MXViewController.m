//
//  MXViewController.m
//  MXCardsSwipingView
//
//  Created by Scott Kensell on 07/01/2016.
//  Copyright (c) 2016 Scott Kensell. All rights reserved.
//

#import "MXViewController.h"

#import <MXCardsSwipingView/MXCardsSwipingView.h>
#import "MXMemberCardView.h"

@interface MXViewController () <MXCardsSwipingViewDelegate>

@property (nonatomic, strong) MXCardsSwipingView* cardsSwipingView;

@end

@implementation MXViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    MXCardsSwipingView *cardsSwipingView = [[MXCardsSwipingView alloc] initWithFrame:CGRectMake(0, 0, self.view.bounds.size.width, self.view.bounds.size.height - 60)];
    cardsSwipingView.delegate = self;
    self.cardsSwipingView = cardsSwipingView;
    [self addCard];
    [self addCard];
    [self addCard];
    
    UIButton *notNowButton = [[UIButton alloc] init];
    [notNowButton setTitle:@"Not Now" forState:UIControlStateNormal];
    [notNowButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    notNowButton.titleLabel.font = [UIFont fontWithName:@"Avenir-Medium" size:18];
    [notNowButton sizeToFit];
    notNowButton.frame = CGRectMake(20, cardsSwipingView.frame.origin.y + cardsSwipingView.frame.size.height + 12, notNowButton.bounds.size.width, notNowButton.bounds.size.height);
    [notNowButton addTarget:cardsSwipingView action:@selector(dismissTopCardToLeft) forControlEvents:UIControlEventTouchUpInside];
    
    UIButton *connectButton = [[UIButton alloc] init];
    [connectButton setTitle:@"Connect" forState:UIControlStateNormal];
    [connectButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    connectButton.titleLabel.font = [UIFont fontWithName:@"Avenir-Medium" size:18];
    [connectButton sizeToFit];
    connectButton.frame = CGRectMake(self.view.bounds.size.width - (20 + connectButton.bounds.size.width), notNowButton.frame.origin.y, connectButton.bounds.size.width, connectButton.bounds.size.height);
    [connectButton addTarget:cardsSwipingView action:@selector(dismissTopCardToRight) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:notNowButton];
    [self.view addSubview:connectButton];
    [self.view addSubview:cardsSwipingView];
}

- (BOOL)cardsSwipingView:(MXCardsSwipingView *)cardsSwipingView willDismissCard:(UIView *)card toLeft:(BOOL)toLeft {
    static int i=0;
    if (++i % 5 == 0) return NO;
    [self addCard];
    return YES;
}

- (void)addCard {
    MXMemberCardView* card = [[MXMemberCardView alloc] initWithFrame:CGRectMake(0, 0, self.view.bounds.size.width - 40, (self.view.bounds.size.width - 40)/[MXMemberCardView aspectRatio])];
    [card setupWithAModel:nil];
    [card addShadow];
    [self.cardsSwipingView enqueueCard:card];
}

@end
