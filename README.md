This provides a module to drill holes for screws.

The following standards are currently understood:

DIN912, DIN963, DIN965, DIN34811, ISO4762, ISO2009, ISO7046, ISO14581 and ISO10642.

#### Usage

```openscad

include <screw_holes.scad>
 
difference()
{
  solid_object();
  // Drill a hole for a DIN965 M3 screw of length 20 mm,
  // with 10 mm thread.
  screw_hole(DIN965, M3, 20, 10);

  // Drill a M4 hole through the 30 mm thick object, with a countersunk
  // head with a 90 degree angle that is 8 mm wide at the top and 4 mm
  // high.
  translate([-10, 10, 0])
    screw_hole([8, 4, 90], M4, 30);
}
```

The top of the head of the screw will be in the xy-plane, with the screw extending into the positive z direction.

Note that angles larger than 90 degrees might only be printable if the

top of the screw is at the top, or you'd need support while printing it,

in which case you might as well drill the hole afterwards.

The following global variables can optionally be changed after the include:

```openscad
screw_hole_fn = 32;                      // Number of segments for a full circle.
screw_hole_length_extend = 0.1;          // Extra length of the non-threaded part of the screw extends.
screw_hole_height_extend = 0.1;          // Extra distance the hole extends above the surface.
screw_hole_cylinderhead_spacing = 0.1;   // Extra radius of hole around screw head.
screw_hole_countersunk_delta = 0.2;      // Extra depth of countersunk screw hole.
```

#### Installation

There are a few ways of using this module in your project:

1. Copy the `screw_holes.scad` file to your project directory.
2. Copy the `screw_holes.scad` file to the OpenSCAD library directory. Go to `Help` -> `Library Info` and look for `User Library Path`. Copy the file to that directory.
3. Add this module as a submodule to your project. This is the recommended way of using this module. To do this, run the following command in your project directory:

```bash
git submodule add https://github.com/nomike/openscad-screw-holes.git
git submodule update --init --recursive
```

Then, in your OpenSCAD file, include the module like this:

```openscad
include <openscad-screw-holes/screw_holes.scad> // if you used the submodule method
include <screw_holes.scad> // if you copied the file to your project directory or the user-library directory
```

#### Acknowledgements

This module is based upon the [screw_holes.scad](https://www.thingiverse.com/thing:1731893) module by [carloverse](https://www.thingiverse.com/carloverse).

The original module hasn't been updated in years and it's throwing some warnings in OpenSCAD. As it is a really useful module, I decided to fork and update it.
