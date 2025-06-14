/// Customizable Properties

// Input
confirm_key = keyboard_check_direct(ord("Z")); // Button to press to go to the next page

// Position
margin = 16; // How much space the textbox gets from the the edges of the screen
padding = 8; // How much space things inside the textbox get
width = display_get_gui_width() - margin * 2;
height = sprite_height;

x = (display_get_gui_width() - width) / 2;
y = display_get_gui_height() - height - margin;

// Text
text_font = 