//
//  QuestionManager.h
//  Maths
//
//  Created by Tim Beals on 2016-11-02.
//  Copyright © 2016 Tim Beals. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Question.h"

@interface QuestionManager : NSObject

-(NSString*)timeOutput;
-(void)addEquationToMutArray:(Question*)equation;

@end
