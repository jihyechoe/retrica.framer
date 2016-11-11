# Import file "retrica" (sizes and positions are scaled 1:2)
sketch = Framer.Importer.load("imported/retrica@2x")

edit_options = sketch.edit_options
grid_options = sketch.grid_options
back = sketch.back
back.y = Screen.height
grid_options.y = Screen.height
edit_options.y = Screen.height

edit = sketch.edit
grid = sketch.grid
filter = sketch.filter

library = sketch.library
photo = sketch.photo1
share = sketch.share

edit_options.visible = false
grid_options.visible = false
back.visible = false
    
back.states.stateUp = 
	properties: 
		y: Screen.height - back.height
	time: .2
	delay: .1

back.states.stateDown = 
	properties: 
		y: Screen.height				
	time: .2
	delay: .1	
	
edit.on Events.Click, ->
	grid.opacity = 0.3
	edit.opacity = 1
	filter.opacity = 0.35
	
	back.visible = true
	back.animate "stateUp"

	library.animate
		opacity: 0
		time: 0.05

	photo.animate
		opacity: 0
		time: 0.05

	share.animate
		opacity: 0
		time: 0.05

	edit_options.animate 
		properties: 
			y: Screen.height - back.height + 30
		time: .2
		delay: .1

	edit_options.visible = true
	grid_options.visible = false
	grid_options.y = Screen.height

grid.on Events.Click, ->
	grid.opacity = 1
	edit.opacity = 0.3
	filter.opacity = 0.35

	back.visible = true
	back.animate "stateUp"

	grid_options.animate 
		properties: 
			y: Screen.height - back.height + 45
		time: .2
		delay: .1

	library.animate
		opacity: 0
		time: 0.05

	photo.animate
		opacity: 0
		time: 0.05

	share.animate
		opacity: 0
		time: 0.05
	
	grid_options.visible = true
	edit_options.visible = false
	edit_options.y = Screen.height

filter.on Events.Click, ->
	grid.opacity = 0.3
	edit.opacity = 0.3
	filter.opacity = 1

	back.visible = true
	back.animate "stateUp"

	library.animate
		opacity: 0
		time: 0.05

	photo.animate
		opacity: 0
		time: 0.05

	share.animate
		opacity: 0
		time: 0.05

	edit_options.visible = false
	grid_options.visible = false
	grid_options.y = Screen.height
	edit_options.y = Screen.height

sketch.background.on Events.Click, ->
	grid.opacity = 1
	edit.opacity = 1
	filter.opacity = 1

	back.animate "stateDown"		
	edit_options.animate
		properties: 
			y: Screen.height
		time: .2
		delay: .1

	grid_options.animate 
		properties: 
			y: Screen.height
		time: .2
		delay: .1

	library.animate
		opacity: 1
		time: .2
		delay: .1

	photo.animate
		opacity: 1
		time: .2
		delay: .1

	share.animate
		opacity: 1
		time: .2
		delay: .1
	
	photo.visible = true
	share.visible = true
	