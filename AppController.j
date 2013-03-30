/*
 * AppController.j
 * HW
 *
 * Created by You on March 30, 2013.
 * Copyright 2013, Your Company All rights reserved.
 */

@import <Foundation/CPObject.j>


@implementation AppController : CPObject
{
}

- (void)applicationDidFinishLaunching:(CPNotification)aNotification
{
    var theWindow = [[CPWindow alloc] initWithContentRect:CGRectMakeZero() styleMask:CPBorderlessBridgeWindowMask],
        contentView = [theWindow contentView];

    var label = [[CPTextField alloc] initWithFrame:CGRectMakeZero()];

    [label setStringValue:@"Hello World!"];
    [label setFont:[CPFont boldSystemFontOfSize:24.0]];

    [label sizeToFit];

    [label setAutoresizingMask:CPViewMinXMargin | CPViewMaxXMargin | CPViewMinYMargin | CPViewMaxYMargin];
    [label setCenter:[contentView center]];

    [contentView addSubview:label];

    var rightClickMenu = [[CPMenu alloc] initWithTitle:nil];

    var menuItem1 = [rightClickMenu insertItemWithTitle:@"Test Case 1"
        action:@selector(test)
        keyEquivalent:@""
        atIndex:0];

    var menuItem2 = [rightClickMenu insertItemWithTitle:@"Test Case 2"
        action:@selector(test)
        keyEquivalent:@""
        atIndex:0];

    var menuItem3 = [rightClickMenu insertItemWithTitle:@"Test Case 3"
        action:@selector(test)
        keyEquivalent:@""
        atIndex:0];

    [[CPArray arrayWithObjects:menuItem1, menuItem2, menuItem2] makeObjectsPerformSelector:@selector(setTarget:) withObject:theWindow];

    [contentView setMenu:rightClickMenu];

    [theWindow orderFront:self];

    // Uncomment the following line to turn on the standard menu bar.
    //[CPMenu setMenuBarVisible:YES];
}

- (void)test
{
    console.log("testing");
}

@end
