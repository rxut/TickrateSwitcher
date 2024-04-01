Tickrate Switcher is a simple UT99 mutator that dynamically changes the server tickrate based on Level Info URL parameters.

**FEATURES:**

- Set your server Tickrate based on different game mods and voting options
- TickrateSwitcher adjusts both NetServerMaxTickRate and LanServerMaxTickRate for the current NetworkDevice and DemoRecordingDevice
- When the tickrate is switched, a message will show in the server log

**SERVER-SIDE INSTALLATION:**

Step 1) Copy TickrateSwitcher.u into the System directory of your UT99 server.

Step 2) Ensure the TickrateSwitcher mutator is included in the server mutator list. e.g. Mutators=TickrateSwitcher.TR

Step 3) Add **Parameters=?Tickrate=128** or **Parameters=?Tickrate=60** or any desired tickrate inside your Map Vote as a part of settings.

I recommend using VoteSys by Deoad as your map vote mod (https://github.com/Deaod/VoteSys), as it allows parameters to be added to the URL.

**ACKNOWLEDGEMENTS:**

Thanks to Deoad, Buggie, and Marco from the OldUnreal team for helping clean up the code.

Thanks to Eternity for his suggestions on how to improve TickrateSwitcher.

Finally, thanks to devereux (https://utctfpug.com/discord), who was the first to come up with the idea and create a mod like this.
