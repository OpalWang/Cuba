$:.unshift(*Dir[File.expand_path("vendor/*/lib", File.dirname(__FILE__))])

require "cuba"
require "cuba/contrib"
require "malone"
require "mote"
require "ohm"
require "pbkdf2"
require "shield"
require "rack/protection"
require "active_record"
require "scrivener"
require "yaml"
require "logger"
require "tilt"
require "cuba/render"
require "erb"

