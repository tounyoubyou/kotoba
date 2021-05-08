extends Node

var number : int = 3
var message : String = "Hello wrld"
var living : bool = false
var time_delay : float = 1.483
var targe_position : Vector2 = Vector2.ZERO
var target_3d_position : Vector3 = Vector3.ZERO
var target = null

func _ready():
	# print the string hello world
	# print(message)
	
	#var result = add(number, 4)
	#print(result)
	print(target)

func add(a : int, b : int):
	var result = a + b
	return result
	
func check_if_alive(living, health):
	if not living or (living and health == 0):
		print("You died")
	else:
		print("You are alive")
	
func age_check(age):
	# if age is greater than 30, print you are awesome
	# otherwise print you are young
	if age > 50:
		print("You are wise")
	elif age < 12:
		print("You are too young")
	else:
		print("You are %d" % age)
	
