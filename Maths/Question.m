//
//  Question.m
//  Maths
//
//  Created by Tim Beals on 2016-11-01.
//  Copyright © 2016 Tim Beals. All rights reserved.
//

#import "Question.h"

@implementation Question

-(int)ranValue {
    int lowerBound = 10;
    int upperBound = 100;
    int rndValue = lowerBound + arc4random() % (upperBound - lowerBound);
    return rndValue;
}

-(id)init {
    self = [super init];
    if(self) {
        _startTime = [NSDate date];
        _a = [self ranValue];
        _b = [self ranValue];
        _answer = self.a + self.b;
        _question = [NSString stringWithFormat: @"%ld + %ld = ", _a, _b];
        NSLog(@"%@", _question);
    }
    return self;
}

- (NSInteger)answer {
    _endTime = [NSDate date];
    return _answer;
}

-(NSInteger)answerTime {
    return [self.endTime timeIntervalSinceDate:self.startTime];
}

@end
