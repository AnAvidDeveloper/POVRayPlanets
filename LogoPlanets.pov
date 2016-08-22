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


#declare Earth=
object {
    sphere {
        <0,0.0,0>,
        0.55        
    }

    
    texture {
        pigment {   
            agate
            agate_turb 0.7
            color_map {
                [0.0 color rgb <0,0.0,0.4> ]
                [0.4 color rgb <0,0.0,0.5> ]
                [0.5 color rgb <0.0,0.25,0.5> ]
                [0.6 color rgb <0.0,0.5,0.0> ]
                [0.8 color rgb <0.0,0.65,0.0> ]
                [0.9 color rgb <0.5,0.25,0.0> ]
                [1.0 color rgb <0.7,0.35,0.0> ]
            }        
        } 
        translate <5.43,0.42,0>           
        rotate <-25,40,0> 
    }      
                   
    no_shadow  
    
}

    

#declare Jupiter=
object {                   
    union {
        sphere {
            0*x,
            0.6        

            texture {
                pigment {   
                    agate
                    agate_turb 0.123
                    color_map {
                        [0.0 color rgb <1,0.3,0.3> ]
                        [0.05 color rgb <0.5,0.5,0.1> ]
                        [0.1 color rgb <0.8,0.35,0.35> ]
                        [0.3 color rgb <0.9,0.6,0.6> ]
                        [0.4 color rgb <0.6,0.4,0.4> ]
                        [0.6 color rgb <0.7,0.45,0.15> ]
                        [0.75 color rgb <0.5,0.65,0.65> ]
                        [0.82 color rgb <0.85,0.85,0.15> ]
                        [1.0 color rgb <0.85,0.4,0.2> ]
                    }
                
                    //color rgb <1,0.3,0.3>
                }                      
            }      

        }
    
        
        disc {
            0*x,
            <0,0,1>,
            0.83,
            0.70            
            texture { 
                pigment { color rgb <0.6, 0.6, 0.5> } 
                finish { ambient rgb <0.4,0.4,0.32> } 
            }
        }                 
    }          
               
               
    rotate <75,45,45>  
    no_shadow
}


object { Background }
object { Earth translate <-2,0.1,0> }
object { Jupiter translate <2,0.1,0> }
