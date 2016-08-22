// This file is released under an MIT license.  Knock yourself out.  

// ==== Standard POV-Ray Includes ====
#include "colors.inc"	  // Standard Color definitions
#include "textures.inc"	  // Standard Texture definitions
#include "functions.inc"  // internal functions usable in user defined functions
#include "metals.inc"               
               
               
// create a regular point light source
light_source {
  0*x                  // light's position (translated below)
  color rgb <1,1,1>    // light's color
  translate <-10, 10, -30>
}
           
           
// perspective (default) camera
camera {
  location  <0, -0.0, -3>
  look_at   <0, -0.0,  0.0>
  right     x*image_width/image_height
}
          

#declare Drawn1=
object {
    sphere {
        <0,0.0,0>,
        0.55        
    }    
    texture {
        pigment {    
            image_map {
              png "MicrosoftPaintMap.png" 
              map_type 1        // 1=spherical 
              interpolate 2     // 2=bilinear
            } // image_map                                                                              
        }                         
        finish {
            ambient rgb <.1, .1, .1>
        }
        rotate <0,-100,0>
    }                         
    no_shadow     
}
                              
                 
#declare Map=
object {
    sphere {
        <0,0.0,0>,
        0.55        
    }    
    texture {
        pigment {    
            image_map {
              jpeg "Wikipedia_Equirectangular_projection.jpg" 
              map_type 1        // 1=spherical 
              interpolate 2     // 2=bilinear
            } // image_map                                                                              
        }                         
        finish {
            ambient rgb <.1, .1, .1>
        }        
    }                         
    no_shadow     
}
                              
                 
                 

object { Drawn1 translate <-0.7,0,0> }
object { Map translate <0.7,0,0>}

