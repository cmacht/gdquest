extends Sprite2D

var normal_speed := 600.0
var max_speed := normal_speed
var boost_speed := 1500.0
var velocity := Vector2(0, 0)
var steering_factor := 10.0

func _process(delta: float) -> void:
	# var direction := Input.get_vector("move_left", "move_right", "move_up", "move_down")
	var direction := Vector2(0, 0)
	direction.x = Input.get_axis('move_left', 'move_right')
	direction.y = Input.get_axis('move_up', 'move_down')
	
	if direction.length() > 1.0:
		direction = direction.normalized()
		
	if Input.is_action_just_pressed('boost'):
		var main_thruster := get_node_or_null('MainThruster')
		if main_thruster:
			main_thruster.scale *= 1.2
		max_speed = boost_speed
		get_node('Timer').start()
		
	var desired_velocity := max_speed * direction
	var steering_vector := desired_velocity - velocity
	velocity += steering_vector * steering_factor * delta
	position += velocity * delta

	if direction.length() > 0.0:
		rotation = velocity.angle()
	
func _on_timer_timeout() -> void:
	max_speed = normal_speed
