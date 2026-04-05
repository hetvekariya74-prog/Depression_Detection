# Directories Explained

- **extracted_audio**: Contains the audio files extracted from raw audio files based on the timestamps in the transcript. This audio files are clean and does not contain any noise or silence. It is ready to be used for feature extraction or training.
- **extracted_features**: Put the extracted features from audio files here for example, mel spectrograms, MFCCs, etc.
- **audio_chunks**: Put the audio chunks here. These audio chunks will be created from the extracted audio files and this audio chunks will be used for training the model when model requires raw signal data. The code for creating audio chunks as per required time duration is provided in the src folder inside `data_preparation` directory.
- **dataset_info**: Contains metadata and csv files related to the dataset such as labels, transcripts, train test split information, etc.
- **src**: Contains the source code for the project.
   -   **data_preparation**: Contains code for data preparation such as extracting audio, creating audio chunks, etc.
   -   **preprocessing**: Contains code for preprocessing the audio files such as extracting audio from timestamps and augmenting the audio files.
   -   **training**: Contains code for training the model.
   -   **visualization**: Contains code for Exploratory Data Analysis (EDA) and visualization of the data.
  

# Features that can be extracted from audio files

- Mel spectogram, fundamental frequency, spectral constrast, recurrence matrix, MFCC, chroma features, zero crossing rate, RMS energy, tonnetz, Teager energy operator, etc.
  
# Our Approach

1. Raw Signal Data:
   - Train DistilHubert (Chunk audio file to same length and then train)
  
2. Extracted Features:
   - Mel Spectogram: CNN, VGG19, ResNet50 (Create patches of mel spectograms and then train)
   - MFCC: CNN, VGG19, Transformer

# Some resources

- [Wave2Vec2 Emotion Recognition](https://huggingface.co/m3hrdadfi/wav2vec2-xlsr-greek-speech-emotion-recognition) - Maybe we can try to identify emotions from the audio files and then classify the audio files based on the emotions. (This is just a thought)
- [DistilHubert Fine Tuning](https://huggingface.co/learn/audio-course/en/chapter4/fine-tuning)
- [Audio Spectogram Transformer](https://huggingface.co/docs/transformers/en/model_doc/audio-spectrogram-transformer)
- [Audio Spectogram Transformer Paper](https://arxiv.org/pdf/2104.01778)