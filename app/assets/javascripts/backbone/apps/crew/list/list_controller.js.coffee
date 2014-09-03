@PlanetExpress.module 'CrewApp.List', (List, App, Backbone, Marionette, $, _) ->

  List.Controller =

    list: ->
      # получаем список
      crew = App.request("crew:entities")
      @layout = @getLayoutView()

      @layout.on 'show', =>
        @titleRegion()
        @panelRegion()
        @newRegion()
        @crewRegion(crew)

      App.mainRegion.show @layout

    titleRegion: ->
      titleView = @getTitleView()
      @layout.titleRegion.show titleView

    getTitleView: ->
      new List.Title

    panelRegion: ->
      panelView = @getPanelView()
      @layout.panelRegion.show panelView

    getPanelView: ->
      new List.Panel

    newRegion: ->
      newView = @getNewView()
      @layout.newRegion.show newView

    getNewView: ->
      new List.New


    crewRegion: (crew) ->
      crewView = @getCrewView(crew)
      @layout.crewRegion.show crewView

    getCrewView: (crew) ->
      new List.Crew
        collection: crew

    getLayoutView: ->
      new List.Layout