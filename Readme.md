# 3D Synth

This is the main repository for *3D Synth*, a software synthesizer that is capable positioning its sounds in a 3D space. *3D Synth* is being created by Luis F. Vieira Damiani, James Safko, and Gordon Pierce.

[Click here for a video presentation of the project!](https://youtu.be/Cb7Vyj2r13E?list=FLx8viq1dhbrLlmMVLbDTQyw)

## Acknowledgements

*3D Synth* utilizes portions of [FFT-based binaural panner v3](http://jakobhandersen.dk/projects/fft-based-binaural-panner/download/) by Jakob Hougaard Andersen at the Aarhus University. His project is in turn based on [Head in Space] (http://sites.google.com/site/dariopizzamiglio/projects/head-in-space) by Dario Pizzamiglio. Head-related impulse responses are taken from [The CIPIC HRTF Database](http://interface.cipic.ucdavis.edu/sound/hrtf.html).

## Target Population

*3D Synth* is a tool aimed at professional and amateur musicians, both performers and composers, as well as sound designers, music producers, and teachers. Possible outcomes include new compositions, recordings, and game soundtracks and effects that are not just encoded, but actually *conceived* from the perspective of 3D audio positioning. Equally important, the final product is expected to become an invaluable instructional and demonstration tool for both sound synthesis and 3D audio positioning.

## Musical Dimensions and Inspiration

Along with the widespread access of information, the internet era brought an unprecedented explosion of new musical styles. They are created and forgotten more quickly than most can acknowledge their existence. A crucial aspect of this modern phenomenon is that the whole concept of style begins to shift toward ever more individualistic approaches. We talk more and more about a certain producer's (or group thereof) style than about the style of the baroque era, say, which would certainly be significantly more encompassing than the transient styles we see today. The effect of this transformation is in many cases very liberating, for a creative individual feels less and less compelled to restrain themselves to a current, sometimes century-long trend. As another byproduct, music, and especially electronic music, has been slowly freeing itself from traditions and becoming an exploration of sound. In order to explore sound, however, one must consider as many of its dimensions as possible, such as amplitude, duration, timbre, and harmonic content. In the particular context of computer-generated sounds, these dimensions may be considered without the limitations of what an acoustic instrument can produce. It is embedded in this spirit that *3D Synth* is proposed: it aims at making positioning, as a creative dimension of sound, as widespread as possible. In other words, *3D Synth* will be an inspirational tool for composers and sound designers.

## Musical Dimensions and Mixing

In addition to being an inspirational tool, *3D Synth* also has the potential to bring a literal new dimension to the mixing process of audio. The art of mixing audio is the process of treating individual elements of an audio project so that the listener can differentiate between them. In the context of music, mixing a project implies the manipulation of the frequency spectrum through use of filters, dynamic range through the use of compressors and limiters, and stereo spectrum through the use of panning such that each instrument or channel of audio sits in a unique location that complements the other elements within the project. Up until recently, command over the stereo spectrum in mixing was limited to panning either left or right which greatly hindered the amount of perceived space and depth in music. However, with the implementation of 3D audio, audio now can be mixed into a realistic 3D environment. With a more technical application of *3D Synth*, users will be able to mix this synthesizer into a 3D location within their audio projects, allowing precise control and a sense of depth.

## The Current State of Things

In the current state of things, most music and musicians do not take advantage of 3D audio. In order to obtain 3D positioning of a synthesizer sound source today, one must conceive the synthesizer and the 3D positioning separately. A precursor idea to extending the panorama to encompass an entire plane around the keyboardist came from Jean-Michel Jarre's *Lumineux* instrument. Despite not featuring any sound positioning whatsoever, Jarre's idea strongly signals the need for such implementations. From the standpoint of convolving impulse responses with sound sequences, several common audio processing tools come to mind, chief among them the nowadays conspicuous convolution reverbs, such as Audio Ease's *Altiverb*.


Interestingly enough, there is no known implementation of a synthesizer that utilizes 3D audio. Most 3D audio solutions are used solely as an effect or a channel strip. Commercial 3D audio encoders that can be used in conjunction to widely available software instruments include *Auro 3D*, a spatialization tool that works as an Avid proprietary AAX plugin in Pro Tools, as well as a standalone application. Other tools include the *Spatial Audio Designer* by New Audio Technology, the *Spat V3* by Ircam, and *RealSpace 3D Audio*, which is a plugin for Unity. 

## Where the Current Solution Fails

The current solution of conceiving a synthesizer and 3D encoder separately is not optimal in the sense that it is very hard to automate each note's positioning from within a digital audio workstation, let alone separate different oscillators embedded in a synthesizer instrument into azimuth and elevation voices. We propose to solve this problem exactly by performing the 3D encoding from the instrument itself. Moreover, the idea of dynamically re-positioning sound sources in a 3D audio space by use of a Leap Motion is also, as of 2017, unheard of.

## A True, Honest-to-God, 3D Synth

The present report proposes the creation of a 3D synthesizer instrument in which 3 oscillators' ranges are positioned all around the listener with different azimuths and elevations. This positioning can be optionally changed by waving hands in front of a Leap Motion controller placed in front of the keyboard. *3D Synth* will feature sine, sawtooth, triangle, and square waveforms, noise mix, low-pass, hi-pass, peaking, notch, and shelving filters, amplitude and filter envelopes, as well as amplitude and frequency modulation. In addition to the traditional bass-to-the-left and treble-to-the-right stereo panning of the notes, *3D Synth* will offer several other forms of positioning in a 3D space when used with headphones. *3D Synth* will ship as a standalone application for the macOS operating system, complete with full MIDI support, and as a plugin for Ableton Live. If successful, this project will produce an instrument that inspires people to think about music and sound effects as an entire sound environment, as opposed to a point-source phenomenon, influencing composers, producers, designers, and end-users alike.

## Foreseeable Challenges

The biggest anticipated challenge is to come up with a user interface that is as inspiring as the sounds the synthesizer will produce. That is key in order to harness all the inspirational power of this new tool. Unfortunately, many music producers are not familiar with the concept of 3d audio, so it is essential to have an intuitive and effective interface to encourage play and experimentation. Another challenge is dealing with the huge amount of data coming from the Leap Motion controller, especially when it comes to deciding which particular gestures are the most musical, logical, intuitive, and natural. As a basic strategy, working incrementally and subjecting prototypes to as many user tests as possible will play a crucial role.

## Coding *3D Synth* in Max 7

Below we present a series of videos describing the beginnings of *3D Synth* as a Max 7 program.

[Part One](https://youtu.be/TFRQtg3FMKE)

[Part Two](https://youtu.be/IibGXZ_GOd4)

[Part Three](https://youtu.be/s2PwPQEl7to)

[Part Four](https://youtu.be/ELu0cdtQECY)
