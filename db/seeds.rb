require 'active_record'
require_relative 'connection'
require_relative '../models/selfie'

Selfie.create([
  { text: "Hello World" },
  { text: "This is my second selfie" },
  { text: "Which cool features should I add?" },
  { text: "It’s like Twitter, without friends." }
])