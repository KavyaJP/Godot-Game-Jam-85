extends Area2D

@export var cure_amount: float = 25.0

func _on_body_entered(body):
    if body.name == "Knight":
        PlayerStats.apply_cure(cure_amount)

        queue_free()