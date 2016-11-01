//
//  main.m
//  Maths
//
//  Created by Tim Beals on 2016-11-01.
//  Copyright © 2016 Tim Beals. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AdditionQuestion.h"
#import "InputHandler.h"
#import "ScoreKeeper.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSLog(@"MAAAAATHS!!!");
        BOOL gameOn = YES;
        
        ScoreKeeper *score = [[ScoreKeeper alloc] init];
        InputHandler *inputHandler = [[InputHandler alloc] init];
        
        while(gameOn == YES) {
            
            AdditionQuestion *equation = [[AdditionQuestion alloc] init];
            
            NSString *userInput = [inputHandler returnUserString];
            
            int k = 0;
            if([userInput isEqualToString:@"q"]){
                gameOn = NO;
            } else {
                k = userInput.intValue;
                
                if (k == equation.ans) {
                    NSLog(@"That's Correct! You clever thing!");
                    score.correct += 1;
                } else {
                    NSLog(@"Nope. Try Again");
                    score.wrong += 1;
                }
                [score getScore];
            }
            
        }
        return 0;
    }
}
