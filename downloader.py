import os
import json
import subprocess

def download_exercises(json_dir, exercism_dir):
    for filename in os.listdir(json_dir):
        if filename.endswith('.json'):
            track = filename.split('.')[0]
            filepath = os.path.join(json_dir, filename)

            with open(filepath, 'r') as file:
                file_content = file.read()
                print(f'Processing {filename}...')

                try:
                    exercises = json.loads(file_content)
                except json.JSONDecodeError as e:
                    print(f"Error decoding JSON from {filename}: {e}")
                    continue # Skip to the next file

                for exercise, status in exercises.items():
                    # log exercise
                    exercise_dir = os.path.join(exercism_dir, track, exercise)
                    if status[0] != 'locked' and not os.path.exists(exercise_dir):
                        # log exercise_dir
                        print(f"Downloading {exercise}...")
                        command = f'exercism download --exercise={exercise} --track={track}'
                        subprocess.run(command, shell=True)

json_dir = 'json'  # Local path to the directory containing JSON files
exercism_dir = os.path.expanduser('~/exercism')

download_exercises(json_dir, exercism_dir)
