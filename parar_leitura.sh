#!/bin/bash
# Parar qualquer leitura TTS em andamento
pkill -f "mpv.*edge-tts-okular" 2>/dev/null || true
pkill -f "edge-tts.*edge-tts-okular" 2>/dev/null || true
rm -f /tmp/edge-tts-okular.lock /tmp/edge-tts-okular.mp3 2>/dev/null || true
notify-send -i media-playback-stop "Leitor TTS" "Leitura interrompida." -t 2000 2>/dev/null || true
