/// easyHexColor(hex)
var hex = argument0;
var color = ((hex & $FF) << 16) | (hex & $FF00) | (hex >> 16);
return color;
