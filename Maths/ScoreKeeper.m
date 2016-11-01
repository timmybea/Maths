//
//  ScoreKeeper.m
//  Maths
//
//  Created by Tim Beals on 2016-11-01.
//  Copyright © 2016 Tim Beals. All rights reserved.
//

#import "ScoreKeeper.h"

@implementation ScoreKeeper

-(id)init {
    self = [super init];
    if (self) {
        _correct = 0;
        _wrong = 0;
    }
    return self;
}

-(void)getScore {
    float total = self.correct + self.wrong;
    int percent = ((float)self.correct / total) * 100;
    NSLog(@"%d correct, %d incorrect. Your score is: %d%%", self.correct, self.wrong, percent);
}



@end
