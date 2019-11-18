Quarks.checkForUpdates({Quarks.install("SuperDirt", "v1.1.1"); thisProcess.recompile()})

Platform.userExtensionDir

SuperDirt.start;

Quarks.gui;

(
//forward OSC message (localhost, port 3333)
var addr = NetAddr.new("192.168.0.113", 10000);
OSCdef(\tidalplay2, {
  arg msg;
  addr.sendMsg("/play2", *msg);
}, '/play2', n);
)