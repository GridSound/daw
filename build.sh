#!/bin/bash

declare -a HEADER=(
	'<!DOCTYPE html>'
	'<html lang="en">'
	'<head>'
	'<title>GridSound</title>'
	'<meta charset="UTF-8"/>'
	'<meta name="viewport" content="width=device-width, user-scalable=no"/>'
	'<meta name="description" content="A free and Open-Source DAW (digital audio workstation)"/>'
	'<meta name="google" content="notranslate"/>'
	'<meta property="og:type" content="website"/>'
	'<meta property="og:title" content="GridSound"/>'
	'<meta property="og:url" content="https://gridsound.com/daw/"/>'
	'<meta property="og:image" content="https://gridsound.com/assets/og-image.jpg"/>'
	'<meta property="og:image:width" content="800"/>'
	'<meta property="og:image:height" content="400"/>'
	'<meta property="og:description" content="a free and open source DAW (digital audio workstation)"/>'
	'<meta name="theme-color" content="#3a5158"/>'
	'<link rel="manifest" href="manifest.json"/>'
	'<link rel="shortcut icon" href="assets/favicon.png"/>'
)

declare -a HEADEREND=(
	'</head>'
	'<body>'
	'<noscript>GridSound needs JavaScript to run</noscript>'
)

declare -a CSSfiles=(
	"gs-ui-components/gsuiIcon/gsuiIcon.css"
	"gs-ui-components/gsuiLFO/gsuiLFO.css"
	"gs-ui-components/gsuiLFO/gsuiLFO.colors.default.css"
	"gs-ui-components/gsuiClock/gsuiClock.css"
	"gs-ui-components/gsuiMixer/gsuiMixer.css"
	"gs-ui-components/gsuiCurves/gsuiCurves.css"
	"gs-ui-components/gsuiEffects/gsuiEffects.css"
	# "gs-ui-components/gsuiFxDelay/gsuiFxDelay.css"
	"gs-ui-components/gsuiFxFilter/gsuiFxFilter.css"
	"gs-ui-components/gsuiReorder/gsuiReorder.css"
	"gs-ui-components/gsuiDragline/gsuiDragline.css"
	"gs-ui-components/gsuiBlocksManager/gsuiBlocksManager.css"
	"gs-ui-components/gsuiPatternroll/gsuiPatternroll.css"
	"gs-ui-components/gsuiPianoroll/gsuiPianoroll.css"
	"gs-ui-components/gsuiPianoroll/gsuiPianoroll-block.css"
	"gs-ui-components/gsuiKeys/gsuiKeys.css"
	"gs-ui-components/gsuiOscillator/gsuiOscillator.css"
	"gs-ui-components/gsuiOscillator/gsuiOscillator.colors.default.css"
	"gs-ui-components/gsuiPeriodicWave/gsuiPeriodicWave.css"
	"gs-ui-components/gsuiSynthesizer/gsuiSynthesizer.css"
	"gs-ui-components/gsuiSynthesizer/gsuiSynthesizer.colors.default.css"
	"gs-ui-components/gsuiDotline/gsuiDotline.css"
	"gs-ui-components/gsuiPanels/gsuiPanels.css"
	"gs-ui-components/gsuiPanels/gsuiPanels.colors.default.css"
	"gs-ui-components/gsuiPopup/gsuiPopup.css"
	"gs-ui-components/gsuiSlider/gsuiSlider.css"
	"gs-ui-components/gsuiSliderGroup/gsuiSliderGroup.css"
	"gs-ui-components/gsuiTimeline/gsuiTimeline.css"
	"gs-ui-components/gsuiTrack/gsuiTrack.css"
	"gs-ui-components/gsuiWindows/gsuiWindows.css"
	"gs-ui-components/gsuiWindows/gsuiWindow.css"

	"assets/fonts/fonts.css"

	"src/css/reset.css"
	"src/css/textGlitch.css"
	"src/css/loading.css"
	"src/css/root.css"
	"src/css/app.css"
	"src/css/head.css"
	"src/css/cmps.css"
	"src/css/popup.css"
	"src/css/window.css"
	"src/css/windows.css"
	"src/css/cmp.css"
	"src/css/synth.css"
	"src/css/blocks.css"
	"src/css/history.css"
	"src/css/pattern.css"
	"src/css/version.css"
	"src/css/placeholder.css"
	"src/css/headDropdown.css"
	"src/css/historyAction.css"
	"src/css/pianorollForbidden.css"
)

