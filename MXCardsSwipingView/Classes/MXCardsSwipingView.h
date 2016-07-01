//
//  MXCardsSwipingView.h
//  Mixer
//
//  Created by Scott Kensell on 6/21/16.
//  Copyright © 2016 Two To Tango. All rights reserved.
//

#import <UIKit/UIKit.h>

@class MXCardsSwipingView;

@protocol MXSwipableCard <NSObject>
@optional
- (UIView*)viewShownOnSwipeLeft;
- (UIView*)viewShownOnSwipeRight;
- (void)prepareToBecomeTopCard; // changes will be animated
- (void)prepareToBecomeBackgroundCard;

@end

@protocol MXCardsSwipingViewDelegate <NSObject>

// Use this method to enqueue more cards if necessary.
// The card being dismissed still counts as in the queue.
- (void)cardsSwipingView:(MXCardsSwipingView*)cardsSwipingView willDismissCard:(UIView*)card toLeft:(BOOL)toLeft;

@end

@interface MXCardsSwipingView : UIView

@property (nonatomic, weak) id<MXCardsSwipingViewDelegate> delegate;

- (void)enqueueCard:(UIView*)card;
- (UIView*)dismissTopCardToLeft;
- (UIView*)dismissTopCardToRight;
- (void)clearQueue;
- (NSUInteger)numberOfCardsInQueue;

@end
