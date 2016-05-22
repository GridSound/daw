"use strict";

gs.bpm = function( bpm ) {
	if ( !arguments.length ) {
		return gs._bpm;
	}
	var xem = gs.currentTime() * ui.BPMem;
	gs._bpm = Math.max( 20, Math.min( bpm, 999 ) );
	ui.bpm( gs._bpm );
	gs.samples.forEach( function( s ) {
		// We don't have to call .CSS_sampleWhen, the samples doesn't move when the BPM changes.
		s.wsample.when = s.xem / ui.BPMem;
		ui.CSS_sampleWidth( s );
		ui.CSS_sampleOffset( s );
	});
	gs.currentTime( xem / ui.BPMem );
};