hints = 
[
    lexicon_text("hint.1"), 
    lexicon_text("hint.2"), 
    lexicon_text("hint.3"), 
    lexicon_text("hint.4"), 
    lexicon_text("hint.5"), 
]

hintRoll = irandom_range(0, array_length(hints) -1);

hint = hints[hintRoll];