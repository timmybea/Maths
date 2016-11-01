//
//  AdditionQuestion.h
//  Maths
//
//  Created by Tim Beals on 2016-11-01.
//  Copyright © 2016 Tim Beals. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AdditionQuestion : NSObject

@property int a;
@property int b;
@property int ans;

-(id)init;
-(int)ranValue;

@end
