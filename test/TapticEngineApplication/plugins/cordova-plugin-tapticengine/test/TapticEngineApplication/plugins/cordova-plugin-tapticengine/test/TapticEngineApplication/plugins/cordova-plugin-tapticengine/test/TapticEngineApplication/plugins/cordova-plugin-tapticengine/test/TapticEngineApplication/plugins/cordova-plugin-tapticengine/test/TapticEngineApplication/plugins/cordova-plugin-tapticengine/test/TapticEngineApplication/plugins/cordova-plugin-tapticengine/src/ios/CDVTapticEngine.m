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

@interface CDVTapticEngine () {}
@end

@implementation CDVTapticEngine

- (void)generateTapticFeedback:(CDVInvokedUrlCommand*)command
{
    id tapticEngine = [[UIDevice currentDevice] performSelector:NSSelectorFromString(@"_tapticEngine") withObject:nil];
    [tapticEngine performSelector:NSSelectorFromString(@"actuateFeedback:") withObject:@(1001)]; // Peek
    [tapticEngine performSelector:NSSelectorFromString(@"endUsingFeedback:") withObject:@(1002)]; // Pop
}
@end
