//
//  InputHandler.m
//  Maths
//
//  Created by Tim Beals on 2016-11-01.
//  Copyright © 2016 Tim Beals. All rights reserved.
//

#import "InputHandler.h"

@implementation InputHandler

-(NSString*)returnUserString {
    char varWord[255];
    fgets(varWord, 255, stdin);
    NSString *userInput = [NSString stringWithCString:varWord encoding:NSUTF8StringEncoding];
    userInput = [userInput stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    return userInput;
}

@end
