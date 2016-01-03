### Installation

**Important:** Remove all older versions of the theme from your system before you proceed any further.

    sudo rm -rf /usr/share/themes/{Arc,Arc-Darker,Arc-Dark}
    rm -rf ~/.local/share/themes/{Arc,Arc-Darker,Arc-Dark}
    rm -rf ~/.themes/{Arc,Arc-Darker,Arc-Dark}

#### Packages

Prebuilt packages for Ubuntu, Debian, Fedora and openSUSE are available at  
http://software.opensuse.org/download.html?project=home%3AHorst3180&package=arc-theme  

A non-transparent version of the theme is available here  
http://software.opensuse.org/download.html?project=home%3AHorst3180&package=arc-theme-solid  

**Note:** elementary OS Freya users can install the package for Ubuntu 15.04

--

Arch Linux users can install the theme from the AUR

**Official Releases**: https://aur.archlinux.org/packages/gtk-theme-arc/  

**Development Releases**: https://aur.archlinux.org/packages/gtk-theme-arc-git/  

**Note:** If you're having trouble with the AUR packages please email the package maintainer at zach@zach-adams.com before creating an issue.

#### Manual Installation

To build the theme you'll need 
* `autoconf`
* `automake`
* `pkg-config` or `pkgconfig` if you use Fedora
* `libgtk-3-dev` for Debian based distros or `gtk3-devel` for RPM based distros
* `git` if you want to clone the source directory

If your distributions doesn't ship separate development packages you just need GTK 3 instead of the `-dev` packages.

Install the theme with the following commands

**1. Get the source**

If you want to install the latest version from git, clone the repository with

    git clone https://github.com/horst3180/arc-theme --depth 1 && cd arc-theme

**2. Build and install the theme**

    ./autogen.sh --prefix=/usr
    sudo make install

Other options to pass to autogen.sh are

    --disable-transparency     disable transparency in the GTK3 theme
    --disable-light            disable Arc Light support
    --disable-darker           disable Arc Darker support
    --disable-dark             disable Arc Dark support
    --disable-cinnamon         disable Cinnamon support
    --disable-gnome-shell      disable GNOME Shell support
    --disable-gtk2             disable GTK2 support
    --disable-gtk3             disable GTK3 support
    --disable-metacity         disable Metacity support
    --disable-unity            disable Unity support
    --disable-xfwm             disable XFWM support
    --disable-xfce-notify      disable XFCE Notify support

    --with-gnome=<version>     build the theme for a specific Gnome version (3.14, 3.16, 3.18)
                               Note: Normally the correct version is detected automatically and this
                               option should not be needed.

After the installation is complete you can activate the theme with `gnome-tweak-tool` or a similar program by selecting `Arc`, `Arc-Darker` or `Arc-Dark` as Window/GTK+ theme and `Arc` or `Arc-Dark` as Gnome-Shell and Xfce-Notify theme.

**Uninstall the theme**

Run

    sudo make uninstall

from the same directory as this README resides in, or

    sudo rm -rf /usr/share/themes/{Arc,Arc-Darker,Arc-Dark}


