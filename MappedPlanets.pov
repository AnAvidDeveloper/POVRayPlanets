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
  location  <0, -0.0, -7>
  look_at   <0, -0.0,  0.0>
  right     x*image_width/image_height
}
          

#declare Background=
object {          
    // An infinite planar surface
    // plane {<A, B, C>, D } where: A*x + B*y + C*z = D
    plane {
      z, // <X Y Z> unit surface normal, vector points "away from surface"
      30.0 // distance from the origin in the direction of the surface normal
      hollow on // has an inside pigment?
    }   
    
    texture {
        pigment {    
            image_map {
              jpeg "PIA16884.jpg" 
              map_type 0        // 0=planar
              interpolate 2     // 2=bilinear
            } // image_map            

                         
            rotate <0,0,90>
            scale <80,-80,1>     
            translate <50,21,0>              

        }                         
        finish {
            ambient rgb <.35,.35,.35>
        }
        
    }   
    
}           


#declare Fractal1=
object {
    sphere {
        <0,0.0,0>,
        0.55        
    }    
    texture {
        pigment {    
            image_map {
              png "Fractal1.png" 
              map_type 1        // 1=spherical 
              interpolate 2     // 2=bilinear
            } // image_map                                                                              
        }                         
        finish {
            ambient rgb <.35,.35,.35>
        }
    }                         
    no_shadow     
}
                              


#declare Fractal2=
object {
    sphere {
        <0,0.0,0>,
        0.55        
    }

    
    texture {
        pigment {    
            image_map {
              png "Fractal2.png" 
              map_type 1        // 1=spherical 
              interpolate 2     // 2=bilinear
            } // image_map            

                         
            rotate <0,-50,0>                     
        }                         
        finish {
            ambient rgb <.35,.35,.35>
        }
    }      
                   
    no_shadow     
}
    
    
#declare Fractal00004=
object {
    sphere {
        <0,0.0,0>,
        0.55        
    }

    
    texture {
        pigment {    
            image_map {
              png "fractals_00004.png" 
              map_type 1        // 1=spherical 
              interpolate 2     // 2=bilinear
            } // image_map            

                         
        }                         
        finish {
            ambient rgb <.35,.35,.35>
        }
    }      
                   
    no_shadow     
}

#declare Fractal01272=
object {
    sphere {
        <0,0.0,0>,
        0.55        
    }

    
    texture {
        pigment {    
            image_map {
              png "fractals_01272.png" 
              map_type 1        // 1=spherical 
              interpolate 2     // 2=bilinear
            } // image_map            

                         
        }                         
        finish {
            ambient rgb <.35,.35,.35>
        }
    }      
                   
    no_shadow     
}
         
         
    
#declare Fractal01173=
object {
    sphere {
        <0,0.0,0>,
        0.55        
    }

    
    texture {
        pigment {    
            image_map {
              png "fractals_01173.png" 
              map_type 1        // 1=spherical 
              interpolate 2     // 2=bilinear
            } // image_map            

                         
        }                         
        finish {
            ambient rgb <.35,.35,.35>
        }
    }      
                   
    no_shadow     
}

#declare Fractal00001=
object {
    sphere {
        <0,0.0,0>,
        0.55        
    }

    
    texture {
        pigment {    
            image_map {
              png "fractals_00001.png" 
              map_type 1        // 1=spherical 
              interpolate 2     // 2=bilinear
            } // image_map            

                         
        }                         
        finish {
            ambient rgb <.35,.35,.35>
        }
    }      
                   
    no_shadow     
}
         
#declare Fractal00001_crand=
object {
    sphere {
        <0,0.0,0>,
        0.55        
    }

    
    texture {
        pigment {    
            image_map {
              png "fractals_00001.png" 
              map_type 1        // 1=spherical 
              interpolate 2     // 2=bilinear
            } // image_map            

                         
        }                         
        finish {
            ambient rgb <.35,.35,.35>   
            crand 0.25
        }
    }      
                   
    no_shadow     
}

                              

object { Background }

object { Fractal00001 translate <-1,1.5,0> }
object { Fractal01272 translate < 1,1.5,0> }
object { Fractal00004 translate < 1,0,0> }
object { Fractal01173 translate <-1,0,0> }

object { Fractal1 translate <-1,-1.5,0> }
object { Fractal2 translate <1,-1.5,0> }


object { Fractal00001_crand translate <0,-2.5,0> }
