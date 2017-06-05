require 'sinatra'
require 'sinatra/reloader' if development?
require_relative './controller/Deity_controller.rb'

run DeitiesController