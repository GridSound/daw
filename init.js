"use strict";

ui.resize();
ui.setFilesWidth( 200 );
ui.setTrackLinesLeft( 0 );
ui.setTrackNamesWidth( 125 );
ui.setGridZoom( 1.5, 0, 0 );
ui.analyserToggle( true );
ui.toggleMagnetism( true );
ui.updateTrackLinesBg();

gs.bpm( 120 );
gs.currentTime( 0 );

ui.elBtnFiles.click();
wisdom.qS( ui.elClockUnits, ".s" ).click();
wisdom.qS( ui.elMenu, "[data-tool='paint']" ).click();

for ( var i = 0; i < 42; ++i ) {
	ui.newTrack();
}
