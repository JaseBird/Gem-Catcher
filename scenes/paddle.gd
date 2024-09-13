extends Area2D

@export var Speed: float = 200.0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	var input_ammount: float = Input.get_axis("left", "right")	
	position.x += delta * Speed * input_ammount

func _on_gem_area_entered(area: Area2D) -> void:
	print(area)
