//
//  Codec.h
//  UDCipher
//
//  Created by theinfamousrj on 1/19/12.
//  Copyright (c) 2012 theinfamousrj. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface Codec : NSObject

@property (assign) NSString *userName;
@property (assign) NSString *initDate;
@property (assign) NSString *dataPlain;
@property (assign) NSString *dataCipher;

-(void)initAll:(NSString*)uName date:(NSString*)iDate;
-(NSString*)encodeData: (NSString*)data;
-(NSString*)decodeData: (NSString*)data;
-(NSString*)rot13Codec: (NSString*)data;
-(NSString*)numToChar: (NSString*)data;
-(NSString*)charToNum: (NSString*)data;

@end
