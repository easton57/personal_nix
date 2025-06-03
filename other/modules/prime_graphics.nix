# File for prime laptop configuration

{
  hardware.nvidia.prime = {
    reverseSync.enable = true;
    allowExternalGpu = false;

	# Make sure to use the correct Bus ID values for your system!
	intelBusId = "PCI:0:2:0";
	nvidiaBusId = "PCI:1:0:0";
  };
}

