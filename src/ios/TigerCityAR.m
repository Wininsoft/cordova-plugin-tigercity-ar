#import "TigerCityAR.h"

@implementation TigerCityAR
    
    - (void) openAR:(CDVInvokedUrlCommand*) command{
        AppDelegate *delegate=(AppDelegate*)[UIApplication sharedApplication].delegate;
        
        NSString *serverUrl = [command.arguments objectAtIndex:0];
        NSString *userId=[command.arguments objectAtIndex:1];
        NSString *password=[command.arguments objectAtIndex:2];
        delegate.Id=[userId intValue];
        delegate.Url=serverUrl;
        delegate.Password=password;
        
        //open unity
        [delegate showUnityWindow];
        
        CDVPluginResult *pluginResult=[CDVPluginResult resultWithStatus:CDVCommandStatus_OK];
        [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
    }
    
    - (void) onOpenUrl:(CDVInvokedUrlCommand*) command{
        AppDelegate* delegate=(AppDelegate*)[UIApplication sharedApplication].delegate;
        delegate.tigerCityARPlugin=self;
        self.onOpenUrlCallbackId=command.callbackId;
    }
    
    - (void) onBackToCordovaView:(CDVInvokedUrlCommand*) command{
        AppDelegate* delegate=(AppDelegate*)[UIApplication sharedApplication].delegate;
        delegate.tigerCityARPlugin=self;
        self.onBackToCordovaViewCallbackId=command.callbackId;
    }
    
    - (void) fireOpenUrl:(NSString*) url{
    
        CDVPluginResult* result=[CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:url];
        [self.commandDelegate sendPluginResult:result callbackId:self.onOpenUrlCallbackId];
    }

	- (void) fireBackToCordovaView
	{
	    CDVPluginResult* result=[CDVPluginResult resultWithStatus:CDVCommandStatus_OK];
        [self.commandDelegate sendPluginResult:result callbackId:self.onBackToCordovaViewCallbackId];
    }

@end
