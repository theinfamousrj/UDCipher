//
//  AppDelegate.h
//  UDCipher
//
//  Created by theinfamousrj on 1/19/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface AppDelegate : NSObject <NSApplicationDelegate>

@property (assign) IBOutlet NSWindow *window;

@property (assign) IBOutlet NSTextField *userName;
@property (assign) IBOutlet NSTextField *initDate;
@property (assign) IBOutlet NSTextField *dataPlain;
@property (assign) IBOutlet NSTextField *dataCipher;

-(void)pushData;
-(IBAction)encryptData:(id)sender;
-(IBAction)decryptData:(id)sender;

@end
