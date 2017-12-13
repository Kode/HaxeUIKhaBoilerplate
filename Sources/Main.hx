package;

import haxe.ui.components.Button;
import haxe.ui.core.Screen;
import haxe.ui.HaxeUIApp;
import haxe.ui.Toolkit;
import kha.Assets;
import kha.Framebuffer;
import kha.Scheduler;
import kha.System;

class Main {
	public static function main() {
		System.init({title: "HaxeUI Kha", width: 1024, height: 768}, function () {
			Assets.loadEverything(function () {
				Toolkit.init();
				System.notifyOnRender(render);
				Scheduler.addTimeTask(update, 0, 1 / 60);

				var app = new HaxeUIApp();
				app.addComponent(new Button());
				app.start();
			});
		});
	}

	static function update(): Void {
		
	}

	static function render(framebuffer: Framebuffer): Void {
		var g = framebuffer.g2;
		g.begin(true, 0xFFFFFF);
		Screen.instance.renderTo(g);
		g.end();
	}
}
