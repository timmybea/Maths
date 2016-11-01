//
//  AdditionQuestion.m
//  Maths
//
//  Created by Tim Beals on 2016-11-01.
//  Copyright © 2016 Tim Beals. All rights reserved.
//

#import "AdditionQuestion.h"

@implementation AdditionQuestion


-(int)ranValue {
    int lowerBound = 10;
    int upperBound = 100;
    int rndValue = lowerBound + arc4random() % (upperBound - lowerBound);
    return rndValue;
}

-(id)init {
    self = [super init];
    if(self) {
        _a = [self ranValue];
        _b = [self ranValue];
        _ans = self.a + self.b;
        NSLog(@"%d + %d = ", self.a, self.b);
    }
    return self;
}

@end
