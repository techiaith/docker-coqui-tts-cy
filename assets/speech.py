import sys
import uuid

from TTS.utils.synthesizer import Synthesizer

model_path = "/models/model.pth.tar"
config_path = "/models/config.json"
speakers_file_path = ""
vocoder_path = ""
vocoder_config_path = ""
use_cuda = False
style_wav = ""

# load models
synthesizer = Synthesizer(
    tts_checkpoint=model_path,
    tts_config_path=config_path,
    tts_speakers_file=speakers_file_path,
    tts_languages_file=None,
    vocoder_checkpoint=vocoder_path,
    vocoder_config=vocoder_config_path,
    encoder_checkpoint="",
    encoder_config="",
    use_cuda=use_cuda,
)
wavs = synthesizer.tts(str(sys.argv[1:]), speaker_name="", style_wav=style_wav)
file_name = "/exports/{}.wav".format(uuid.uuid4())
synthesizer.save_wav(wavs, file_name)
print("Wav wedi cadw yn {}".format(file_name))

