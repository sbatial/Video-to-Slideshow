# Video to Slideshow

Ein Skript zum konvertieren von Youtube-Videos zu Präsentationen.
(Theoretisch sind auch alle anderen Plattformen möglich, die youtube-dl unterstützt)

## How it works

1. Zieht sich den RSS-Feed des angegebenen Youtube Kanals
2. Extrahiert die URL des letzten Videos
3. Lädt das Video herunter
4. Konvertiert es zu einzelnen Frames
5. Erstellt eine Präsentation aus den Frames

# Tools used

- [youtube-dl](https://yt-dl.org)
- [pandoc](https://www.pandoc.org)
- [ffmpeg](https://ffmpeg.org)
- [curl](https://curl.se)

# Why on earth would anyone want to do this?

Frei nach George Mallory: Weil es geht.
Die Idee dazu kam aus dem Video der SpaceFrogs [Tipps die dein Leben vergutschlimmern! - r/ShittyLifeProTips](https://www.youtube.com/watch?v=TOBgYdm9ftE)
