//
//  OrestesAppDelegate.h
//  Orestes
//
//  Created by Jason Whitehorn on 5/30/11.
//  Copyright 2011 Jason Whitehorn. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface OrestesAppDelegate : NSObject <NSApplicationDelegate> {
@private
    NSWindow *window;
}

@property (assign) IBOutlet NSWindow *window;

@end
