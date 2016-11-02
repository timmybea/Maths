//
//  DivisionQuestion.m
//  Maths
//
//  Created by Tim Beals on 2016-11-02.
//  Copyright © 2016 Tim Beals. All rights reserved.
//

#import "DivisionQuestion.h"

@implementation DivisionQuestion

-(id)init {
    self = [super init];
    if(self) {
        [self generateQuestion];
    }
    return self;
}

-(int)divRanValue {
    int lowerBound = 1;
    int upperBound = 10;
    int rndValue = lowerBound + arc4random() % (upperBound - lowerBound);
    return rndValue;
}


-(void)generateQuestion {
    
    super.b = [self divRanValue];
    super.a = super.b * [self divRanValue];
    super.answer = super.a / super.b;    
    super.question = [NSString stringWithFormat:@"%ld / %ld = ", super.a, super.b ];
    NSLog(@"%@", super.question);
}


@end
