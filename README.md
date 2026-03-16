# Mini-3D-Church-Organ
A mini church organ simulator for people who do not know music theory and want to play something beautiful.

![sample](assets/sample.png)

# About

This is a toy project I have been working on, using C++ and Qt Quick Framework, sfizz and portaudio libraries, to facilitate playing the church organ
on a pc keyboard, without the need of music theory or an external midi keyboard.

This project is abstracting the piano keys in a way so that every keystroke belongs in the D minor scale, so the every combination enables harmony without
worrying about which piano keys sound well together. Of course providing only the notes of the D minor scale is very limiting, but this project is just for playing something cool.
Nevertheless, the ability to switch between major and minor scales will be added soon.

# Usage

The interface layout is very simple. Seven D minor scale single notes are available by pressing the right number keys on the keyboard, and the seven chords of the D minor scale
are available in both the lower and higher part of the midi key sequence. It is better not to play only the single notes, because a note by itsef is not very interesting IMHO, but with
the available chords together. 

In the center of the application there is a 3D scene from a real catholic church, to emulate the vibe of playing a real church organ. With the mouse dragging you can change the perspective angle 
of the scene.

That's it for now. More feature will be available on the near or distant future, depending on available free time.

# Installation

This project was developed in Qt Creator, with the Qt Quick Framework, on Fedora Linux. The base language is C++, and the libraries used are sfizz and portaudio.
