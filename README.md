# Veeqo API Documentation

[![Apiary Documentation](https://img.shields.io/badge/Apiary-Documented-blue.svg)](http://docs.veeqo.apiary.io/)

This repository contains the API Blueprint for the [Veeqo API][]. You can find the
documentation for the [Veeqo API][] on [Apiary][].

## Requirements

* [Apiary CLI](https://help.apiary.io/tools/apiary-cli/) `gem install apiaryio`
* [Hercule](https://github.com/jamesramsay/hercule) `npm i -g hercule`

## Usage

Preview documentation before publishing:

    make preview

Publish documentation to <http://docs.veeqo.apiary.io/>:

    APIARY_API_KEY=321 make publish

Replace `321` with real API key which you can get by going to <https://login.apiary.io/tokens>

[Veeqo API]: http://developers.veeqo.com
[Apiary]: http://docs.veeqo.apiary.io/
