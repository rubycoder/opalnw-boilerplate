Opalnw-boilerplate
==================


This repository contains all files neccesary to start developing an application with [Opalrb](http://opalrb.org/) and [nwjs](http://nwjs.io/)


Requirements
============

 - Knowledge of Ruby.
 - Knowledge of JavaScript and Node.


Getting Started
===============
 - Download this repository.
 - Ensure you have NWJS installed. It is useful to put the executable (`nw` or `nw.exe`) inside your $PATH variable.
 - Ensure you have Ruby, and bundle installed.
 - Run `bundle install` from the command line, inside folder.
 - Run `guard` from the command line, inside this folder to start watching changes to .rb, .haml and .sass/.scss files (inside the `app` folder) and auto-compiling the results to `bin_app`.
 - Make any changes and additions you want to the files.
 - Check the result by running `nw` inside of this folder. If it is inside of your path, you can just use `nw .` from the command line.



 Ideas
 =====
 To keep your project structured, this boilerplate suggests the following practices: 

  - Put your domain-specific logic inside `app/models`.
  - Put the visual representation of your app in `app/views`.
  - Put the interaction logic inside app/controllers.
  - Put code that interacts with native JavaScript, Node modules, etc. inside `app/helpers`.
  - Put the actual JS libraries themselves inside the `js_lib/` folder.
  - Install Node modules through NPM with the *save* option (`npm install --save packagename`) to add it to the dependencies in the `package.json` file. The modules themselves will obviously reside in the `node_modules` folder.
  - Images (and other kinds of resources) can be put inside of the `assets/` folder.





Changelog
=========

v0.1 Initial creation.