//
//  SubtractionQuestion.m
//  Maths
//
//  Created by Tim Beals on 2016-11-02.
//  Copyright © 2016 Tim Beals. All rights reserved.
//

#import "SubtractionQuestion.h"

@implementation SubtractionQuestion

-(id)init {
    self = [super init];
    if(self) {
        [self generateQuestion];
    }
    return self;
}


-(void)generateQuestion {
    if(super.a > super.b) {
        super.question = [NSString stringWithFormat:@"%ld - %ld = ", super.a, super.b ];
        super.answer = super.a - super.b;
    } else {
        super.question = [NSString stringWithFormat:@"%ld - %ld = ", super.b, super.a];
        super.answer = super.b - super.a;
    }
    NSLog(@"%@", super.question);
}

@end
