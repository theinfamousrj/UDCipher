//
//  Codec.m
//  UDCipher
//
//  Created by theinfamousrj on 1/19/12.
//  Copyright (c) 2012 theinfamousrj. All rights reserved.
//

#import "Codec.h"

@implementation Codec

@synthesize userName = _userName;
@synthesize initDate = _initDate;
@synthesize dataPlain = _dataPlain;
@synthesize dataCipher = _dataCipher;

// Codec init
- (id)init {
    return self;
}

// encodeData method
// parameters: takes in plain data
// returns: encoded data
- (NSString*)encodeData:(NSString*)data {
    
    //NSLog(@"data encoded: %@", data);
    return data;
}

- (NSString*)decodeData:(NSString*)data {
    
    //NSLog(@"data decoded: %@", data);
    return data;
}

- (NSString*)rot13Codec:(NSString*)data {
    const char *_string = [data cStringUsingEncoding:NSASCIIStringEncoding];
	int stringLength = [data length];
	char newString[stringLength+1];
	
    int i;
	for(i=0; i<stringLength; i++ )
	{
		unsigned int aCharacter = _string[i];
		
        // Handles uppercase:
		if( 0x40 < aCharacter && aCharacter < 0x5B )
			newString[i] = (((aCharacter - 0x41) + 0x0D) % 0x1A) + 0x41;
        // Handles lowercase:
		else if( 0x60 < aCharacter && aCharacter < 0x7B )
			newString[i] = (((aCharacter - 0x61) + 0x0D) % 0x1A) + 0x61;
        // Handles all other characters:
        else
			newString[i] = aCharacter;
	}
	
    // End with null char:
	newString[i] = '\0';
	
	NSString *rot13String = [NSString stringWithCString:newString encoding:NSASCIIStringEncoding];
    //NSLog(@"rotString: %@", rotString);
	return rot13String;
}

- (NSString*)numToChar:(NSString*)data {
    const char *_string = [data cStringUsingEncoding:NSASCIIStringEncoding];
	int stringLength = [data length];
	char newString[stringLength+1];
	
    int i;
	for(i=0; i<stringLength; i++ )
	{
		unsigned int aCharacter = _string[i];
		
        // Handles numbers 0-9:
		if( 0x2F < aCharacter && aCharacter < 0x3A )
			newString[i] = (((aCharacter - 0x2F) + 0x0D) % 0x1A) + 0x33;
        // Handles all other characters:
        else
			newString[i] = aCharacter;
	}
	
    // End with null char:
	newString[i] = '\0';
	
	NSString *numToCharString = [NSString stringWithCString:newString encoding:NSASCIIStringEncoding];
    //NSLog(@"numToCharString: %@", numToCharString);
	return numToCharString;
}

- (NSString*)charToNum:(NSString*)data {
    const char *_string = [data cStringUsingEncoding:NSASCIIStringEncoding];
	int stringLength = [data length];
	char newString[stringLength+1];
	
    int i;
	for(i=0; i<stringLength; i++ )
	{
		unsigned int aCharacter = _string[i];
		
        // Handles numbers 0-9:
		if( 0x40 < aCharacter && aCharacter < 0x4B )
			newString[i] = (((aCharacter - 0x41) + 0x0D) % 0x1A) + 0x23;
        // Handles all other characters:
        else
			newString[i] = aCharacter;
	}
	
    // End with null char:
	newString[i] = '\0';
	
	NSString *charToNumString = [NSString stringWithCString:newString encoding:NSASCIIStringEncoding];
    //NSLog(@"charToNumString: %@", charToNumString);
	return charToNumString;
}


@end
