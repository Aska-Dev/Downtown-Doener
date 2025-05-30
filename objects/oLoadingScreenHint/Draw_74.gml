var trueWidth = sprite_width * image_xscale
var trueHeight = sprite_height * image_yscale

var text = ScribblejrFit(hint, fa_center, fa_middle, fntDefault, 2, trueWidth, trueHeight);
text.Draw(x + trueWidth / 2, y + trueHeight / 2);