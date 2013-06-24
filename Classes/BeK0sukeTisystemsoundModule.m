/**
 * Your Copyright Here
 *
 * Appcelerator Titanium is Copyright (c) 2009-2010 by Appcelerator, Inc.
 * and licensed under the Apache Public License (version 2)
 */
#import "BeK0sukeTisystemsoundModule.h"
#import "TiBase.h"
#import "TiHost.h"
#import "TiUtils.h"

@implementation BeK0sukeTisystemsoundModule

#pragma mark Internal

// this is generated for your module, please do not change it
-(id)moduleGUID
{
	return @"e866eb50-fc5b-4cef-b0de-6a63c6c62641";
}

// this is generated for your module, please do not change it
-(NSString*)moduleId
{
	return @"be.k0suke.tisystemsound";
}

#pragma mark Lifecycle

-(void)startup
{
	// this method is called when the module is first loaded
	// you *must* call the superclass
	[super startup];
	
	NSLog(@"[INFO] %@ loaded",self);
}

-(void)shutdown:(id)sender
{
	// this method is called when the module is being unloaded
	// typically this is during shutdown. make sure you don't do too
	// much processing here or the app will be quit forceably
	
	// you *must* call the superclass
	[super shutdown:sender];
}

#pragma mark Cleanup 

-(void)dealloc
{
	// release any resources that have been retained by the module
	[super dealloc];
}

#pragma mark Internal Memory Management

-(void)didReceiveMemoryWarning:(NSNotification*)notification
{
	// optionally release any resources that can be dynamically
	// reloaded once memory is available - such as caches
	[super didReceiveMemoryWarning:notification];
}

#pragma mark Listener Notifications

-(void)_listenerAdded:(NSString *)type count:(int)count
{
	if (count == 1 && [type isEqualToString:@"my_event"])
	{
		// the first (of potentially many) listener is being added 
		// for event named 'my_event'
	}
}

-(void)_listenerRemoved:(NSString *)type count:(int)count
{
	if (count == 0 && [type isEqualToString:@"my_event"])
	{
		// the last listener called for event named 'my_event' has
		// been removed, we can optionally clean up any resources
		// since no body is listening at this point for that event
	}
}

#pragma Public APIs

-(id)example:(id)args
{
	// example method
	return @"hello world";
}

-(id)exampleProp
{
	// example property getter
	return @"hello world";
}

-(void)setExampleProp:(id)value
{
	// example property setter
}

-(void)play:(id)arg
{
    ENSURE_SINGLE_ARG_OR_NIL(arg, NSNumber);
    ENSURE_UI_THREAD(play, arg);
    
    if ([TiUtils intValue:arg])
    {
        AudioServicesPlaySystemSound([TiUtils intValue:arg]);
    }
}

