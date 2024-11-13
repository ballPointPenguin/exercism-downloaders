"""This module provides functionality to download Exercism exercises for one or more tracks."""

import os
import json
import subprocess
import argparse


def download_exercises(json_dir, exercism_dir, track=None, force=False):
    """Download Exercism exercises from JSON configuration files."""
    if track:
        filenames = [f'{track}.json']
    else:
        filenames = os.listdir(json_dir)

    for filename in filenames:
        if filename.endswith('.json'):
            track = filename.split('.')[0]
            filepath = os.path.join(json_dir, filename)

            with open(filepath, 'r', encoding='utf-8') as file:
                file_content = file.read()
                print(f'Processing {filename}...')

                try:
                    exercises = json.loads(file_content)
                except json.JSONDecodeError as e:
                    print(f"Error decoding JSON from {filename}: {e}")
                    continue # Skip to the next file

                for exercise, status in exercises.items():
                    exercise_dir = os.path.join(exercism_dir, track, exercise)
                    if status[0] != 'locked' and (force or not os.path.exists(exercise_dir)):
                        print(f"Downloading {exercise}...")
                        force_flag = '--force' if force else ''
                        command = f'exercism download --exercise={exercise} --track={track} {force_flag}'
                        subprocess.run(command, shell=True, check=True)
if __name__ == "__main__":
    parser = argparse.ArgumentParser(description='Download exercism exercises')
    parser.add_argument('--track', type=str, help='Track to download exercises for')
    parser.add_argument('--force', action='store_true', help='Force download even if exercise already exists')
    args = parser.parse_args()

    JSON_DIR = 'json'  # Local path to the directory containing JSON files
    EXERCISM_DIR = os.path.expanduser('~/exercism')

    download_exercises(JSON_DIR, EXERCISM_DIR, track=args.track, force=args.force)
