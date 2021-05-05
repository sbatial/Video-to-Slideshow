# Video to Slideshow

Ein Skript zum konvertieren von Youtube-Videos zu Präsentationen.
(Theoretisch sind auch alle anderen Plattformen möglich, die youtube-dl unterstützt)

## How it works

1. Zieht sich den RSS-Feed des angegebenen Youtube Kanals
2. Extrahiert die URL des letzten Videos
3. Lädt das Video herunter
4. Konvertiert es zu einzelnen Frames
5. Erstellt eine Präsentation aus den Frames

# Usage

(Um das Skript zu benutzen müssen alle benutzten Tools installiert sein. Diese sind aufgelistet unter [Tools used](#Tools-used). Da die nur ein Spaßprojekt ist und keinerlei Ansprüche hat, außer ein wenig Jux gehe ich hier nicht näher darauf ein, wie man das unter unterschiedlichen Betriebssystemen macht.)

- Skript herunter laden und mit `chmod +x video_to_slides.sh` ausführbar machen
- Skript mit irgendeinem Texteditor öffnen und Channel-ID einfügen
- Skript ausführen

## Find Channel ID

Gehe auf den Youtube Channel und kopiere die Zahlen- und Buchstabenkompination vom Ende der URL

# Tools used

- [youtube-dl](https://yt-dl.org)
- [pandoc](https://www.pandoc.org)
- [ffmpeg](https://ffmpeg.org)
- [curl](https://curl.se)

# Why on earth would anyone want to do this?

Frei nach George Mallory: Weil es geht.
Die Idee dazu kam aus dem Video der SpaceFrogs [Tipps die dein Leben vergutschlimmern! - r/ShittyLifeProTips](https://www.youtube.com/watch?v=TOBgYdm9ftE)

