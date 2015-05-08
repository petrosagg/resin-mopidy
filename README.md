Resin Mopidy Music Server
=========================

This application installs and configures the [Mopidy Music Server](https://www.mopidy.com/) on a Resin Raspberry Pi. It exposes the [Moped Web Client](https://github.com/martijnboland/moped) over HTTP on port 80, a MPD server on port 6600 and a [Touchscreen UI](https://github.com/9and3r/mopidy-touchscreen) in case you have the [Adafruit PiTFT screen](https://www.adafruit.com/products/1601) connected.

Songs are fetched from YouTube by default, but can configure your credentials for your Spotify or SoundCloud account for more sources. See below for more details.

How to use
----------

To use this project, first create an account on resin.io and setup your first device. Instructions can be found [here](http://docs.resin.io/#/pages/installing/gettingStarted.md).

After you're done, `git clone` this project locally, add the resin remote for your application and `git push resin master`.

Configuration
-------------

You can configure this application using environment variables. Instructions on how to set them from your resin dashboard can be found [here](http://docs.resin.io/#/pages/using/env-vars.md)

The available configuration options with their defaults are:

* `MOPIDY_HTTP_HOSTNAME=::` The hostname where the web ui will listen
* `MOPIDY_HTTP_PORT=80` The port where the web ui will listen
* `MOPIDY_MPD_HOSTNAME=::` The hostname where the MPD server will listen
* `MOPIDY_MPD_PORT=6600` The port where the MPD server will listen
* `MOPIDY_SOUNDCLOUD_ENABLED=false` Set to `true` to enable SoundCloud integration
* `MOPIDY_SOUNDCLOUD_AUTHTOKEN=` Get your SoundCloud auth token [here](https://www.mopidy.com/authenticate/)
* `MOPIDY_SPOTIFY_ENABLED=false` Set to `true` to enable Spotify integration
* `MOPIDY_SPOTIFY_USERNAME=` Your Spotify username. 
* `MOPIDY_SPOTIFY_PASSWORD=` Your Spotify password. Get yours [here](https://www.spotify.com/uk/account/set-device-password/)
* `MOPIDY_YOUTUBE_ENABLED=true` Set to `false` to disable YouTube integration
* `MOPIDY_PITFT_ENABLED=false` Set to `true` to enable the Touchscreen UI

Contribute
----------

- Issue Tracker: [github.com/petrosagg/resin-mopidy/issues](https://github.com/petrosagg/resin-mopidy/issues)
- Source Code: [github.com/petrosagg/resin-mopidy](https://github.com/petrosagg/resin-mopidy)

Support
-------

If you're having any problem, please [raise an issue](https://github.com/petrosagg/resin-mopidy/issues) on GitHub.

TODO
-------

- Support touch events when PiTFT is used

License
-------

The project is licensed under the MIT license.
