# 절전

## for Thinkpad

Enabling S3

The BIOS has two "Sleep State" options, called "Windows" and "Linux", which you can find in at Config -> Power -> Sleep State.

The Linux option is the traditional S3 power state where all hardware components are turned off except for the RAM, and it should work normally.
The Windows option is a newer software-based "modern standby" which works on Linux (despite the name).

One possible benefit to the Windows sleep state is faster wake up time, and one possible drawback is increased power usage.

Reboot and verify whether S3 is working by running:

`dmesg | grep -i "acpi: (supports"`

You should now see something like this:

`ACPI: (supports S0 S3 S4 S5)`
