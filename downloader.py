import os
import json
import subprocess

def download_exercises(json_directory):
    for filename in os.listdir(json_directory):
        if filename.endswith('.json'):
            track = filename.split('.')[0]
            filepath = os.path.join(json_directory, filename)

            with open(filepath, 'r') as file:
                file_content = file.read()
                print(f'Processing {filename}...')
                # print(file_content)
                try:
                    exercises = json.loads(file_content)
                except json.JSONDecodeError as e:
                    print(f"Error decoding JSON from {filename}: {e}")
                    continue # Skip to the next file

                for exercise, status in exercises.items():
                    if status[0] != 'locked':
                        command = f'exercism download --exercise={exercise} --track={track}'
                        subprocess.run(command, shell=True)

json_directory = 'json'  # Path to the directory containing JSON files
download_exercises(json_directory)
