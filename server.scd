SuperDirt.start // start server

Server.killAll // kill server

// view samples and synths:
Quarks.gui

// change output device (note – i am using a multiple output device for screen recording audio + video)

// list all devices:
ServerOptions.devices; //all devices
ServerOptions.inDevices; //input devices
ServerOptions.outDevices; //output devices

// example:
// ServerOptions.devices -> [ Built-in Output, Soundflower (2ch), Soundflower (64ch), Loopback Audio 2, Loopback Audio, Screen Recording ]

// change output to be `Built-in Output` device in array device
Server.default.options.outDevice_(ServerOptions.outDevices[0])
Server.local.options.outDevice_(ServerOptions.outDevices[0])

// change output to be `Screen Recording`
Server.default.options.outDevice_(ServerOptions.outDevices[5])
Server.local.options.outDevice_(ServerOptions.outDevices[5])


// Setup MIDI (note – you have to set up a MIDI bus in settings

MIDIClient.init;

~midiOut1 = MIDIOut.newByName("IAC Driver", "Tidal1");

~midiOut2 = MIDIOut.newByName("IAC Driver", "Tidal2");

~dirt.soundLibrary.addMIDI(\midi1, ~midiOut1);
~dirt.soundLibrary.addMIDI(\midi2, ~midiOut2);

~midiOut1.latency = 0;
