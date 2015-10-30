/*
 * Project: cordova-plugin-tapticengine
 * Version: 1.0.0
 * File: CDVTapticEngine.h
 * Author: Matteo Pisani
 * E-Mail: matteo.pisani.91@gmail.com
 * Linkedin: https://www.linkedin.com/in/matteopisani
 */

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import <Cordova/CDVPlugin.h>

@interface CDVTapticEngine : CDVPlugin;
- (void)generateTapticFeedback:(CDVInvokedUrlCommand*)command;
@end
