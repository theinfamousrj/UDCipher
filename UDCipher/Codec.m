//
//  Codec.m
//  UDCipher
//
//  Created by theinfamousrj on 1/19/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "Codec.h"

@implementation Codec

@synthesize userName;
@synthesize initDate;
@synthesize dataPlain;
@synthesize dataCipher;


- (id)init {
    return self;
}

- (void)initAll:(NSString*)uName date:(NSString*)iDate {
    self.userName = uName;
    NSLog(@"userName: %@", self.userName);
    self.initDate = iDate;
    NSLog(@"initDate: %@", self.initDate);
}

- (NSString*)encodeData: (NSString*)data {
    NSLog(@"data encoded: %@", data);
    return data;
}

- (NSString*)decodeData: (NSString*)data {
    NSLog(@"data decoded: %@", data);
    return data;
}

@end
