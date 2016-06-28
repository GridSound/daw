(function() {
  var template = Handlebars.template, templates = Handlebars.templates = Handlebars.templates || {};
templates['_app'] = template({"compiler":[7,">= 4.0.0"],"main":function(container,depth0,helpers,partials,data) {
    var stack1;

  return ((stack1 = container.invokePartial(partials.about,depth0,{"name":"about","data":data,"helpers":helpers,"partials":partials,"decorators":container.decorators})) != null ? stack1 : "")
    + ((stack1 = container.invokePartial(partials.visual,depth0,{"name":"visual","data":data,"helpers":helpers,"partials":partials,"decorators":container.decorators})) != null ? stack1 : "")
    + ((stack1 = container.invokePartial(partials.menu,depth0,{"name":"menu","data":data,"helpers":helpers,"partials":partials,"decorators":container.decorators})) != null ? stack1 : "")
    + ((stack1 = container.invokePartial(partials.files,depth0,{"name":"files","data":data,"helpers":helpers,"partials":partials,"decorators":container.decorators})) != null ? stack1 : "")
    + ((stack1 = container.invokePartial(partials.grid,depth0,{"name":"grid","data":data,"helpers":helpers,"partials":partials,"decorators":container.decorators})) != null ? stack1 : "");
},"usePartial":true,"useData":true});
templates['about'] = template({"compiler":[7,">= 4.0.0"],"main":function(container,depth0,helpers,partials,data) {
    return "<div id=\"about\">\n	<div class=\"container\">\n		<div class=\"logo-cell\">\n			<div class=\"logo\"></div>\n		</div>\n		<div class=\"content-cell\">\n			<div class=\"credits\">\n				<p>\n					<a target=\"_blank\" href=\"//github.com/GridSound/gridsound.github.io\">GridSound</a> and its\n					<a target=\"_blank\" href=\"//github.com/GridSound/webaudio-library\">WebAudio-library</a>\n					are two distinct open-source projects hosted on <i class=\"fa fa-github\"></i> GitHub and maintened by&nbsp;:\n				</p>\n				<a target=\"_blank\" class=\"contributor\" href=\"//github.com/Misty418\">\n					<img src=\"//avatars0.githubusercontent.com/u/3739218?v=3&s=50\"/>\n					<span class=\"name\"><b>Misty418</b> (Mélanie Ducani)</span>\n				</a><br/>\n				<a target=\"_blank\" class=\"contributor\" href=\"//github.com/Mr21\">\n					<img src=\"//avatars0.githubusercontent.com/u/850754?v=3&s=50\"/>\n					<span class=\"name\"><b>Mr21</b> (Thomas Tortorini)</span>\n				</a>\n			</div>\n		</div>\n	</div>\n</div>\n";
},"useData":true});
templates['file'] = template({"compiler":[7,">= 4.0.0"],"main":function(container,depth0,helpers,partials,data) {
    var helper;

  return "<a class=\"sample\" draggable=\"true\">\n	<span class=\"name text-overflow\">\n		<i class=\"to-load fa fa-fw\"></i>\n		<span>"
    + container.escapeExpression(((helper = (helper = helpers.name || (depth0 != null ? depth0.name : depth0)) != null ? helper : helpers.helperMissing),(typeof helper === "function" ? helper.call(depth0 != null ? depth0 : {},{"name":"name","hash":{},"data":data}) : helper)))
    + "</span>\n	</span>\n</a>\n";
},"useData":true});
templates['files'] = template({"compiler":[7,">= 4.0.0"],"main":function(container,depth0,helpers,partials,data) {
    return "<div id=\"files\">\n	<div class=\"extend cursor-ewResize\" data-mousemove-fn=\"files\"></div>\n	<div class=\"filelist\">\n		<input type=\"file\"/>\n	</div>\n	<div class=\"placeholder\">\n		<i class=\"fa fa-file-audio-o\"></i><br/>\n		<b>Drop audio files here</b>\n	</div>\n</div>\n";
},"useData":true});
templates['grid'] = template({"compiler":[7,">= 4.0.0"],"main":function(container,depth0,helpers,partials,data) {
    return "<div id=\"grid\">\n	<div class=\"emWrapper\">\n		<div class=\"header\">\n			<div class=\"timeline\">\n				<span class=\"timeArrow\"></span>\n			</div>\n		</div>\n		<div class=\"trackList\">\n			<div class=\"cols\">\n				<div class=\"colA trackNames\">\n					<div class=\"extend cursor-ewResize\" data-mousemove-fn=\"trackNames\"></div>\n				</div>\n				<div class=\"colB\">\n					<div class=\"trackLinesBg\"></div>\n					<div class=\"trackLines\">\n						<div class=\"timeCursor\"></div>\n					</div>\n				</div>\n			</div>\n		</div>\n	</div>\n</div>\n";
},"useData":true});
templates['menu'] = template({"compiler":[7,">= 4.0.0"],"main":function(container,depth0,helpers,partials,data) {
    return "<div id=\"menu\">\n	<a class=\"btn play fa fa-play\" title=\"Play/pause (Enter)\"></a>\n	<a class=\"btn stop fa fa-stop\" title=\"Stop (Backspace)\"></a>\n	<div class=\"bpm\" title=\"Beats per minute (Scroll to change)\">\n		<span class=\"text\">\n			<a class=\"a-bpm\">\n				<i class=\"fa\"></i>\n				<span class=\"int\"></span>\n				<span class=\"dec\"></span>\n			</a>\n			<div class=\"bpm-list\">\n				<a>80</a><a>90</a><a>100</a>\n				<a>110</a><a>120</a><a>130</a>\n				<a>140</a><a>150</a><a>160</a>\n			</div>\n			<span class=\"unit\">&nbsp;bpm</span>\n		</span>\n	</div>\n	<div class=\"tools\">\n		<a data-option=\"magnet\" class=\"btn fa fa-fw fa-magnet magnet\" title=\"Toggle magnetism (G)\"></a>\n		<a data-tool=\"select\" class=\"btn fa fa-fw fa-mouse-pointer\" title=\"Select (V)\"></a>\n		<a data-tool=\"paint\"  class=\"btn fa fa-fw fa-paint-brush\" title=\"Paint (B)\"></a>\n		<a data-tool=\"delete\" class=\"btn fa fa-fw fa-eraser\" title=\"Delete (D)\"></a>\n		<a data-tool=\"mute\"   class=\"btn fa fa-fw fa-volume-off\" title=\"Mute (M)\"></a>\n		<a data-tool=\"slip\"   class=\"btn fa fa-fw fa-exchange\" title=\"Slip (S)\"></a>\n		<a data-tool=\"cut\"    class=\"btn fa fa-fw fa-scissors\" title=\"Cut (C)\"></a>\n		<a data-tool=\"hand\"   class=\"btn fa fa-fw fa-hand-paper-o\" title=\"Hand (H)\"></a>\n		<a data-tool=\"zoom\"   class=\"btn fa fa-fw fa-search last\" title=\"Zoom (Z)\"></a>\n		<a data-edit=\"save\"   class=\"btn fa fa-fw fa-save save\" title=\"Save (Ctrl+S)\"></a>\n	</div>\n	<a href=\"#about\" class=\"about fa fa-question\" title=\"About\"></a>\n</div>\n";
},"useData":true});
templates['sample'] = template({"compiler":[7,">= 4.0.0"],"main":function(container,depth0,helpers,partials,data) {
    var helper;

  return "<div class=\"sample\">\n	<div class=\"waveformWrapper\">\n		<canvas class=\"waveform\"></canvas>\n	</div>\n	<span class=\"name text-overflow\">"
    + container.escapeExpression(((helper = (helper = helpers.name || (depth0 != null ? depth0.name : depth0)) != null ? helper : helpers.helperMissing),(typeof helper === "function" ? helper.call(depth0 != null ? depth0 : {},{"name":"name","hash":{},"data":data}) : helper)))
    + "</span>\n	<div class=\"crop start\"></div>\n	<div class=\"crop end\"></div>\n</div>\n";
},"useData":true});
templates['visual'] = template({"compiler":[7,">= 4.0.0"],"main":function(container,depth0,helpers,partials,data) {
    return "<div id=\"visual\">\n	<canvas></canvas>\n	<div class=\"clock\">\n		<span class=\"min\"></span>\n		<span class=\"sec\"></span>\n		<span class=\"ms\"></span>\n	</div>\n</div>\n";
},"useData":true});
})();