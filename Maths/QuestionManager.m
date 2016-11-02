//
//  QuestionManager.m
//  Maths
//
//  Created by Tim Beals on 2016-11-02.
//  Copyright © 2016 Tim Beals. All rights reserved.
//

#import "QuestionManager.h"

@interface QuestionManager ()

@property (nonatomic) NSMutableArray *questions;
@property (nonatomic) int totalTime;

@end

@implementation QuestionManager

-(instancetype)init {
    self = [super init];
    if (self) {
        _questions = [[NSMutableArray alloc] init];
        _totalTime = 0;
    }
    return self;
}

-(NSString*)timeOutput {
    for (NSInteger i = 0; i < self.questions.count; i++) {
        _totalTime += [[self.questions objectAtIndex:i] answerTime];
    }
    
    int averageTime = _totalTime / self.questions.count;
    
    NSString *time = [NSString stringWithFormat:@"total time: %ds, average time: %ds", _totalTime, averageTime];
    return time;
}
    
-(void)addEquationToMutArray:(Question*)equation {
    [self.questions addObject:equation];
}
    
@end
