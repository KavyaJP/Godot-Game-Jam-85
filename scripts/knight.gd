extends CharacterBody2D

@export var speed: float = 150.0

func _physics_process(delta: float):
    # Get directional input from the player (WASD or arrow keys).
    # This function returns a vector like (1, 0) for right, (-1, 0) for left, etc.
    var direction = Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")

    # Set the character's velocity by multiplying its direction with speed.
    velocity = direction * speed

    # This is a built-in Godot function that moves the character
    # and handles collisions with other objects automatically.
    move_and_slide()