declare -a HTMLfiles=(
	"src/html/loading.html"
	"src/html/app.html"
	"src/html/head.html"
	"src/html/cmp.html"
	"src/html/cmps.html"
	"src/html/synth.html"
	"src/html/pattern.html"
	"src/html/history.html"
	"src/html/historyAction.html"
	"src/html/windows/mixer.html"
	"src/html/windows/synth.html"
	"src/html/windows/blocks.html"
	"src/html/windows/pianoroll.html"
	"src/html/windows/patternroll.html"
	"src/html/windows/effects.html"
	"src/html/popups/auth.html"
	"src/html/popups/open.html"
	"src/html/popups/about.html"
	"src/html/popups/tempo.html"
	"src/html/popups/render.html"
	"src/html/popups/settings.html"
	"src/html/popups/shortcuts.html"
	"src/html/popups/selectChan.html"

	"gs-ui-components/gsuiLFO/gsuiLFO.html"
	"gs-ui-components/gsuiKeys/gsuiKeys.html"
	"gs-ui-components/gsuiClock/gsuiClock.html"
	"gs-ui-components/gsuiMixer/gsuiMixer.html"
	"gs-ui-components/gsuiPopup/gsuiPopup.html"
	"gs-ui-components/gsuiTrack/gsuiTrack.html"
	"gs-ui-components/gsuiCurves/gsuiCurves.html"
	"gs-ui-components/gsuiSlider/gsuiSlider.html"
	"gs-ui-components/gsuiWindows/gsuiWindow.html"
	"gs-ui-components/gsuiEffects/gsuiEffects.html"
	# "gs-ui-components/gsuiFxDelay/gsuiFxDelay.html"
	"gs-ui-components/gsuiFxFilter/gsuiFxFilter.html"
	"gs-ui-components/gsuiDragline/gsuiDragline.html"
	"gs-ui-components/gsuiTimeline/gsuiTimeline.html"
	"gs-ui-components/gsuiPianoroll/gsuiPianoroll.html"
	"gs-ui-components/gsuiTracklist/gsuiTracklist.html"
	"gs-ui-components/gsuiOscillator/gsuiOscillator.html"
	"gs-ui-components/gsuiPatternroll/gsuiPatternroll.html"
	"gs-ui-components/gsuiSliderGroup/gsuiSliderGroup.html"
	"gs-ui-components/gsuiSynthesizer/gsuiSynthesizer.html"
)

declare -a JSfilesProd=(
	"src/initServiceWorker.js"
)

