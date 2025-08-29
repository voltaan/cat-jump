extends CharacterBody2D

func _ready():
	$AnimatedSprite2D.play("default")

func _physics_process(delta: float) -> void:
	velocity.x = -Global.scroll_speed - 10

	move_and_slide()


func _on_visible_on_screen_notifier_2d_screen_exited() -> void:
	queue_free()
