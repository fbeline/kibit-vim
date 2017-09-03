# Kibit-vim

[kibit](https://github.com/jonase/kibit) is a static code analyzer for Clojure, ClojureScript, cljx and other Clojure variants.


![kibit-vim](https://user-images.githubusercontent.com/5730881/30007606-ea4ca390-90e8-11e7-8a23-48b741416c0f.png)

## Usage

kibit-vim allows you to analyze the current opened file by running:

`:Kibit`


## Installation

### Requirements

Add the following to your `~/.lein/profiles.clj`:

`{:plugins [[lein-kibit "0.1.5"]]}`

### Installing with vundle

To install kibit-vim with Vundle, add the following line to your .vimrc:

`Bundle 'felipeBB/kibit-vim'`


### Installing with Plug

To install kibit-vim with Pug, add the following line to your .vimrc:

`Plug 'felipeBB/kibit-vim'`

## License

Copyright © 2017 Felipe Beline Baravieira

Distributed under the Eclipse Public License, the same as Clojure.
