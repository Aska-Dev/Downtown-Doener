

if(!global.IsTraining)
{
    var txt = ScribblejrFit($"Score: {global.highscore}", fa_center, fa_middle, fntDefault, text_size, sprite_width, sprite_height)
    txt.Draw(x + sprite_width / 2, y + sprite_height / 2);
}
else
{
    var txt = ScribblejrFit($"Training: No Score", fa_center, fa_middle, fntDefault, text_size, sprite_width, sprite_height)
    txt.Draw(x + sprite_width / 2, y + sprite_height / 2);
}