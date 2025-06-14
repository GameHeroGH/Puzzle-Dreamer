/// Customizable Properties

// Input
confirm_key = keyboard_check_pressed(ord("Z")); // Button to press to go to the next page

// Position
margin = 16; // How much space the textbox gets from the the edges of the screen
padding = 8; // How much space things inside the textbox get
width = display_get_gui_width() - margin * 2;
height = sprite_height;

x = (display_get_gui_width() - width) / 2;
y = display_get_gui_height() - height - margin;

// Text
text_font = jfdotshinogothic_jp_font;
text_color = c_white;
text_speed = 0.8;
text_x = padding;
text_y = padding;
text_width = width - padding * 2;

/// Private properties
/*** LOOK BUT DO NOT EDIT! ***/
actions = [];
current_action = -1;

text = "";
text_progress = 0;
text_length = 0;

/// Methods
/*** Generally you never need to call these manually ***/

// Start a conversation
setTopic = function(topic) {
    actions = global.topics[$ topic];
    current_action = -1;
    
    next();
}

// Move to the next action, or close the textbox if out of actions
next = function() {
    current_action++;
    if (current_action >= array_length(actions)) {
        instance_destroy();
    }
    else {
        actions[current_action].act(id);
    }
}

// Set the text that should be typed out
setTopic = function(newText) {
    text = newText;
    text_length = string_length(newText);
    text_progress = 0;
}