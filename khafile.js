let project = new Project('HaxeUI in Kha');
project.addAssets('Assets/**');
project.addSources('Sources');
project.addLibrary('haxeui-core');
project.addLibrary('haxeui-kha');
project.addLibrary('hscript');
resolve(project);
