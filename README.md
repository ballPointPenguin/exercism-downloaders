# Exercism Downloader

A simple Python script to download Exercism exercises from one or more tracks.

## Prerequisites

- Python 3.x
- Exercism CLI installed and configured
- JSON configuration files for tracks in a `json` directory

## Usage

Basic usage to download exercises from all tracks:

```bash
python downloader.py
```

To download exercises from a specific track:

```bash
python downloader.py --track=python
```

To force download even if the exercise already exists:

```bash
python downloader.py --force
```

You can combine flags:

```bash
python downloader.py --track=python --force
```

## Behavior

- The script will only download exercises that don't already exist in your local directory
- Existing exercises will be skipped to prevent overwriting your work
- Exercises marked as 'locked' in the JSON configuration will be skipped

## Configuration

The script expects:

- JSON files to be in a `json` directory in the same location as the script
- Each JSON file should be named after the track (e.g., `python.json`, `javascript.json`)
- Exercism exercises will be downloaded to `~/exercism` directory
