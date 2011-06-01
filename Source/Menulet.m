//
//  Menulet.m
//  Orestes
//
//  Created by Jason Whitehorn on 5/30/11.
//  Copyright 2011 Jason Whitehorn. All rights reserved.
//

#import "Menulet.h"


@implementation Menulet
@synthesize theMenu;

- (void) alloc{
    NSLog(@"foo");
}

-(void)dealloc{
    [statusItem release];
    [super dealloc];
}

- (void)awakeFromNib{
    statusItem = [[[NSStatusBar systemStatusBar] statusItemWithLength:NSVariableStatusItemLength] retain];
    [statusItem setHighlightMode:YES];
    [statusItem setTitle:[NSString stringWithString:@"έ"]]; 
    [statusItem setEnabled:YES];
    [statusItem setToolTip:@"Orestes"];
    
    [statusItem setMenu:theMenu];

    [theMenu insertItemWithTitle:@"Quit" action:@selector(exitApp) keyEquivalent:@"" atIndex:1];
}

- (void) exitApp{
    [[NSApplication sharedApplication] terminate:nil];
}


@end
