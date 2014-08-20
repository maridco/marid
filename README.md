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
2. Create your feature branch (`git checkout -b develop/my-new-feature`)
3. Commit your changes (`git commit -am "Added some feature"`)
4. Push to the branch (`git push origin develop/my-new-feature`)
5. Create new [Pull Request](https://help.github.com/articles/using-pull-requests)

**You can use [git-flow](https://github.com/nvie/gitflow) for branch management.**

**Please make sure your fork is private, not public.**

## Bug Tracker

Found a bug? Report it [here](https://github.com/maridco/backend/issues/)!

## Feature Request

Have an idea? Add it [here](https://github.com/maridco/backend/issues/)!


## Dependencies ( This is so far exclusively for Debian Linux )
1. Ruby version 2.1.2
2. Rails version 4.1.4
3. SQLite3
4. Cassandra
5. Node.js

## Installation 

**We are currently adding Cassandra driver to Marid. Helping update the instructions is welcome.**

#### Debian/Ubuntu Server
1. Download Ruby 2.1.2 from [here](https://www.ruby-lang.org/en/downloads/)
2. Untar package (`tar -zxf ruby-2.1.2.tar.gz`)
3. Install Ruby:
* Update repository cache: `apt-get -y update`
* Install dependencies: `apt-get -y install build-essential zlib1g-dev libssl-dev libreadline6-dev libyaml-dev`
* Unpack the Ruby archive you've downloaded: `tar -xvzf ruby-2.1.2.tar.gz`
* Go to that directory: `cd ruby-2.1.2/`
* Run the configure script: `./configure --prefix=/usr/local`
* Run make: `make`
* Run make install: `make install`
4. Install SQLite3 (`apt-get install libsqlite3-dev` for Debian-based distributions)
5. Install Rails (`gem install rails`)
(The commands above should be executed as root, either with su, sudo, or direct login if that's supported on the distribution you're using)
***Cassandra installation is missing here***

#### PLEASE UPDATE CASSANDRA INSTALLATION

### Mac OS X

1. [Follow the guide](https://gorails.com/setup/osx/10.9-mavericks)
2. In the cli `git clone https://github.com/maridco/backend.git`
3. Install Cassandra
* Via [homebrew](http://brew.sh/)
  * Install Cassandra: `brew install cassandra12` (Java 7 required)
  * Add Cassandra to launchagents:  `ln -sfv /usr/local/opt/cassandra12/*.plist ~/Library/LaunchAgents`
4. `cd backend`
5. Start Cassandra server: `launchctl load ~/Library/LaunchAgents/homebrew.mxcl.cassandra12.plist`

### Setup Rails app (every platform)
1. Configure SQLite3 db
* Copy file `config/database.yml.example`
* Rename new file to `config/database.yml`
* Configure SQLite3 within this file (or leave it on default settings)
2. Configure Cassandra db
* Copy file `config/cequel.yml.example`
* Rename new file to `config/cequel.yml`
* Configure Cassandra within this file (or leave it on default settings)
3. Install dependencies vie Boundler: `bundle install`
4. Setup SQLite database (not necessary for now): `rake db:setup`
5. Create and migrate Cassandra db
* rake `cequel:keyspace:create`
* migrate `rake cequel:migrate`

## Run
Start the server `rails server`

## Check out the site
In your browser go to localhost:3000

## Working with Cassandra within Rails
**Please see [driver documentaiton](https://github.com/cequel/cequel)**

Models for Cassandra **are not** using ActiveRecord! There is also no support for migrations in NoSQL.
Database schema is synchronized with model by running `rake cequel:migrate`.
Unlike in ActiveRecord, models declare their properties inline.

## Contact

* Twitter: `@maridco`
* IRC: `#marid` on irc.freenode.net

## License

Copyright 2014 Marid. All Rights Reserved. Proprietary and Confidential.
