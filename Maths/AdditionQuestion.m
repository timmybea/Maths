//
//  AdditionQuestion.m
//  Maths
//
//  Created by Tim Beals on 2016-11-02.
//  Copyright © 2016 Tim Beals. All rights reserved.
//

#import "AdditionQuestion.h"

@implementation AdditionQuestion

-(id)init {
    self = [super init];
    if(self) {
        [self generateQuestion];
    }
    return self;
}


-(void)generateQuestion {
    
        super.question = [NSString stringWithFormat:@"%ld + %ld = ", super.a, super.b ];
        super.answer = super.a + super.b;
        NSLog(@"%@", super.question);
}


@end
