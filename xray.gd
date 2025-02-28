@tool
extends Node3D

@onready var camera_main: Camera3D = $CameraMAIN
@onready var camera_xray: Camera3D = $SubViewport/CameraXRAY
@onready var sub_viewport: SubViewport = $SubViewport
@onready var x_ray_obj: MeshInstance3D = $XRay_obj


func _ready() -> void:
	if not Engine.is_editor_hint():
		sub_viewport.size = DisplayServer.window_get_size()
		x_ray_obj.material_override.set_shader_parameter('viewport_tex', sub_viewport.get_texture())


func _physics_process(delta: float) -> void:
	if Engine.is_editor_hint():
		camera_xray.global_transform = camera_main.global_transform
