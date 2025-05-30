hints = 
[
    "Halte Rechtsklick gedrückt um das Element in deiner Hand wegzuwerfen!",
    "Ich hab 'ne Zwiebel auf'm Kopf, ich bin ein Döner. Denn Döner macht schöner...",
    "Du kannst Pommes in der Friteuse zwischenlagern, wenn deine Pommesschüssel noch voll ist.",
    "Du kannst auch einen fertigen Döner im Brot in die Mikrowelle stecken um ihn aufzuwärmen!",
    "Gefällt dir der aktuelle Song nicht? Klicke einfach auf's Radio um den Sender zu wechseln."
]

hintRoll = irandom_range(0, array_length(hints) -1);

hint = hints[hintRoll];