declare -a JSfiles=(
	"gs-data/gsdata/gsdata.js"
	"gs-data/gsdataClock/gsdataClock.js"
	"gs-data/gsdataSynth/gsdataSynth.js"
	"gs-data/gsdataSynth/gsdataSynth.actions.js"
	"gs-data/GSDataDrums/GSDataDrums.js"
	"gs-data/gsdataLFO/gsdataLFO.js"
	"gs-data/gsdataLFO/gsdataLFO.actions.js"
	"gs-data/gsdataOscillator/gsdataOscillator.js"
	"gs-data/gsdataOscillator/gsdataOscillator.actions.js"
	"gs-data/gsdataMixer/gsdataMixer.js"
	"gs-data/gsdataMixer/gsdataMixer.actions.js"
	"gs-data/gsdataEffects/gsdataEffects.js"
	"gs-data/gsdataEffects/gsdataEffects.actions.js"
	# "gs-data/gsdataFxDelay/gsdataFxDelay.js"
	# "gs-data/gsdataFxDelay/gsdataFxDelay.actions.js"
	"gs-data/gsdataFxFilter/gsdataFxFilter.js"
	"gs-data/gsdataFxFilter/gsdataFxFilter.actions.js"

	"daw-core/src/DAWCore.js"
	"daw-core/src/DAWCore.prototype.get.js"
	"daw-core/src/Buffers.js"
	"daw-core/src/LocalStorage.js"
	"daw-core/src/Destination.js"
	"daw-core/src/History.js"
	"daw-core/src/History.prototype.nameAction.js"
	"daw-core/src/Pianoroll.js"
	"daw-core/src/Composition.js"
	"daw-core/src/Composition.epure.js"
	"daw-core/src/Composition.format.js"
	"daw-core/src/Composition.prototype.change.js"
	"daw-core/src/json/composition.js"
	"daw-core/src/json/channels.js"
	"daw-core/src/json/channel.js"
	"daw-core/src/json/synth.js"
	"daw-core/src/json/lfo.js"
	"daw-core/src/utils/uuid.js"
	"daw-core/src/utils/time.js"
	"daw-core/src/utils/trim2.js"
	"daw-core/src/utils/uniqueName.js"
	"daw-core/src/utils/composeUndo.js"
	"daw-core/src/utils/castToNumber.js"
	"daw-core/src/actions/addCompositionsFromLocalStorage.js"
	"daw-core/src/actions/addNewComposition.js"
	"daw-core/src/actions/addComposition.js"
	"daw-core/src/actions/addCompositionByJSON.js"
	"daw-core/src/actions/addCompositionByBlob.js"
	"daw-core/src/actions/addCompositionByURL.js"
	"daw-core/src/actions/abortWAVExport.js"
	"daw-core/src/actions/dropAudioFiles.js"
	"daw-core/src/actions/liveChangeSynth.js"
	"daw-core/src/actions/liveChangeEffect.js"
	"daw-core/src/actions/liveChangeChannel.js"
	"daw-core/src/actions/exportCompositionToWAV.js"
	"daw-core/src/actions/exportCompositionToJSON.js"
	"daw-core/src/actions/changePatternSynth.js"
	"daw-core/src/actions/changePatternKeys.js"
	"daw-core/src/actions/deleteComposition.js"
	"daw-core/src/actions/closeComposition.js"
	"daw-core/src/actions/nameComposition.js"
	"daw-core/src/actions/openComposition.js"
	"daw-core/src/actions/saveComposition.js"
	"daw-core/src/actions/changeChannels.js"
	"daw-core/src/actions/newComposition.js"
	"daw-core/src/actions/changeEffects.js"
	"daw-core/src/actions/removePattern.js"
	"daw-core/src/actions/clonePattern.js"
	"daw-core/src/actions/closePattern.js"
	"daw-core/src/actions/changeSynth.js"
	"daw-core/src/actions/changeTempo.js"
	"daw-core/src/actions/removeSynth.js"
	"daw-core/src/actions/openPattern.js"
	"daw-core/src/actions/namePattern.js"
	"daw-core/src/actions/newPattern.js"
	"daw-core/src/actions/openSynth.js"
	"daw-core/src/actions/nameSynth.js"
	"daw-core/src/actions/newSynth.js"

	"gs-ui-components/gsuiLFO/gsuiLFO.js"
	"gs-ui-components/gsuiClock/gsuiClock.js"
	"gs-ui-components/gsuiMixer/gsuiMixer.js"
	"gs-ui-components/gsuiCurves/gsuiCurves.js"
	"gs-ui-components/gsuiEffects/gsuiEffects.js"
	# "gs-ui-components/gsuiFxDelay/gsuiFxDelay.js"
	"gs-ui-components/gsuiFxFilter/gsuiFxFilter.js"
	"gs-ui-components/gsuiReorder/gsuiReorder.js"
	"gs-ui-components/gsuiReorder/gsuiReorder.listReorder.js"
	"gs-ui-components/gsuiReorder/gsuiReorder.listComputeOrderChange.js"
	"gs-ui-components/gsuiDragline/gsuiDragline.js"
	"gs-ui-components/gsuiBeatlines/gsuiBeatlines.js"
	"gs-ui-components/gsuiBlocksManager/gsuiBlocksManager.js"
	"gs-ui-components/gsuiBlocksManager/gsuiBlocksManager.prototype.__mousedown.js"
	"gs-ui-components/gsuiBlocksManager/gsuiBlocksManager.prototype.__mousemove.js"
	"gs-ui-components/gsuiBlocksManager/gsuiBlocksManager.prototype.__mouseup.js"
	"gs-ui-components/gsuiPatternroll/gsuiPatternroll.js"
	"gs-ui-components/gsuiPianoroll/gsuiPianoroll.js"
	"gs-ui-components/gsuiPianoroll/gsuiPianoroll.prototype.managercall.js"
	"gs-ui-components/gsuiKeys/gsuiKeys.js"
	"gs-ui-components/gsuiKeys/gsuiKeys.keyNames.js"
	"gs-ui-components/gsuiKeys/gsuiKeys.keyboardToKey.js"
	"gs-ui-components/gsuiOscillator/gsuiOscillator.js"
	"gs-ui-components/gsuiPeriodicWave/gsuiPeriodicWave.js"
	"gs-ui-components/gsuiSynthesizer/gsuiSynthesizer.js"
	"gs-ui-components/gsuiDotline/gsuiDotline.js"
	"gs-ui-components/gsuiPanels/gsuiPanels.js"
	"gs-ui-components/gsuiPopup/gsuiPopup.js"
	"gs-ui-components/gsuiSlider/gsuiSlider.js"
	"gs-ui-components/gsuiSliderGroup/gsuiSliderGroup.js"
	"gs-ui-components/gsuiTimeline/gsuiTimeline.js"
	"gs-ui-components/gsuiTrack/gsuiTrack.js"
	"gs-ui-components/gsuiTracklist/gsuiTracklist.js"
	"gs-ui-components/gsuiAnalyser/gsuiAnalyser.js"
	"gs-ui-components/gsuiSpectrum/gsuiSpectrum.js"
	"gs-ui-components/gsuiSpectrum/gsuiSpectrum.draw.js"
	"gs-ui-components/gsuiSVGDefs/gsuiSVGDefs.js"
	"gs-ui-components/gsuiWaveform/gsuiWaveform.js"
	"gs-ui-components/gsuiWaveform/gsuiWaveform.draw.js"
	"gs-ui-components/gsuiWaveforms/gsuiWaveforms.js"
	"gs-ui-components/gsuiKeysforms/gsuiKeysforms.js"
	"gs-ui-components/gsuiDrumsforms/gsuiDrumsforms.js"
	"gs-ui-components/gsuiWindows/gsuiWindows.js"
	"gs-ui-components/gsuiWindows/gsuiWindow.js"

	"gs-webaudio-library/gswaLFO/gswaLFO.js"
	"gs-webaudio-library/gswaMixer/gswaMixer.js"
	"gs-webaudio-library/gswaSynth/gswaSynth.js"
	"gs-webaudio-library/gswaSynth/gswaSynth.midiKeyToHz.js"
	"gs-webaudio-library/gswaKeysScheduler/gswaKeysScheduler.js"
	"gs-webaudio-library/gswaBPMTap/gswaBPMTap.js"
	"gs-webaudio-library/gswaEffects/gswaEffects.js"
	# "gs-webaudio-library/gswaFxDelay/gswaFxDelay.js"
	"gs-webaudio-library/gswaFxFilter/gswaFxFilter.js"
	"gs-webaudio-library/gswaScheduler/gswaScheduler.js"
	"gs-webaudio-library/gswaEncodeWAV/gswaEncodeWAV.js"
	"gs-webaudio-library/gswaStereoPanner/gswaStereoPanner.js"
	"gs-webaudio-library/gswaPeriodicWaves/gswaPeriodicWaves.js"
	"gs-webaudio-library/gswaPeriodicWaves/gswaPeriodicWaves.list.js"

	"gs-api-client/gsapiClient.js"

	"src/ui/dom.js"
	"src/ui/textGlitch.js"
	"src/ui/loading.js"
	"src/ui/auth.js"
	"src/ui/drop.js"
	"src/ui/title.js"
	"src/ui/synth.js"
	"src/ui/mixer.js"
	"src/ui/cookie.js"
	"src/ui/blocks.js"
	"src/ui/synths.js"
	"src/ui/effects.js"
	"src/ui/history.js"
	"src/ui/windows.js"
	"src/ui/patterns.js"
	"src/ui/controls.js"
	"src/ui/keyboard.js"
	"src/ui/openPopup.js"
	"src/ui/pianoroll.js"
	"src/ui/aboutPopup.js"
	"src/ui/patternroll.js"
	"src/ui/renderPopup.js"
	"src/ui/mainAnalyser.js"
	"src/ui/compositions.js"
	"src/ui/settingsPopup.js"
	"src/ui/shortcutsPopup.js"
	"src/ui/compositionChanged.js"
	"src/run.js"
)

