#import "TigerCityARPlugin.h"
#import <Cordova/CDVPlugin.h>

@implementation TigerCityARPlugin

- (void)openAR:(CDVInvokedUrlCommand*)command
{
    CDVPluginResult* pluginResult = nil;
    NSString* serverUrl = [command.arguments objectAtIndex:0];
	NSNumber* userId = [command.arguments objectAtIndex:1];
	NSString* serverUrl = [command.arguments objectAtIndex:2];

	CDVPluginResult* pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK];
    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

@end