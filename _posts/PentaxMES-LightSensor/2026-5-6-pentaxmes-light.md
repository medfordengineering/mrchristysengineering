---
layout: post
title:  "Pentax MES RetroMod (light sensor)"
categories: [ Jekyll ]
image: ./ax350.jpg
---
This post represents a continuation of my work to retro-mod vintage film cameras as detailed in my post Rangefinder RetroMod part 1. The reason this is not part 2 of the original post for the simple reason that I shifted focus from rangefinder cameras for the moment. This post will be dedicated to my attempts to design an improved light sensor for the Pentax ME Super and develop an improved light sensor design that can be used in multiple cameras.

## The Pentax Sensors

The Pentax ME Super use two photodiodes for sensing light. The photodiodes are placed on two sides of a circuit board that slides in behind the view finder as shown below. 

## Photodiodes vs Ambient Light Sensors

My inital plan was to use an ambient light sensor for this project. These sensors come in a single package. They generally talk I2C. They cover a wide range of the visible spectrum. They do not require a separate analog to digital converter. On the downside, there is a limited selection of these devicee. They require a software library. The are really, really, really small, with no-lead packages. I successfully soldered one of two in our Cuisinart reflow oven. Many, surprisingly, have fixed addresses meaning that you can't easily have two or more more on the same bus. Below you can see the first board I made using a pair of OPT3001. 

