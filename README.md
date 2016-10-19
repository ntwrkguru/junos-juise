[![](https://images.microbadger.com/badges/image/juniper/junos-juise.svg)](https://microbadger.com/images/juniper/junos-juise "Get your own image badge on microbadger.com")

# DOCUMENTATION

Check our [github release page](https://github.com/juniper/juise) to find the latest release.

Please visit the juise [wiki](https://github.com/Juniper/juise/wiki) for more information, documentation, examples, and notes on JUISE.

# ABOUT

The JUISE project (the JUNOS User Interface Scripting Environment) allows scripts to be written, debugged, and executed outside the normal JUNOS environment. Users can develop scripts in their desktop environment, performing the code/test/debug cycle in a more natural way. Tools for developers are available, including a debugger, a profiler, a call-flow tracing mechanism, and trace files.
The JUNOS-specific extension functions are available for scripts, allowing access to JUNOS XML data using the normal jcs:invoke and jcs:execute functions. Commit scripts can be tested against a JUNOS device's configuration and the results of those script tested on that device.

This Docker container is based on Ubuntu 14.04 and includes libslax, libcurl, juise, and all related dependencies.

## SUPPORT

Please log all issues in the [Github project](https://github.com/ntwrkguru/junos-juise/issues).

# INSTALLATION

`docker pull juniper/junos-juise`
`docker run -it juniper/junos-juise /bin/bash`

# TODO

- Add CLIRA
- Expose CLIRA ports to the host

# CONTRIBUTE

If you're interested in contributing to the Docker version of JUISE, hit me up [@ntwrkguru](https://twitter.com/ntwrkguru)

