extends CanvasLayer

@onready var cancer_bar = $CancerBar
@onready var energy_bar = $EnergyBar

func _process(_delta: float):
	cancer_bar.value = PlayerStats.cancer_level
	energy_bar.value = PlayerStats.energy
