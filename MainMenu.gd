extends MarginContainer

onready var selector_one = $CenterContainer/VBoxContainer/CenterContainer2/VBoxContainer/CenterContainer/HBoxContainer/selector
onready var selector_two = $CenterContainer/VBoxContainer/CenterContainer2/VBoxContainer/CenterContainer2/HBoxContainer/selector
onready var selector_three = $CenterContainer/VBoxContainer/CenterContainer2/VBoxContainer/CenterContainer3/HBoxContainer/selector

var current_selection = 0
var debounce = false
func _ready():
	set_current_selection(0)



func set_current_selection(_current_selection):
	selector_one.text = " "
	selector_two.text = " "
	selector_three.text = " "
	
	if _current_selection == 0:
		selector_one.text = ">>>"
	elif _current_selection == 1:
		selector_two.text = ">>>"
	elif _current_selection == 2:
		selector_three.text = ">>>"
	elif _current_selection >= 3:
		current_selection = 2
		selector_three.text = ">>>"
	elif _current_selection <= -1:
		current_selection = 0
		selector_one.text = ">>>"

func _process(delta):
	if Input.is_action_pressed("ui_down") && debounce == false:
		current_selection += 1
		set_current_selection(current_selection)
		debounce = true
	elif Input.is_action_pressed("ui_up") && debounce == false:
		current_selection += -1
		set_current_selection(current_selection)
		debounce = true
	if Input.is_action_just_released("ui_down"):
		debounce = false
	elif Input.is_action_just_released("ui_up"):
		debounce = false

