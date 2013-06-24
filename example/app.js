// This is a test harness for your module
// You should do something interesting in this harness 
// to test out the module and to provide instructions 
// to users on how to use it by example.


// open a single window
var win = Ti.UI.createWindow({
	backgroundColor:'white'
});
win.open();

var TiSystemSound = require('be.k0suke.tisystemsound');

var rows = [];
[
	'NEW_MAIL',
	'MAIL_SENT',
	'VOICEMAIL',
	'RECEIVED_MESSAGE',
	'SENT_MESSAGE',
	'ALARM',
	'LOW_POWER',
	'SMS_RECEIVED1',
	'SMS_RECEIVED2',
	'SMS_RECEIVED3',
	'SMS_RECEIVED4',
	'SMS_RECEIVED5',
	'SMS_RECEIVED6',
	'TWEET_SENT',
	'ANTICIPATE',
	'BLOOM',
	'CALYPSO',
	'CHOO_CHOO',
	'DESCENT',
	'FANFARE',
	'LADDER',
	'MINUET',
	'NEWS_FLASH',
	'NOIR',
	'SHERWOOD_FOREST',
	'SPELL',
	'SUSPENSE',
	'TELEGRAPH',
	'TIPTOES',
	'TYPEWRITERS',
	'UPDATE',
	'USSD',
	'SIMTOOLKITCALLDROPPED',
	'SIMTOOLKITGENERATEBEEP',
	'SIMTOOLKITNEGATIVEACK',
	'SIMTOOLKITPOSITIVEACK',
	'SIMTOOLKITSMS',
	'TINK',
	'CT_BUSY',
	'CT_CONGESTION',
	'CT_PATH_ACK',
	'CT_ERROR',
	'CT_CALL_WAITING',
	'CT_KEYTONE2',
	'LOCK',
	'UNLOCK',
	'TOCK',
	'BEEP_BEEP',
	'RINGER_CHANGED',
	'PHOTO_SHUTTER',
	'SHAKE',
	'JBL_BEGIN',
	'JBL_CONFIRM',
	'JBL_CANCEL',
	'BEGIN_RECORD',
	'END_RECORD',
	'JBL_AMBIGUOUS',
	'JBL_NO_MATCH',
	'BEGIN_VIDEO_RECORD',
	'END_VIDEO_RECORD',
	'VC_INVITATION_ACCEPTED',
	'VC_RINGING',
	'VC_ENDED',
	'DTMF_0',
	'DTMF_1',
	'DTMF_2',
	'DTMF_3',
	'DTMF_4',
	'DTMF_5',
	'DTMF_6',
	'DTMF_7',
	'DTMF_8',
	'DTMF_9',
	'DTMF_STAR',
	'DTMF_POUND',
	'LONG_LOW_SHORT_HIGH',
	'SHORT_DOUBLE_HIGH',
	'SHORT_LOG_HIGH',
	'SHORT_DOUBLE_LOW',
	'MIDDLE_9_SHORT_DOUBLE'
].forEach(function(_item){
	rows.push(Ti.UI.createTableViewRow({
		width: Ti.UI.FILL,
		height: 44,
		title: _item,
		sound: TiSystemSound[_item]
	}));
});

var tableView = Ti.UI.createTableView({
	data: rows
});
win.add(tableView);

tableView.addEventListener('click', function(e){
	TiSystemSound.play(e.rowData.sound);
});