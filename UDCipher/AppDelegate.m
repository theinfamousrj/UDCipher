//
//  AppDelegate.m
//  UDCipher
//
//  Created by theinfamousrj on 1/19/12.
//  Copyright (c) 2012 theinfamousrj. All rights reserved.
//

#import "AppDelegate.h"
#import "Codec.h"

@implementation AppDelegate

@synthesize window = _window;

@synthesize userName = _userName;
@synthesize initDate = _initDate;
@synthesize dataPlain = _dataPlain;
@synthesize dataCipher = _dataCipher;

Codec *myCodec;


- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    myCodec = [[Codec alloc] init];
}

- (void)pushData
{
    [myCodec setUserName:_userName.stringValue];
    [myCodec setInitDate:_initDate.stringValue];
}

- (IBAction)encryptData:(id)sender
{
    [self pushData];
    _dataCipher.stringValue = [myCodec encodeData:_dataPlain.stringValue];
    //NSLog(@"data encrypted.");
}

- (IBAction)decryptData:(id)sender
{
    [self pushData];
    _dataPlain.stringValue = [myCodec decodeData:_dataCipher.stringValue];
    //NSLog(@"data decrypted.");
}

@end
