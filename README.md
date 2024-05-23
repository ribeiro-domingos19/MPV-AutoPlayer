# YouTube Downloader Script

This script allows you to download YouTube videos directly to your Termux environment. It utilizes `youtube-dl` to handle the downloading process and logs activities to help you track the script's operations.

## Features

- **Download YouTube Videos:** Quickly download videos from YouTube using a provided URL.
- **Customizable Destination:** Videos are saved in a designated directory within your home directory.
- **Logging:** Logs the activities and status of downloads to help with debugging and tracking.

## Prerequisites

Ensure that you have the following installed in your Termux environment:

- Python
- `youtube-dl`
- `ffmpeg`

You can install these dependencies by running:

```sh
pkg update && pkg upgrade
pkg install python ffmpeg
pip install youtube-dl