jsMainFile() {
	echo '"use strict";'
	cat "${JSfilesProd[@]}" | grep -v '"use strict";'
	cat "${JSfiles[@]}" | grep -v '"use strict";'
}

buildDev() {
	filename='index.html'
	echo "Build $filename"
	printf '%s\n' "${HEADER[@]}" > $filename;
	printf '<link rel="stylesheet" href="%s"/>\n' "${CSSfiles[@]}" >> $filename;
	printf '%s\n' "${HEADEREND[@]}" >> $filename;
	cat "${HTMLfiles[@]}" >> $filename
	echo '<script>function lg( a ) { return console.log.apply( console, arguments ), a; }</script>' >> $filename
	printf '<script src="%s"></script>\n' "${JSfiles[@]}" >> $filename;
	echo '</body>' >> $filename
	echo '</html>' >> $filename
}

buildProd() {
	filename='index-prod.html'
	echo "Build $filename"
	printf '%s\n' "${HEADER[@]}" > $filename;
	echo '<style>' >> $filename
	cat "${CSSfiles[@]}" >> $filename
	echo '</style>' >> $filename
	printf '%s\n' "${HEADEREND[@]}" >> $filename;
	cat "${HTMLfiles[@]}" >> $filename
	echo '<script>' >> $filename
	jsMainFile >> $filename
	echo '</script>' >> $filename
	echo '</body>' >> $filename
	echo '</html>' >> $filename
}

