# -*- coding: utf-8 -*-
$:.unshift("/Library/RubyMotion/lib")
require 'motion/project/template/ios'
require 'rubygems'

require 'guard/motion'
require 'motion-stump'
require 'sugarcube-repl'
require 'sugarcube-uikit'
require 'sugarcube-color'
require 'teacup'
require 'sweettea'
require 'map-kit-wrapper'

begin
  require 'bundler'
  Bundler.require
rescue LoadError
end

Motion::Project::App.setup do |app|
  # Use `rake config' to see complete project settings.
  app.name = 'Author Appearances'
  app.frameworks += ['MapKit']
end
