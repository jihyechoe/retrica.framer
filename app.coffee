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

libarary = sketch.library
photo = sketch.photo1
share = sketch.share

edit_options.visible = false
grid_options.visible = false
back.visible = false
    
back.states.stateUP = 
	properties: 
		y: Screen.height - back.height
	time: .2
	delay: .1
	
grid.on Events.Click, ->
	grid.opacity = 1
	edit.opacity = 0.3
	filter.opacity = 0.35

	back.visible = true
	back.animate "stateUP"

	grid_options.animate 
		properties: 
			y: Screen.height - back.height + 45
		time: .2
		delay: .1
	
	libarary.visible = false
	photo.visible = false
	share.visible = false
	grid_options.visible = true
	edit_options.visible = false
	edit_options.y = Screen.height

edit.on Events.Click, ->
	grid.opacity = 0.3
	edit.opacity = 1
	filter.opacity = 0.35
	
	back.visible = true
	back.animate "stateUP"

	edit_options.animate 
		properties: 
			y: Screen.height - back.height + 30
		time: .2
		delay: .1

	libarary.visible = false
	photo.visible = false
	share.visible = false
	edit_options.visible = true
	grid_options.visible = false
	grid_options.y = Screen.height

filter.on Events.Click, ->
	grid.opacity = 0.3
	edit.opacity = 0.3
	filter.opacity = 1

	back.visible = true
	back.animate "stateUP"

	libarary.visible = false
	photo.visible = false
	share.visible = false
	edit_options.visible = false
	grid_options.visible = false
	grid_options.y = Screen.height
	edit_options.y = Screen.height

sketch.background.on Events.Click, ->
	grid.opacity = 1
	edit.opacity = 1
	filter.opacity = 1

	back.animate
		properties: 
			y: Screen.height				
		time: .2
		delay: .1
		
	edit_options.animate 
		properties: 
			y: Screen.height
		time: .2
		delay: .1

	libarary.visible = true
	photo.visible = true
	share.visible = true
	