# This script should be run as administrator

$host.ui.RawUI.WindowTitle = "Starting WSL systemd bottle ..."
wsl.exe -- genie -i
sleep 2

$host.ui.RawUI.WindowTitle = "Resetting WSL firewall ..."
Set-NetFirewallProfile -Profile Domain,Public,Private -DisabledInterfaceAliases "vEthernet (WSL)"
sleep 2

$host.ui.RawUI.WindowTitle = "Starting WSL Host Patcher ..."
. WSLHostPatcher.exe
