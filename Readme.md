# Umzug

TLDR: Benutz' gitlab.

Für den unwahrscheinlichen Fall, dass jemand über dieses Repo stolpert:
-> Ich bin mit allen meinen Repositories zu https://gitlab.com/sbatial umgezogen, da ich es dort wesentlich angenehmer/weniger nervig finde (Ich verstehe nicht, weshalb ich auf github in den Browser gehen muss um ein Repo zu erstellen, anstatt dass einfach ein neues erstellt wird, wenn noch keins existiert... Es ist offensichtlich technisch möglich)

# Video to Slideshow

Ein Skript zum konvertieren von Youtube-Videos zu Präsentationen.
(Theoretisch sind auch alle anderen Plattformen möglich, die youtube-dl unterstützt)

# Disclaimer

Das hier ist ein reines Spaßprojekt.
Jegliche Benutzung auf eigene Gefahr.
Ich habe es ausprobiert unter MacOS und nur Befehle benutzt, die sowohl unter Linux als auch MacOS funktionieren sollten.
Ich gebe jeglichen Anspruch auf Support ab.
Ich beanworte gerne Fragen, falls ich Zeit habe. Es besteht jedoch explizit kein Anspruch auf Antwort, Hilfe oder ähnliches.
Jeder ist frei dieses Skript zu benutzen oder modifizieren.

Viel Spaß :)

## How it works

1. Zieht sich den RSS-Feed des angegebenen Youtube Kanals
2. Extrahiert die URL des letzten Videos
3. Lädt das Video herunter
4. Konvertiert es zu einzelnen Frames
5. Erstellt eine Präsentation aus den Frames

# Usage

(Um das Skript zu benutzen müssen alle benutzten Tools installiert sein. Diese sind aufgelistet unter [Tools used](#Tools-used). Da die nur ein Spaßprojekt ist und keinerlei Ansprüche hat, außer ein wenig Jux gehe ich hier nicht näher darauf ein, wie man das unter unterschiedlichen Betriebssystemen macht.)

- Skript herunter laden und mit `chmod +x video_to_slides.sh` ausführbar machen
- Skript mit irgendeinem Texteditor öffnen und entweder
    - Channel-ID einfügen oder
    - Video-ID einfügen
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

