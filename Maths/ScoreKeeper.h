//
//  ScoreKeeper.h
//  Maths
//
//  Created by Tim Beals on 2016-11-01.
//  Copyright © 2016 Tim Beals. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ScoreKeeper : NSObject

@property int correct;
@property int wrong;

-(id)init;
-(void)getScore;


@end
