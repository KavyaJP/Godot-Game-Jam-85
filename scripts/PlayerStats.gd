extends Node

# --- Stats ---
var energy: float = 100.0
var max_energy: float = 100.0
var cancer_level: float = 0.0
var max_cancer: float = 100.0

# --- Rates of Change ---
const PASSIVE_CANCER_RATE: float = 0.5
const MOVEMENT_CANCER_MULTIPLIER: float = 3.0

var is_moving: bool = false

func _process(delta: float):
    var current_rate = PASSIVE_CANCER_RATE
    if is_moving:
        current_rate *= MOVEMENT_CANCER_MULTIPLIER

    cancer_level = min(cancer_level + current_rate * delta, max_cancer)

    if cancer_level >= max_cancer:
        print("The burden is too great. Game Over.")
        get_tree().reload_current_scene()


func apply_cure(amount: float):
    cancer_level = max(cancer_level - amount, 0.0)
    print("A moment of relief. Cancer reduced by", amount)