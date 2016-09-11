"use strict";

gs.Sample.prototype.cut = function( newDuration ) {
	var ns, ws = this.wsample;

	if ( ws && newDuration < ws.duration ) {
		ns = gs.sampleCreate( this.gsfile, this.track.id, ws.when + newDuration );
		ns.slip( ws.offset + newDuration );
		ns.duration( ws.duration - newDuration );
		this.duration( newDuration );
		wa.composition.update( ns.wsample, "mv" );
		wa.composition.update( this.wsample, "mv" );
	}
};
