# Depression_Detection
1. extracted_audio
Contains audio files extracted from raw recordings
Based on timestamps from transcripts
Clean audio (no noise or silence)
Ready for feature extraction or model training
2. extracted_features
Stores features extracted from audio files
Examples:
Mel Spectrograms
MFCC (Mel Frequency Cepstral Coefficients)
Other audio features
3. audio_chunks
Contains smaller segments of audio (chunks)
Created from extracted audio files
Used when models require raw signal input

Chunking code is available in:

src/data_preparation/
4. dataset_info
Contains metadata and dataset-related files:
Labels
Transcripts
Train-test split information
CSV files
5. src (Source Code)

Main project codebase, organized into:

🔹 data_preparation
Code for:
Audio extraction
Audio chunk creation
🔹 preprocessing
Code for:
Extracting audio using timestamps
Audio augmentation
🔹 training
Code for training machine learning / deep learning models
🔹 visualization
Code for:
Exploratory Data Analysis (EDA)
Data visualization
🎧 Audio Features That Can Be Extracted

You can extract the following features from audio:

Mel Spectrogram
MFCC
Fundamental Frequency
Spectral Contrast
Recurrence Matrix
Chroma Features
Zero Crossing Rate
RMS Energy
Tonnetz
Teager Energy Operator
🚀 Our Approach
1. Using Raw Signal Data
Model: DistilHuBERT
Process:
Convert audio into equal-length chunks
Train directly on raw waveform data
2. Using Extracted Features
🔸 Mel Spectrogram
Models:
CNN
VGG19
ResNet50
Approach:
Convert spectrograms into patches
Train image-based models
🔸 MFCC
Models:
CNN
VGG19
Transformer
💡 Additional Ideas / Experiments
Use Wave2Vec2 for emotion recognition
Classify audio based on detected emotions
📚 Useful Resources
DistilHuBERT fine-tuning
Audio Spectrogram Transformer
Audio Spectrogram Transformer research paper
✅ Summary
Clean pipeline: Audio → Features → Chunks → Training
Two main approaches:
Raw audio (DistilHuBERT)
Feature-based (Spectrogram, MFCC + CNN/Transformers)
Flexible architecture for experimentation and scaling
