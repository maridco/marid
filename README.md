Marid Backend
=============

![Marid](https://raw.githubusercontent.com/maridco/marid/master/img/marid-color-xlarge.jpg)

## Independent Music Platform

Marid is a music platform that beautifully showcases the works of independent artists.

For more information, please see http://marid.co

## Authors

| [![Nathan Bernard](https://s.gravatar.com/avatar/764276fb0de2fba228d1a906efdcae45?s=117)](https://github.com/nb333) | [![Juan Pavlo](https://avatars0.githubusercontent.com/u/471024?v=2&s=117)](https://github.com/jpavlo) | [![John McConnell](https://avatars1.githubusercontent.com/u/1870400?v=2&s=117)](https://github.com/johnmcconnell) | [![Mario Mjertan](https://avatars1.githubusercontent.com/u/1742806?v=2&s=117)](https://github.com/iwebhub) | [![Jake Overall](https://avatars1.githubusercontent.com/u/7350663?v=2&s=117)](https://github.com/joverall22) |
:---:|:---:|:---:|:---:|:---:
| [Nathan Bernard](https://github.com/nb333) | [Juan Pavlo](https://github.com/jpavlo) | [John McConnell](https://github.com/johnmcconnell) | [Mario Mjertan](https://github.com/iwebhub) | [Jake Overall](https://github.com/joverall22)

A full list of [contributors](https://github.com/maridco/backend/graphs/contributors) can be found on GitHub.






## Contributing

1. [Fork it](https://help.github.com/articles/fork-a-repo)
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am "Added some feature"`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new [Pull Request](https://help.github.com/articles/using-pull-requests)

** Make sure your fork is private, not public **

## Bug Tracker

Found a bug? Report it [here](https://github.com/maridco/backend/issues/)!

## Feature Request

Have an idea? Add it [here](https://github.com/maridco/backend/issues/)!


## Dependencies ( This is so far exclusively for Debian Linux )
1. Ruby version 2.1.2
2. Rails version 4.1.4
3. Sqlite3
4. Nodejs

## Installation 

### Debian/Ubuntu Server
1. Download ruby 2.1.2 from [here](https://www.ruby-lang.org/en/downloads/)
2. Untar package (`tar -zxf ruby-2.1.2.tar.gz`)
3. Install Ruby:
* Update repository cache: `apt-get -y update`
* Install dependencies: `apt-get -y install build-essential zlib1g-dev libssl-dev libreadline6-dev libyaml-dev`
* Unpack the Ruby archive you've downloaded: `tar -xvzf ruby-2.1.2.tar.gz`
* Go to that directory: `cd ruby-2.1.2/`
* Run the configure script: `./configure --prefix=/usr/local`
* Run make: `make`
* Run make install: `make install`
4. Install sqlite3 (`apt-get install libsqlite3-dev` for Debian-based distributions)
5. Install rails (`gem install rails`)
(The commands above should be executed as root, either with su, sudo, or direct login if that's supported on the distribution you're using)

### Mac OS X

1. [Follow the guide](https://gorails.com/setup/osx/10.9-mavericks)
2. In the cli `git clone https://github.com/maridco/backend.git`
3. `cd backend`
4. `bundle install`

## Run
Start the server `bundle exec rails s`

## Check out the site
In your browser go to localhost:3000

## Contact

* Twitter: `@maridco`
* IRC: `#marid` on irc.freenode.net

## License

Copyright 2014 Marid. All Rights Reserved. Proprietary and Confidential.
