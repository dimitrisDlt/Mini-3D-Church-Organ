
#include "audio_engine.h"
#include <sfizz.h>

sfizz_synth_t *AudioEngine::m_Synth;

AudioEngine::AudioEngine() {

    PaStreamParameters outputParameters;

    outputParameters.channelCount = 2;
    outputParameters.device = 10;
    outputParameters.hostApiSpecificStreamInfo = NULL;
    outputParameters.sampleFormat = paFloat32;
    outputParameters.suggestedLatency = 0;
    outputParameters.hostApiSpecificStreamInfo = NULL; // See

    Pa_Initialize();

    Pa_OpenDefaultStream(&m_Stream, 0, 2, paFloat32, M_SAMPLE_RATE, M_BLOCK_SIZE, audioCallBack, nullptr);
    // Pa_OpenStream(&m_Stream, nullptr, &outputParameters, M_SAMPLE_RATE, M_BLOCK_SIZE, paNoFlag,
    // audioCallBack, nullptr);

    m_Synth = sfizz_create_synth();
    sfizz_set_sample_rate(m_Synth, M_SAMPLE_RATE);
    sfizz_set_samples_per_block(m_Synth, M_BLOCK_SIZE);
    sfizz_set_preload_size(m_Synth, 8192);

    const char *path = "TownHallOrgan_SP/Sampler Instruments/SFZ/Preset 5.sfz";
    sfizz_load_file(m_Synth, path);

    Pa_StartStream(m_Stream);
}

AudioEngine::~AudioEngine() {

    Pa_StopStream(m_Stream);
    Pa_Terminate();
    sfizz_free(m_Synth);
}

int AudioEngine::audioCallBack(const void *input, void *output, unsigned long frameCount,
                               const PaStreamCallbackTimeInfo *timeInfo, PaStreamCallbackFlags statusFlags,
                               void *userData) {

    float *out = (float *) output;

    float left[frameCount];
    float right[frameCount];
    float *channels[2] = {left, right};

    sfizz_render_block(m_Synth, channels, 2, frameCount);

    for (unsigned long i = 0; i < frameCount; ++i) {
        *out++ = left[i];
        *out++ = right[i];
    }

    return paContinue;
}

void AudioEngine::sendNoteOn(int note) { sfizz_send_note_on(m_Synth, 0, note, 120); }

void AudioEngine::sendNoteOff(int note) { sfizz_send_note_off(m_Synth, 2000, note, 0); }

void AudioEngine::init() {}
