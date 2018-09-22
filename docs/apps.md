
## Apps

List of applications that I recommend installing.

They are ordered by how much I like them, so the first one is the one you should be installing if you can.

### Operating System

This is the base upon which all the following apps will be installed.

You can definitely code from any of them, but my advice would be to avoid Windows if you can, you'll have to perform some extra step just to have a decent terminal in it (I'm looking at you, `cmd`) and it's full of quirks, like using backslashes (`\`) in paths instead of forward slashes (`/`).

Basically the Internet in its entirity runs on Linux, and most programmers that don't develop for Windows using some of Microsoft's technologies (`C#`, `.NET`) and are not crazy use either macOS or Linux.

So my recomendations are:

- **[macOS](https://en.wikipedia.org/wiki/MacOS)** 💰: if you can, it is very similar to Linux but the whole experience is just more polished, and there are more developer-focused apps for it generally. Also you can only develop macOS/iOS apps from it
- **[Linux](https://en.wikipedia.org/wiki/Linux_distribution)** 🆓: perfectly good, but you may miss some apps available only for macOS/Windows, and you might have to configure some things every once in a while. Pretty much any distro is ok, I would maybe recommend installing [Ubuntu](https://www.ubuntu.com/download/desktop) or [elementaryOS](https://elementary.io/)
- **[Windows](https://en.wikipedia.org/wiki/Microsoft_Windows)** 💰: avoid it if you can, but if you can't don't worry, it's still possible to set-up a proper development environment. Sometimes you'll miss some tools available only for macOS/Linux, find incompatibilities with apps written in macOS/Linux and generally curse every once in a while at all of its quirks

### Editor

Maybe the most important tool in your toolbox, the app you actually use to write your code.

- **[Visual Studio Code](https://code.visualstudio.com/)** (macOS/Linux/Win) 🆓: fast, extendable, and made with web technologies itself!
- **[Sublime Text](https://www.sublimetext.com/)** (macOS/Linux/Win) 💰: very fast, expecially when dealing with large files. Use it if you're already accustomed to it maybe, but I think many new extensions are being developed exclusively for Visual Studio Code and Atom nowadays
- **[Atom](https://atom.io/)** (macOS/Linux/Win) 🆓: like Visual Studio Code, but more customizable and not so fast

Some people like to use CLI apps instead, especially those with very long beards or that deal on a day-to-day basis with servers, I wouldn't really recommend any of these to you, but hey, they exist:

- **[vim](https://www.vim.org/download.php)** (macOS/Linux/Win) 🆓: the app that you probably won't know how to exit from
- **[Emacs](https://www.gnu.org/software/emacs/download.html)** (macOS/Linux/Win) 🆓: another well know app

### Browser

- **[Google Chrome](https://www.google.com/chrome/)** 🆓: the most used web browser, it comes with great developer tools
- **[Firefox](https://www.mozilla.org/en-US/firefox/new/)** 🆓: good privacy-focused web browser, it's developer tools are also good, but maybe less extensions are made for it, and you'll find way less guides using it

### Terminal

The app that you use for interacting with CLI apps.

- **[Hyper](https://hyper.is/)** (macOS/Linux/Win) 🆓: fast and customizable terminal, it's also made with web technologies!
- **[iTerm2](https://iterm2.com/downloads.html)** (macOS) 🆓: I've heard many good things about this one, and I've used it for a brief period of time
- **macOS's Terminal** (macOS) 🆓: macOS's default terminal is pretty good too
- **Linux's Terminal** (Linux) 🆓: the terminal your distro comes with is probably pretty good too
- **[Alacritty](https://github.com/jwilm/alacritty)** (macOS/Linux/Win) 🆓: many people are using this one, I have personally never used it

### Terminal Shell

The app actually running inside your terminal by default. You'll use this for launching other CLI apps etc.

Installing a proper shell on Windows may be not that straightforward, maybe you'll have to install the WSL, I'm not sure. This is one of the reasons for avoiding Windows all together.

- **[Zsh](https://gist.github.com/derhuerst/12a1558a4b408b3b2b6e)** (macOS/Linux/Win) 🆓: the shell I'm using, it's much better than bash
- **bash** (macOS/Linux/Win) 🆓: macOS and Linux probably use this one by default. It's very usable, but you'll miss Zsh's niceties

### GIT

- **[git](https://git-scm.com/downloads)** (macOS/Linux/Win) 🆓: the de-facto Version Control System

### Git Client

The app you'll use for interacting with git.

- **[Tower](https://www.git-tower.com/)** (macOS/Win) 💰: easy to use and powerful, money well spent
- **[Sublime Merge](https://www.sublimemerge.com/)** (macOS/Linux/Win) 💰: from the creators of Sublime Text. Newer than Tower, maybe some bugs haven't been ironed out just yet
- **[GitKraken](https://www.gitkraken.com/)** (macOS/Linux/Win) 🆓: its interface looks weird to me, and it's not that fast, but hey, it's free and it's also made with web technologies!
- **[Visual Studio Code](https://code.visualstudio.com/)/[Atom](https://atom.io/)** (macOS/Linux/Win) 🆓: both Visual Studio Code and Atom can be used for interacting with git, they are not as easy to use, nor as powerful, as specialized apps though
- **[git CLI](https://git-scm.com/downloads)** (macOS/Linux/Win) 🆓: many (experienced) developers use the git CLI app directly. I don't recommend it for beginners though

### Node.js

- **[Node.js](https://nodejs.org/en/download/)** (macOS/Linux/Win) 🆓: the platform that allows you to run JS outside of a browser

### Node.js Package Manager

The tool for installing and publishing packages.

- **[npm](https://www.npmjs.com/get-npm)** (macOS/Linux/Win) 🆓: the standard, it should be installed automatically once you install Node.js
- **[yarn](https://yarnpkg.com/lang/en/docs/install/#mac-stable)** (macOS/Linux/Win) 🆓: faster and generally better than npm, you can use it instead of `npm` if you want, but most people use `npm`, which is fine too for most use cases

### Offline Documentation

Having your most important documentations available offline, and a shortcut away is something you'll learn to appreciate.

- **[Dash](https://kapeli.com/dash)** (macOS) 💰: just perfect
- **[Zeal](https://zealdocs.org/download.html)** (macOS/Linux/Win) 🆓: I've never used this one, and it looks kind of ugly, but it should get the work done

### FTP Client

Sooner or later you'll need to move some files to/from your server.

- **[Transmit](https://panic.com/transmit/)** (macOS) 💰: just perfect
- **[CyberDuck](https://cyberduck.io/)** (macOS/Linux/Win) 💰: this one is pretty good too
- **[FileZilla](https://filezilla-project.org/)** (macOS/Linux/Win) 🆓: not pretty, not particularly powerful, but it's good enough for most of use cases

### Database Client

As soon as you add a database to your app you'll need a client for interacting with it.

- **[TablePlus](https://tableplus.io/)** (macOS) 💰: beautiful interface and support for multiple database engines
- **[Sequel Pro](https://sequelpro.com/download)** (macOS) 🆓: not so beautiful, but if you only need MySQL support it's fully featured
- **[PHPMyAdmin](https://www.phpmyadmin.net/downloads/)** (macOS/Linux/Win) 🆓: webapp for interacting with the database, you'll probably want to install it via Docker
- **[mysql CLI](https://www.mysql.com/downloads/)** (macOS/Linux/Win) 🆓: some folks interact with MySQL from the CLI, it's an option but I would recommend a graphical app if you can install one

### Docker

You won't need this until you write some complex apps, but it's an important tool in today's programmers' environments.

- **[docker](https://docs.docker.com/install/)**: (macOS/Linux/Win) 🆓: tool for writing containerized applications

### Virtual Machines

You won't need this until you'll need to test some apps under multiple OSs.

- **[Parallels](https://www.parallels.com/products/desktop/download/)** (macOS) 💰: fast, beautiful, powerful
- **[VirtualBox](https://www.virtualbox.org/wiki/Downloads)** (macOS/Linux/Win) 🆓: it gets the job done, but it's not the fastest, it's ugly, and I've had some problems with it in the past
