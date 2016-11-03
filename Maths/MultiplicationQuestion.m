//
//  MultiplicationQuestion.m
//  Maths
//
//  Created by Tim Beals on 2016-11-02.
//  Copyright © 2016 Tim Beals. All rights reserved.
//

#import "MultiplicationQuestion.h"

@implementation MultiplicationQuestion

-(id)init {
    self = [super init];
    if(self) {
        [self generateQuestion];
    }
    return self;
}

-(int)multRanValue {
    int lowerBound = 1;
    int upperBound = 12;
    int rndValue = lowerBound + arc4random() % (upperBound - lowerBound);
    return rndValue;
}

-(void)generateQuestion {
    super.a = [self multRanValue];
    super.b = [self multRanValue];
    super.question = [NSString stringWithFormat:@"%ld * %ld = ", super.a, super.b ];
    super.answer = super.a * super.b;
    NSLog(@"%@", super.question);
}

@end