MAKE_SYSTEM_PROP(NEW_MAIL, 1000);
MAKE_SYSTEM_PROP(MAIL_SENT, 1001);
MAKE_SYSTEM_PROP(VOICEMAIL, 1002);
MAKE_SYSTEM_PROP(RECEIVED_MESSAGE, 1003);
MAKE_SYSTEM_PROP(SENT_MESSAGE, 1004);
MAKE_SYSTEM_PROP(ALARM, 1005);
MAKE_SYSTEM_PROP(LOW_POWER, 1006);
MAKE_SYSTEM_PROP(SMS_RECEIVED1, 1007);
MAKE_SYSTEM_PROP(SMS_RECEIVED2, 1008);
MAKE_SYSTEM_PROP(SMS_RECEIVED3, 1009);
MAKE_SYSTEM_PROP(SMS_RECEIVED4, 1010);
MAKE_SYSTEM_PROP(SMS_RECEIVED5, 1013);
MAKE_SYSTEM_PROP(SMS_RECEIVED6, 1014);
MAKE_SYSTEM_PROP(TWEET_SENT, 1016);
MAKE_SYSTEM_PROP(ANTICIPATE, 1020);
MAKE_SYSTEM_PROP(BLOOM, 1021);
MAKE_SYSTEM_PROP(CALYPSO, 1022);
MAKE_SYSTEM_PROP(CHOO_CHOO, 1023);
MAKE_SYSTEM_PROP(DESCENT, 1024);
MAKE_SYSTEM_PROP(FANFARE, 1025);
MAKE_SYSTEM_PROP(LADDER, 1026);
MAKE_SYSTEM_PROP(MINUET, 1027);
MAKE_SYSTEM_PROP(NEWS_FLASH, 1028);
MAKE_SYSTEM_PROP(NOIR, 1029);
MAKE_SYSTEM_PROP(SHERWOOD_FOREST, 1030);
MAKE_SYSTEM_PROP(SPELL, 1031);
MAKE_SYSTEM_PROP(SUSPENSE, 1032);
MAKE_SYSTEM_PROP(TELEGRAPH, 1033);
MAKE_SYSTEM_PROP(TIPTOES, 1034);
MAKE_SYSTEM_PROP(TYPEWRITERS, 1035);
MAKE_SYSTEM_PROP(UPDATE, 1036);
MAKE_SYSTEM_PROP(USSD, 1050);
MAKE_SYSTEM_PROP(SIMTOOLKITCALLDROPPED, 1051);
MAKE_SYSTEM_PROP(SIMTOOLKITGENERATEBEEP, 1052);
MAKE_SYSTEM_PROP(SIMTOOLKITNEGATIVEACK, 1053);
MAKE_SYSTEM_PROP(SIMTOOLKITPOSITIVEACK, 1054);
MAKE_SYSTEM_PROP(SIMTOOLKITSMS, 1055);
MAKE_SYSTEM_PROP(TINK, 1057);
MAKE_SYSTEM_PROP(CT_BUSY, 1070);
MAKE_SYSTEM_PROP(CT_CONGESTION, 1071);
MAKE_SYSTEM_PROP(CT_PATH_ACK, 1072);
MAKE_SYSTEM_PROP(CT_ERROR, 1073);
MAKE_SYSTEM_PROP(CT_CALL_WAITING, 1074);
MAKE_SYSTEM_PROP(CT_KEYTONE2, 1075);
MAKE_SYSTEM_PROP(LOCK, 1100);
MAKE_SYSTEM_PROP(UNLOCK, 1101);
MAKE_SYSTEM_PROP(TOCK, 1104);
MAKE_SYSTEM_PROP(BEEP_BEEP, 1106);
MAKE_SYSTEM_PROP(RINGER_CHANGED, 1107);
MAKE_SYSTEM_PROP(PHOTO_SHUTTER, 1108);
MAKE_SYSTEM_PROP(SHAKE, 1109);
MAKE_SYSTEM_PROP(JBL_BEGIN, 1110);
MAKE_SYSTEM_PROP(JBL_CONFIRM, 1111);
MAKE_SYSTEM_PROP(JBL_CANCEL, 1112);
MAKE_SYSTEM_PROP(BEGIN_RECORD, 1113);
MAKE_SYSTEM_PROP(END_RECORD, 1114);
MAKE_SYSTEM_PROP(JBL_AMBIGUOUS, 1115);
MAKE_SYSTEM_PROP(JBL_NO_MATCH, 1116);
MAKE_SYSTEM_PROP(BEGIN_VIDEO_RECORD, 1117);
MAKE_SYSTEM_PROP(END_VIDEO_RECORD, 1118);
MAKE_SYSTEM_PROP(VC_INVITATION_ACCEPTED, 1150);
MAKE_SYSTEM_PROP(VC_RINGING, 1151);
MAKE_SYSTEM_PROP(VC_ENDED, 1152);
MAKE_SYSTEM_PROP(DTMF_0, 1200);
MAKE_SYSTEM_PROP(DTMF_1, 1201);
MAKE_SYSTEM_PROP(DTMF_2, 1202);
MAKE_SYSTEM_PROP(DTMF_3, 1203);
MAKE_SYSTEM_PROP(DTMF_4, 1204);
MAKE_SYSTEM_PROP(DTMF_5, 1205);
MAKE_SYSTEM_PROP(DTMF_6, 1206);
MAKE_SYSTEM_PROP(DTMF_7, 1207);
MAKE_SYSTEM_PROP(DTMF_8, 1208);
MAKE_SYSTEM_PROP(DTMF_9, 1209);
MAKE_SYSTEM_PROP(DTMF_STAR, 1210);
MAKE_SYSTEM_PROP(DTMF_POUND, 1211);
MAKE_SYSTEM_PROP(LONG_LOW_SHORT_HIGH, 1254);
MAKE_SYSTEM_PROP(SHORT_DOUBLE_HIGH, 1255);
MAKE_SYSTEM_PROP(SHORT_LOG_HIGH, 1256);
MAKE_SYSTEM_PROP(SHORT_DOUBLE_LOW, 1257);
MAKE_SYSTEM_PROP(MIDDLE_9_SHORT_DOUBLE, 1259);

@end
