/*
 * Project: cordova-plugin-tapticengine
 * Version: 1.0.0
 * File: CDVTapticEngine.m
 * Author: Matteo Pisani
 * E-Mail: matteo.pisani.91@gmail.com
 * Linkedin: https://www.linkedin.com/in/matteopisani
 */

#import <Cordova/CDV.h>
#import "CDVTapticEngine.h"

static int const UITapticEngineFeedbackPeek = 1001;
static int const UITapticEngineFeedbackPop = 1002;

@interface UITapticEngine : NSObject

- (void)actuateFeedback:(int)arg1;
- (void)endUsingFeedback:(int)arg1;
- (void)prepareUsingFeedback:(int)arg1;

@end


@interface CDVTapticEngine () {}
@end

@implementation CDVTapticEngine

- (void)generateTapticFeedback:(CDVInvokedUrlCommand*)command
{
    [self tapticFeedback:UITapticEngineFeedbackPeek];
    [self tapticFeedback:UITapticEngineFeedbackPop];
}

- (UITapticEngine *) tapticEngine
{
    UITapticEngine *tapticEngine = [[UIDevice currentDevice] performSelector:NSSelectorFromString(@"_tapticEngine") withObject:nil];
    return tapticEngine;
}

- (void) tapticFeedback: (int)feedbackID
{
    if ([self tapticEngine])
        [[self tapticEngine] actuateFeedback:feedbackID];
}
@end
