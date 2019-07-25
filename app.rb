require 'bundler'
Bundler.require


$:.unshift File.expand_path("./../lib", __FILE__)
require 'app/board'
require 'app/boardcase'
require 'app/player'
require 'app/game'
require 'views/show'
