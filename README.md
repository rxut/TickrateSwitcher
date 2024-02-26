Tickrate Switcher is a simple UT99 mutator that dynamically changes the server tickrate based on Level Info parameters.

**FEATURES:**

- You can set the server Tickrate based on different game mods and voting options
- TickrateSwitcher adjusts both IpDrv.TcpNetDriver NetServerMaxTickRate and Engine.DemoRecDriver NetServerMaxTickRate
- When a tickrate is switched,d you'll see a message in your server log

**SERVER-SIDE INSTALLATION:**

Step 1) Copy TickrateSwitcher.u into the System directory of your server

Step 2) Add ServerPackages=TickrateSwitcher inside of your server UnrealTournament.ini

Step 3) Ensure the TickrateSwitcher mutator is included in the server mutator list. e.g. Mutators=TickrateSwitcher.TR

Step 4) Add **Parameters=?Tickrate=128** or **Parameters=?Tickrate=60** or any desired tickrate inside your Map Vote as a part of settings.

I recommend using VoteSys by Deoad as your map vote mod (https://github.com/Deaod/VoteSys)

**ACKNOWLEDGEMENTS:**

Thanks to Deoad, Buggie, and Marco from the OldUnreal team for helping clean up the code.

Also, thanks to devereux (https://utctfpug.com/discord), who was the first to come up with the idea and create a mod like this.
