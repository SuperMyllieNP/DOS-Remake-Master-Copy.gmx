///isValueInBoundsLoop(value, lower bound, upper bound, loop counter)
var val, low, high //Initializes the variables for this script

val = argument0
low = argument1
high = argument2
loop = argument3

val = clamp(val, low, high) //Clamps the value bewteen the lower and upper bounds to make things easier

if val == low //If the value is on the lower bound...
{
    return 0;  //Then return the lowest value
}
else if val == high //If the value is on the upper bound
{
    return loop + 1; //Then return the highest value
}
else
{
    return (val mod loop) + 1; //If it's inbetween the two, then return an intermediate number
}
