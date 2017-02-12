function [] = playNote(midiNoteNumber)

% Load contents of a .mat file.
clc
subject3 = matfile('hrir_final.mat');
name = subject3.name;
itd = subject3.ITD;
onR = subject3.OnR;
onL = subject3.OnL;

% These are 25 x 50 x 200 matrices.
azimuth = 1;
elevation = 1;
hrir_l = subject3.hrir_l(azimuth, elevation, :);
hrir_r = subject3.hrir_r(azimuth, elevation, :);

% Generate a sinusoidal signal.
samplingRate = 44100;
duration = 1 * samplingRate;
samplingPeriod = 1 / samplingRate;
timeVector = (0 : duration - 1) * samplingPeriod;
%timeVector = 0 : samplingPeriod : (duration - 1) / samplingRate;

% a simple envelope comprising a half cycle of a sine wave
envelope = sin(pi * timeVector);
frequency = 440 * power(2, (midiNoteNumber - 69) / 12);
signal = cos(2 * pi * frequency * timeVector);

% Display contents and evaluate a signal x.
impulseResponse = squeeze(hrir_l);
filteredSignal = filter(impulseResponse, 1, signal);

sound(filteredSignal .* envelope, samplingRate);
end

function [] = threeDeeAudioCues( )

    [sound, sampleRate] = audioread('x1.wav');

    if(size(sound, 2) == 1) 
        sound = [sound, sound];
    end

    %ITD 
    %0, 0.6, 1.5, 10, 40
    %ms = 10;
    width = .75;
    speedOfSound = 1126;
    theta = deg2rad(45);
    ms = (width/speedOfSound) * theta + sin(theta);
    
    left = sound(:,1);
    right = sound(:, 2);

    delaySamples = floor(ms * (sampleRate/1000));
    silence = zeros(delaySamples, 1); 

    left = [silence; left];
    right = [right; silence]; 

    
    %change IID 
    factor = 1;
    left = factor * left;
    
    newSound = [left, right];

    soundsc(newSound, sampleRate);
end

