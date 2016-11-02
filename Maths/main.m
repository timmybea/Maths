//
//  main.m
//  Maths
//
//  Created by Tim Beals on 2016-11-01.
//  Copyright © 2016 Tim Beals. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Question.h"
#import "InputHandler.h"
#import "ScoreKeeper.h"
#import "QuestionManager.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSLog(@"MAAAAATHS!!!");
        BOOL gameOn = YES;
        
        QuestionManager *questionManager = [[QuestionManager alloc] init];
        ScoreKeeper *score = [[ScoreKeeper alloc] init];
        InputHandler *inputHandler = [[InputHandler alloc] init];
        
        while(gameOn == YES) {
            
            Question *equation = [[Question alloc] init];
            [questionManager addEquationToMutArray:equation];
            
            NSString *userInput = [inputHandler returnUserString];
            
            int k = 0;
            if([userInput isEqualToString:@"q"]){
                gameOn = NO;
            } else {
                k = userInput.intValue;
                
                if (k == [equation answer]) {
                    NSLog(@"That's Correct! You clever thing!");
                    
                    score.correct += 1;
                } else {
                    NSLog(@"Nope. Try Again");
                    score.wrong += 1;
                }
                NSLog(@"%@", [questionManager timeOutput]);
                [score getScore];
            }
            
        }
        return 0;
    }
}
