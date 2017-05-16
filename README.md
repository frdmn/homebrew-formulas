# frdmn's Homebrew formulas

This a [brew](https://github.com/mxcl/homebrew) [tap](https://github.com/Homebrew/homebrew/tree/master/share/doc/homebrew#readme) repository containing a collection of "formulae" for most of my daily use projects. 

## Usage

First, add this tap to your Brew. This will to clone Pivotal tap repository and symlink all its formulae.

    brew tap frdmn/formulas

Now you will be able to work on those formulae as if there were in canonical Homebrew repository:

## Formulae

#### ddig ([:octocat:](https://github.com/frdmn/ddig))

Simple bash script to query the actual responsible DNS server of a specific domain/hostname.

    brew install ddig

#### dev-search ([:octocat:](https://github.com/frdmn/dev-search))

Dead simple project search tool written in Bash with fuzzy support.

    brew install dev-search

#### giracli ([:octocat:](https://github.com/frdmn/giracli)) [Moved to [NPM](http://npmjs.com/package/giracli)]

Bash script to control a Gira home server.

    npm install -g giracli

#### odig ([:octocat:](https://github.com/frdmn/odig))

    brew install odig

A Bash script to lookup a hostname and and the PTR record of the given IP address at a stroke.

#### psshrun ([:octocat:](https://github.com/frdmn/psshrun))

Host file group files for pssh.

    brew install psshrun

#### (up)ing ([:octocat:](https://github.com/frdmn/uping))

Ping tool that stops as soon as the host comes back online.

    brew install uping

#### homebrew-sick-doctor-warning ([:octocat:](https://github.com/frdmn/homebrew-sick-doctor-warning))

A little script to announce Homebrew doctor anomalies.

    brew install homebrew-update-notifier

#### @rwoeber/homebrew-update-notifier ([:octocat:](https://github.com/rwoeber/homebrew-update-notifier))

Announce outdated Homebrew formulas in the OS X Notification Center.

    brew install homebrew-update-notifier

#### @mattly/bork ([:octocat:](https://github.com/mattly/bork))

Latest (master) version of @[mattly](https://github.com/mattly/bork)'s bork DSL. Make sure to pass the `--HEAD` switch since this is a head-only formula.

    brew install --HEAD bork-dev

## Contributing

1. Fork it
2. Create your feature branch: `git checkout -b feature/my-new-feature`
3. Commit your changes: `git commit -am 'Add some feature'`
4. Push to the branch: `git push origin feature/my-new-feature`
5. Submit a pull request

## Version

1.0.1

## License

```
The MIT License (MIT)

Copyright (c) 2015 Jonas Friedmann

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
```
