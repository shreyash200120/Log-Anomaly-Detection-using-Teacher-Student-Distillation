#!/bin/bash

pip install -r requirements.txt
python src/lora_teacher_train.py
python src/distill_student.py
python src/evaluate.py
