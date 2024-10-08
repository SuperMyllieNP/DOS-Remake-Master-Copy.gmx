var str = argument2 + " "
var length = string_count(" ", str)
var ret = ""
for (var i = 0; i < length; i++)
{
    var word = string_copy(str, 1, ((string_pos(" ", str)) - 1))
    str = string_copy(str, ((string_pos(" ", str)) + 1), string_length(str))
    var ret2 = ret + word + " "
    if (string_width(ret2) > argument3)
        ret2 = (string_copy(ret, 1, (string_length(ret) - 1))) + "\n" + word + " "
    ret = ret2
}
ret = string_copy(ret, 1, (string_length(ret) - 1))
draw_text(argument0, argument1, ret)

