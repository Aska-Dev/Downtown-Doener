// Feather disable all

/// Caches plain text without formatting. The text is shrunk down to within the given maximum width
/// and height by reflowing the text at a smaller size. Over a few frames in the background,
/// Scribble Jr. will bake a vertex buffer that replaces the native text rendering and is faster to
/// draw.
/// 
/// N.B. Linebreaks will only happen on spaces and any single words too long for a line will not be
///      split in the middle.
/// 
/// This function scales text whilst adding newlines. If you want to scale down text without adding
/// newlines, which will gain you a little performance, then use ScribblejrShrink().
/// 
/// This function doesn't actually draw the text, it only returns a "text element struct". This
/// struct can then be used to draw the text, as well as get the width/height of the text, by
/// calling methods on the struct.
/// 
/// - <element>.Draw(x, y, [color=white], [alpha=1])
///   Draws the text element at the given coordinates. You can also optionally specify a colour
///   and alpha.
/// 
/// - <element>.GetWidth()
///   Returns the width of the text when drawn, in pixels.
/// 
/// - <element>.GetHeight()
///   Returns the height of the text when, in pixels.
/// 
/// - <element>.Bake()
///   Immediately fully bakes the vertex buffer for the text element. Helpful if you want to
///   pre-cache text elements for drawing later.
/// 
/// This function relies on internal caching for performance gains. If you change any of the
/// arguments provided to this function, Scribble Jr. will have to do extra work to recache the new
/// text data. Try to limit how often you change these arguments to get the best performance.
/// 
/// @param string
/// @param [hAlign=left]
/// @param [vAlign=top]
/// @param [font=default]
/// @param [fontScale=1]
/// @param [width]
/// @param [height]

function ScribblejrFit(_string, _hAlign = fa_left, _vAlign = fa_top, _font = undefined, _fontScale = 1, _maxWidth = infinity, _maxHeight = infinity)
{
    static _system      = __ScribblejrSystem();
    static _nullWrapper = _system.__nullWrapper;
    static _cache       = _system.__wrappersCache;
    static _array       = _system.__elementsArray;
    
    if ((_string == "") || (_maxWidth < 0) || (_maxHeight < 0)) return _nullWrapper;
    if (_font == undefined) _font = _system.__defaultFont;
    _fontScale *= SCRIBBLEJR_GLOBAL_FONT_SCALE;
    
    var _key = string_concat(_string, ":",
                             _hAlign + 3*_vAlign, ":", //Pack these flags together
                             _font, ":",
                             _fontScale, ":",
                             _maxWidth, ":",
                             _maxHeight, ":B");
    
    var _wrapper = _cache[$ _key];
    if (_wrapper == undefined)
    {
        var _element = new __ScribblejrClassFit(_key, _string, _hAlign, _vAlign, _font, _fontScale, _maxWidth, _maxHeight);
        var _wrapper = new __ScribblejrClassWrapper(_element);
        _element.__wrapper = weak_ref_create(_wrapper);
        
        _cache[$ _key] = _wrapper;
        array_push(_array, _element);
    }
    
    return _wrapper;
}