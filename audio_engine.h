#ifndef INC_3DORGAN_AUDIO_ENGINE_H
#define INC_3DORGAN_AUDIO_ENGINE_H
#include <QObject>
#include <QtQml/qqml.h>
#include <portaudio.h>
#include <qqmlintegration.h>
#include <sfizz.hpp>


class AudioEngine : public QObject {

    Q_OBJECT
    QML_SINGLETON
    QML_ELEMENT

public:
    AudioEngine();
    ~AudioEngine();

public slots:

    void sendNoteOn(int note);
    void sendNoteOff(int note);
    void init();

private:
    static sfizz_synth_t *m_Synth;
    PaStream *m_Stream;
    const float M_SAMPLE_RATE = 44100.0f;
    const int M_BLOCK_SIZE = 256;
    // std::atomic<bool> m_underflowed{false};

private:
    static int audioCallBack(const void *input, void *output, unsigned long frameCount,
                             const PaStreamCallbackTimeInfo *timeInfo, PaStreamCallbackFlags statusFlags,
                             void *userData);
};


#endif // INC_3DORGAN_AUDIO_ENGINE_H
