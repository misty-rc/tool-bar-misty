module.exports =
  activate: (state) ->

  deactivate: ->
    @toolbar?.removeItems()

  serialize: ->

  consumeToolBar: (toolBar) ->
    @toolBar = toolBar 'tool-bar-misty'

    @toolBar.addButton
      icon: 'file-text'
      callback: 'application:new-file'
      tooltip: 'New File'

    @toolBar.addButton
      icon: 'file-directory'
      callback: 'application:open-file'
      tooltip: 'Open...'

    @toolBar.addSpacer()

    @toolBar.addButton
      icon: 'search'
      callback: 'find-and-replace:show'
      tooltip: 'Find in Buffer'

    @toolBar.addButton
      icon: 'shuffle'
      callback: 'find-and-replace:show-replace'
      tooltip: 'Replace in Buffer'
      iconset: 'ion'

    if atom.packages.getLoadedPackage('project-manager')
      @toolBar.addButton
        icon: 'repo'
        callback: 'project-manager:list-projects'
        tooltip: 'List Projects'

    if atom.packages.getLoadedPackage('git-control')
      @toolBar.addButton
        icon: 'git-compare'
        callback: 'git-control:toggle'
        tooltip: 'open Git Control'

    @toolBar.addSpacer()

    @toolBar.addButton
      icon: 'settings'
      callback: 'application:show-settings'
      tooltip: 'Show Settings'

    @toolBar.addButton
      icon: 'octoface'
      callback: 'application:about'
      tooltip: 'About Atom'
