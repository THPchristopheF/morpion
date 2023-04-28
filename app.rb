# pour eviter les require de gem

  require 'bundler'
  Bundler.require
  #
  # pour appeler facilement les autres classes
  # penser à remplacer fichier_1
  $:.unshift File.expand_path("./../lib/app", __FILE__)
  require 'player'
  require 'game'
  require 'board'
  require 'boardcase'
  require 'application'
  require 'pry'
  #$:.unshift File.expand_path("./../lib/views", __FILE__)
  #require 'show'
  Application.new.perform
  