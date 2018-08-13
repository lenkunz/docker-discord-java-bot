#!/bin/bash
ls -la /home/music/main/bot_files
chmod +x /home/music/main/bot_files/youtube-dl
(cd /home/music/main/bot_files/; java -jar ./JMusicBot-0.1.3.jar -nogui)