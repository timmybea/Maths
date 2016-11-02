//
//  Question.h
//  Maths
//
//  Created by Tim Beals on 2016-11-01.
//  Copyright © 2016 Tim Beals. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Question : NSObject

@property (nonatomic) NSString *question;
@property (nonatomic) NSDate *startTime;
@property (nonatomic) NSDate *endTime;

@property (nonatomic) NSInteger a;
@property (nonatomic) NSInteger b;
@property (nonatomic) NSInteger answer;

-(id)init;
-(int)ranValue;
-(void)generateQuestion;
- (NSInteger)answer;
-(NSInteger)answerTime;

@end
