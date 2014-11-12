//
//  GHEngine.m
//  Home Work OOP
//
//  Created by Sergey Zalozniy on 10/31/14.
//  Copyright (c) 2014 Sergey Zalozniy. All rights reserved.
//

#include "GHEngine.h"

@interface GHEngine()

@property float x;
@property int y;

@end

@implementation GHEngine

-(void) initWithEngineCapacity:(float)a andHorsePower:(int)b{
    self.x = a;
    self.y = b;
    
};
-(void) printCarInformation {
    NSLog(@"объем %.1f, мощность%i л.с.", self.x, self.y);
};


@end