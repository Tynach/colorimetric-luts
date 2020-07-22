# Colorimetric LUTs

I was unhappy with the default night LUTs, including the night vision LUT. So I made my own, trying to keep it as similar to the original's intent as possible while using color space conversion math to be as accurate to life as possible.

All LUTs which change the white balance use chromatic adaptation to shift the colors toward a different white point. I choose white points from the CIE's 'Illuminant series D', also known as the 'daylight locus', which is meant to represent natural daylight at different color temperatures. Luminosity is scaled roughly identically to the default LUTs. All color operations were performed in a linear light scale, then converted back into sRGB for the LUTs themselves.

The main LUTs modified are the nighttime ones, though I also added LUTs for night vision equipment and dawn/sunset (the latter which is now actually used by the game). LUT details:

* lut-night.png - Color temperature: 25000K; darkest it gets.
* lut-riseset.png - Color temperature: 4000K; dawn and sunset, not quite so dark.
* night.png - Same as lut-night, but a tiny bit brighter for the map view.
* nightvision.png - Simulates a lowered gamut display, and is only very slightly dimmer than standard full daylight ('identity' LUT).


## FAQ

1. **What is a 'LUT'?**

    Well, 'LUT' stands for 'LookUp Table', though in the context of *this* mod it refers to a 'Color LookUp Table' (sometimes called a 'cLUT'). These were added to version 0.18 for handling how colors change at night, when wearing night vision goggles, and so on in a more moddable way.

2. **So, does this mod basically make night time more 'realistic'?**

    Essentially, yes.

3. **Does that mean it'll be *even more* difficult to see at night?**

    Maybe, depending on your monitor. I've proposed a possible change in the LUTs provided in this mod on the discussion page in the mod portal, and would like some opinions on the proposed new LUTs!

    However, if your display is a CRT or follows either the sRGB or BT.1886 standards, then nope! The default LUTs don't account for how human eyes perceive and balance colors under different light sources. The result is that everything is tinted blue at night, and by an amount that makes it harder to tell the difference between things that are meant to be. For example, orange and red: the orange is now dark purplish pink, and the red is just a sliiiiightly deeper purplish pink.

    With these LUTs, the perceived difference between hues should more or less match up to how our eyes would perceive those same differences, when objects of those colors are placed under a light source that's more blue. Because of this, the contrast between colors is easier to see, improving visibility. Additionally, the exact hue of blue at night is less extreme than the default LUTs (though I did go with the most extreme form of blue that was still a proper daylight color).


## Factorio Mod Portal Pages

[Main Page][main]  
[Downloads][down]  
[Discussion][disc]

[main]: https://mods.factorio.com/mod/colorimetric-luts
[down]: https://mods.factorio.com/mod/colorimetric-luts/downloads
[disc]: https://mods.factorio.com/mod/colorimetric-luts/discussion