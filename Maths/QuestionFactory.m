//
//  QuestionFactory.m
//  Maths
//
//  Created by Tim Beals on 2016-11-02.
//  Copyright © 2016 Tim Beals. All rights reserved.
//

#import "QuestionFactory.h"

@interface QuestionFactory ()

@property (nonatomic, strong) NSArray *questionType;

@end


@implementation QuestionFactory

-(int)selectorRanValue {
    int lowerBound = 0;
    int upperBound = 4;
    int rndValue = lowerBound + arc4random() % (upperBound - lowerBound);
    return rndValue;
}

-(id)init {
    self = [super init];
    if(self) {
        _questionType = @[@"AdditionQuestion", @"SubtractionQuestion", @"MultiplicationQuestion", @"DivisionQuestion"];
    }
    return self;
}

-(Question*)questionSelector {

    NSString *qType = [self.questionType objectAtIndex:[self selectorRanValue]];
    
    return [[NSClassFromString(qType) alloc] init];
}



@end
