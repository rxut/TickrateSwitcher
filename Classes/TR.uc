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
    CurrentTickrate = Level.ConsoleCommand("get IpDrv.TcpNetDriver NetServerMaxTickRate");

    // Set the new tick rate
    if (Len(Tickrate) > 0)
    {
        Level.ConsoleCommand("Set IpDrv.TcpNetDriver NetServerMaxTickRate " $ Tickrate);
        Level.ConsoleCommand("Set Engine.DemoRecDriver NetServerMaxTickRate " $ Tickrate);

        // Log the tick rate change
        NewTickrate = Level.ConsoleCommand("get IpDrv.TcpNetDriver NetServerMaxTickRate");
        Log("Tickrate has been changed from: " $ CurrentTickrate $ " to: " $ NewTickrate,'TickrateSwitcher');
    }
}