/// @description Insert description here
// the rest of the code here is only applicable to the HTML5
// target running in a browser
if (os_browser == browser_not_a_browser)
return;

// only proceed if the display size has changed (or if this is
// the first time this is run - see the create event)
var _display_width = display_get_width();
var _display_height = display_get_height();
if ((_display_width == last_known_display_width) &&
(_display_height == last_known_display_height))
return;
last_known_display_width = _display_width;
last_known_display_height = _display_height;

// game size and aspect ratio
var _game_aspect_ratio = game_width / game_height;

// desired container size and aspect ratio into which the
// game should be scaled. not directly using display size
// here as a small amount of padding is needed to avoid
// getting scroll bars in the browser and having some
// content cropped out of view
var _container_padding = 10;
var _container_width = _display_width - _container_padding;
var _container_height = _display_height - _container_padding;
var _container_aspect_ratio = _container_width / _container_height;

// initialize scaled size to be the available container size.
// in the odd case where the game and container aspect ratio
// match exactly, then this just does a full scale to the
// container
var _scaled_width = _container_width;
var _scaled_height = _container_height;

// if the game aspect ratio is bigger then the width must
// be constrained to the container and the height is
// calculated from that to preserve game aspect ratio
if (_game_aspect_ratio > _container_aspect_ratio)
{
_scaled_width = _container_width;
_scaled_height = _scaled_width / _game_aspect_ratio;
}

// in the other case, it is reversed. the height takes
// priority and is what must be constrained to the container
// and the width is computed
else if (_game_aspect_ratio < _container_aspect_ratio)
{
_scaled_height = _container_height;
_scaled_width = _scaled_height * _game_aspect_ratio;
}

// now resize everything to the desired scaled size
window_set_size(_scaled_width,_scaled_height);
view_wport[0] = _scaled_width;
view_hport[0] = _scaled_height;
surface_resize(application_surface,_scaled_width,_scaled_height);
window_center();
