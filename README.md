# Install my stuff!
Install my stuff is a project to create platform-specific scripts that will install everything that I usually need to work and have fun.

The primary focus is to make this portable and timeless as much as possible. That means prioritizing official system repos with official package manager, over third-party repos, over additional package managers, over curling archives and so on.

The actual order would look like this:
1. Official package manager (e.g. apt), official repository
2. Official package manager, third-party repository (e.g. EPEL)
3. Third-party package manager (e.g. homebrew)
4. Packages for the official package manager via curl/wget or other CLI web client
5. Zipped/tarballed binaries

To use this repository to provision your personal machine, simply clone it on your fresh machine (all Linux and macOS should have a Git client) and execute the script tailored for the system you're on.

## License
This project is licensed under GNU GPLv3 license. Use it, change it, do not sell it.
