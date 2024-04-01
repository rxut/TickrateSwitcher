class TR extends Mutator;

var string Tickrate;

function PostBeginPlay()
{
    Super.PostBeginPlay();

    // Parse the Tickrate option from the extracted options string
    Tickrate = Level.Game.ParseOption("?"$Level.GetLocalURL(), "Tickrate");

    if (Tickrate != "")
    {
        SetNewTickRate();
    }
}

function SetNewTickRate()
{
    local string CurrentTickrate, NewTickrate;

    // Get the current tick rate for logging purposes
    CurrentTickrate = Level.ConsoleCommand("get ini:Engine.Engine.NetworkDevice NetServerMaxTickRate");

    // Set the new tick rate
    if (Len(Tickrate) > 0)
    {
        if (int(Tickrate) != int(CurrentTickrate))
        {
            Level.ConsoleCommand("set ini:Engine.Engine.NetworkDevice NetServerMaxTickRate " $ Tickrate);
            Level.ConsoleCommand("set ini:Engine.Engine.NetworkDevice LanServerMaxTickRate " $ Tickrate);

            Level.ConsoleCommand("set ini:Engine.Engine.DemoRecordingDevice NetServerMaxTickRate " $ Tickrate);
            Level.ConsoleCommand("set ini:Engine.Engine.DemoRecordingDevice LanServerMaxTickRate " $ Tickrate);

            // Log the tick rate change
            NewTickrate = Level.ConsoleCommand("get ini:Engine.Engine.NetworkDevice NetServerMaxTickRate");

            Log("[TickrateSwitcher]: Server Tickrate has been changed from: " $ CurrentTickrate $ " to " $ NewTickrate$"");
        }   
        else
        {
            Log("[TickrateSwitcher]: Server Tickrate is set to " $ Tickrate $ "");
        }
    }
}