buildTests() {
	filename='tests.html'
	echo "Build $filename"
	printf '%s\n' "${HEADER[@]}" > $filename
	echo '<link rel="stylesheet" href="assets/qunit/qunit-2.9.2.css"/>' >> $filename
	echo '<link rel="stylesheet" href="tests/tests.css"/>' >> $filename
	echo '<style>' >> $filename
	cat "${CSSfiles[@]}" >> $filename
	echo '</style>' >> $filename
	printf '%s\n' "${HEADEREND[@]}" >> $filename
	echo '<div id="qunit"></div>' >> $filename
	echo '<div id="qunit-fixture"></div>' >> $filename
	cat "${HTMLfiles[@]}" >> $filename
	echo '<script>' >> $filename
	jsMainFile >> $filename
	echo '</script>' >> $filename
	echo '<script src="assets/qunit/qunit-2.9.2.js"></script>' >> $filename
	echo '<script src="tests/tests.js"></script>' >> $filename
	echo '</body>' >> $filename
	echo '</html>' >> $filename
}

lint() {
	stylelint "${CSSfiles[@]}"
	jsMainFile > __lintMain.js
	eslint __lintMain.js && rm __lintMain.js
}

updateDep() {
	git submodule init
	git submodule update --remote
}

if [ $# = 0 ]; then
	echo '          -------------------------------'
	echo '        .:: GridSound build shellscript ::.'
	echo '        -----------------------------------'
	echo ''
	echo './build.sh dev ---> create "index.html" for development'
	echo './build.sh prod --> create "index-prod.html" for production'
	echo './build.sh tests -> create "tests.html" for testing'
	echo './build.sh lint --> launch the JS/CSS linters (ESLint and Stylelint)'
	echo './build.sh dep ---> update all the submodules'
elif [ $1 = "dep" ]; then
	updateDep
elif [ $1 = "dev" ]; then
	buildDev
elif [ $1 = "prod" ]; then
	buildProd
elif [ $1 = "tests" ]; then
	buildTests
elif [ $1 = "lint" ]; then
	lint
fi
