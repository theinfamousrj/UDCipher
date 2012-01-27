//
//  AppDelegate.m
//  UDCipher
//
//  Created by theinfamousrj on 1/19/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "AppDelegate.h"
#import "Codec.h"

@implementation AppDelegate

@synthesize window = _window;

@synthesize userName;
@synthesize initDate;
@synthesize dataPlain;
@synthesize dataCipher;

Codec *myCodec;


- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    myCodec = [[Codec alloc] init];
}

- (void)pushData
{
    [myCodec initAll:userName.stringValue date:initDate.stringValue];
}

- (IBAction)encryptData:(id)sender
{
    [self pushData];
    dataCipher.stringValue = [myCodec encodeData:dataPlain.stringValue];
    NSLog(@"data encrypted.");
}

- (IBAction)decryptData:(id)sender
{
    [self pushData];
    dataPlain.stringValue = [myCodec decodeData:dataCipher.stringValue];
    NSLog(@"data decrypted.");
}

@end
