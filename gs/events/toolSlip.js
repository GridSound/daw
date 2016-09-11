"use strict";

( function() {

var sampleSave,
	oldOffset;

ui.tool.slip = {

	mousedown: function( e ) {
		sampleSave = e.target.gsSample;
		if ( sampleSave ) {
			oldOffset = sampleSave.wsample.offset;
		}
	},
	mouseup: function() {
		if ( sampleSave ) {
			gs.history.push( {
				action: {
					func: gs.history.slip,
					sample: sampleSave,
					offsetDiff: ( oldOffset - sampleSave.wsample.offset ) 
				},
				undo: {
					func: gs.history.undoSlip,
					sample: sampleSave,
					offsetDiff: sampleSave.wsample.offset - oldOffset
				}
			} );
			gs.samplesForEach( sampleSave, function( s ) {
				wa.composition.update( s.wsample, "mv" );
			} );
		}
		sampleSave = null;
	},
	mousemove: function( e ) {
		if ( sampleSave ) {
			gs.samplesSlip( sampleSave, ui.secRel );
		}
	}
};

} )();
