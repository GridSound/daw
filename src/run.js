"use strict";

UIloading().then( UIrun ).then( UIloaded );

function UIrun() {
	const DAW = new DAWCore(),
		hash = new Map( location.hash
			.substr( 1 )
			.split( "&" )
			.map( kv => kv.split( "=" ) )
		);

	gswaPeriodicWaves.list.forEach( ( w, name ) => {
		gsuiPeriodicWave.addWave( name, w.real, w.imag );
	} );

	window.DAW = DAW;
	window.VERSION = "0.28.3";

	UIdomInit();
	UIwindowsInit();

	UIauthInit();
	UIdrumsInit();
	UImixerInit();
	UIsynthInit();
	UIblocksInit();
	UIsynthsInit();
	UIcookieInit();
	UIeffectsInit();
	UIhistoryInit();
	UIversionsInit();
	UIcontrolsInit();
	UIkeyboardInit();
	UIpatternsInit();
	UIpianorollInit();
	UIaboutPopupInit();
	UIpatternrollInit();
	UIrenderPopupInit();
	UImainAnalyserInit();
	UImidiPopupInit();
	UIcompositionsInit();
	UIsettingsPopupInit();
	UIshortcutsPopupInit();

	window.onblur = () => UIkeys.midiReleaseAllKeys();
	window.onkeyup = UIkeyboardUp;
	window.onkeydown = UIkeyboardDown;
	window.onbeforeunload = UIcompositionBeforeUnload;
	document.body.ondrop = UIdrop;
	document.body.ondragover = () => false;
	document.addEventListener( "wheel", e => {
		if ( e.ctrlKey ) {
			e.preventDefault();
		}
	}, { passive: false } );

	DAW.cb.focusOn = UIcontrolsFocusOn;
	DAW.cb.currentTime = UIcontrolsCurrentTime;
	DAW.cb.clockUpdate = UIcontrolsClockUpdate;
	DAW.cb.buffersLoaded = UIpatternsBuffersLoaded;
	DAW.cb.compositionAdded = UIcompositionAdded;
	DAW.cb.compositionOpened = UIcompositionOpened;
	DAW.cb.compositionClosed = UIcompositionClosed;
	DAW.cb.compositionChanged = UIcompositionChanged;
	DAW.cb.compositionDeleted = UIcompositionDeleted;
	DAW.cb.compositionLoading = UIcompositionLoading;
	DAW.cb.compositionSavedStatus = UIcompositionSavedStatus;
	DAW.cb.compositionSavingPromise = UIauthSaveComposition;
	DAW.cb.onstartdrum = rowId => UIdrums.onstartdrum( rowId );
	DAW.cb.onstopdrumrow = rowId => UIdrums.onstopdrumrow( rowId );
	DAW.cb.analyserFilled = UImainAnalyser.draw.bind( UImainAnalyser );
	DAW.cb.channelAnalyserFilled = UImixer.updateAudioData.bind( UImixer );
	DAW.cb.pause =
	DAW.cb.stop = () => DOM.play.dataset.icon = "play";
	DAW.cb.play = () => DOM.play.dataset.icon = "pause";

	DOM.versionNum.textContent =
	DOM.headVersionNum.textContent = window.VERSION;

	DOM.winBtnsMap.forEach( ( btn, id ) => id !== "effects" && id !== "drums" && btn.click() );

	UIauthGetMe();
	DAW.addCompositionsFromLocalStorage();

	if ( !hash.has( "cmp" ) ) {
		UIcompositionClickNewLocal();
	} else {
		DAW.addCompositionByURL( hash.get( "cmp" ) )
			.catch( e => {
				console.error( e );
				return DAW.addNewComposition();
			} )
			.then( cmp => DAW.openComposition( "local", cmp.id ) );
		location.hash = "";
	}
}
