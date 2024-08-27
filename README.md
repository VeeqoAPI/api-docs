# Veeqo API Documentation

[![Apiary Documentation](https://img.shields.io/badge/Apiary-Documented-blue.svg)](http://docs.veeqo.apiary.io/)

This repository contains the API Blueprint for the [Veeqo API][]. 
The documentation for the API lives on the [Docs][] page.
We're currently in the process of updating the documentation. 
Updates will be visible though the commits here.

## Requirements

* [Node.JS](https://nodejs.org/)
* [Ruby](https://www.ruby-lang.org/)

## Install

    make install

Or install the following tools manually:

* [Apiary CLI](https://help.apiary.io/tools/apiary-cli/) `gem install apiaryio`
* [Hercule](https://github.com/jamesramsay/hercule) `npm i -g hercule`

## Usage

Preview documentation before publishing:

    make preview

Publish documentation to <http://docs.veeqo.apiary.io/>:

    APIARY_API_KEY=321 make publish

Replace `321` with real API key which you can get by going to <https://login.apiary.io/tokens>

[Veeqo API]: https://developer.veeqo.com
[Docs]: https://developer.veeqo.com/docs
