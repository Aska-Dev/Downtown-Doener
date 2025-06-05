if(position_meeting(mouse_x, mouse_y, id))
{
    image_index = 1;
}
else
{
    image_index = 0;
}


draw_self();
  

var txt = ScribblejrFit("Credits", fa_center, fa_middle, fntDefault, 1, sprite_width, sprite_height);
txt.Draw(x, y);