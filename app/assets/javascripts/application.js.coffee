#= require jquery
#= require jquery_ujs
#= require underscore
#= require skim
#= require js-routes
#= require backbone
#= require backbone.marionette
#= require_tree ./backbone/config
#= require backbone/app
#= require_tree ./backbone/controllers
#= require_tree ./backbone/views
#= require_tree ./backbone/entities
#= require_tree ./backbone/components
#= require_tree ./backbone/apps

#= require foundation


$ ->
  $(document).foundation()
  return
