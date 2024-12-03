/// @description Insert description here

// Create a camera and set its initial zoom
camera = camera_create();
view_enabled[0] = true;
view_camera[0] = camera;

// Set default properties for the camera
cam_width = 1366; // Adjust to desired zoom level
cam_height = 768;

camera_set_view_size(camera, cam_width, cam_height);

// Default camera position
camera_set_view_pos(camera, 0, 0);

// Keep track of the zoom level
zoom_level = 1;

activated = false;



var scale_factor = 5.0;

// Adjust the sprite scale
image_xscale = scale_factor;
image_yscale = scale_factor;
