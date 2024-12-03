/// @description Insert description here


if (activated and instance_exists(obj_player)) {
	var player_x = obj_player.x;
	var player_y = obj_player.y;

	// Calculate the camera's dimensions
	var cam_width = camera_get_view_width(camera);
	var cam_height = camera_get_view_height(camera);

	// Clamp the camera's position to stay within the room bounds
	var cam_x = clamp(player_x - (cam_width / 2), 0, room_width - cam_width);
	var cam_y = clamp(player_y - (cam_height / 2), 0, room_height - cam_height);

	// Set the camera's position
	camera_set_view_pos(camera, cam_x, cam_y);
}


// Update camera size based on zoom
var cam_width = 1366 * zoom_level;
var cam_height = 768 * zoom_level;

camera_set_view_size(camera, cam_width, cam_height);
