extends Light2D

# Variables pour ajuster la fluctuation
var min_energy = 10.0
var max_energy = 15.0
var fluctuation_speed = 0.5
var time_passed = 0.0

# Fonction _process pour animer l'énergie de la lumière
func _process(delta):
	time_passed += delta
	var energy = lerp(min_energy, max_energy, 0.5 * (sin(time_passed * fluctuation_speed) + 1))
	self.energy = energy
