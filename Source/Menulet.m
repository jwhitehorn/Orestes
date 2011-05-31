//
//  Menulet.m
//  Orestes
//
//  Created by Jason Whitehorn on 5/30/11.
//  Copyright 2011 Jason Whitehorn. All rights reserved.
//

#import "Menulet.h"


@implementation Menulet

- (void) alloc{
    NSLog(@"foo");
}

-(void)dealloc{
    [statusItem release];
    [super dealloc];
}

- (void)awakeFromNib{
    statusItem = [[[NSStatusBar systemStatusBar] 
                   statusItemWithLength:NSVariableStatusItemLength]
                  retain];
    [statusItem setHighlightMode:YES];
    [statusItem setTitle:[NSString 
                          stringWithString:@"έ"]]; 
    [statusItem setEnabled:YES];
    [statusItem setToolTip:@"IPMenulet"];
    //[statusItem setAction:@selector(updateIPAddress:)];
    [statusItem setTarget:self];
}


@end
