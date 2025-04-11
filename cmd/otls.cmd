# Automatically generated script
\set noalias = 1
set saved_path = `execute("oppwf")`
opcf /

# Node obj (/obj)
opcf obj

# Node geo1 (Object/geo)
opadd -e -n geo geo1
oplocate -x -2.5 -y 1.8500000000000001 geo1
opspareds '    group {         name    "stdswitcher4"         label   "Transform"         grouptag { "sidefx::switcher" "stdswitcher" }          parm {             name    "xOrd"             baseparm             label   "Transform Order"             joinnext             export  none         }         parm {             name    "rOrd"             baseparm             label   "Rotate Order"             nolabel             export  none         }         parm {             name    "t"             baseparm             label   "Translate"             export  all         }         parm {             name    "r"             baseparm             label   "Rotate"             export  all         }         parm {             name    "s"             baseparm             label   "Scale"             export  none         }         parm {             name    "p"             baseparm             label   "Pivot Translate"             export  none         }         parm {             name    "pr"             baseparm             label   "Pivot Rotate"             export  none         }         parm {             name    "scale"             baseparm             label   "Uniform Scale"             export  none         }         parm {             name    "pre_xform"             baseparm             label   "Modify Pre-Transform"             export  none         }         parm {             name    "keeppos"             baseparm             label   "Keep Position When Parenting"             export  none         }         parm {             name    "childcomp"             baseparm             label   "Child Compensation"             export  none         }         parm {             name    "constraints_on"             baseparm             label   "Enable Constraints"             export  none         }         parm {             name    "constraints_path"             baseparm             label   "Constraints"             export  none         }         parm {             name    "lookatpath"             baseparm             label   "Look At"             invisible             export  none         }         parm {             name    "lookupobjpath"             baseparm             label   "Look Up Object"             invisible             export  none         }         parm {             name    "lookup"             baseparm             label   "Look At Up Vector"             invisible             export  none         }         parm {             name    "pathobjpath"             baseparm             label   "Path Object"             invisible             export  none         }         parm {             name    "roll"             baseparm             label   "Roll"             invisible             export  none         }         parm {             name    "pos"             baseparm             label   "Position"             invisible             export  none         }         parm {             name    "uparmtype"             baseparm             label   "Parameterization"             invisible             export  none         }         parm {             name    "pathorient"             baseparm             label   "Orient Along Path"             invisible             export  none         }         parm {             name    "up"             baseparm             label   "Orient Up Vector"             invisible             export  none         }         parm {             name    "bank"             baseparm             label   "Auto-Bank factor"             invisible             export  none         }     }      group {         name    "stdswitcher4_1"         label   "Render"          parm {             name    "shop_materialpath"             baseparm             label   "Material"             export  none         }         parm {             name    "shop_materialopts"             baseparm             label   "Options"             invisible             export  none         }         parm {             name    "tdisplay"             baseparm             label   "Display"             joinnext             export  none         }         parm {             name    "display"             baseparm             label   "Display"             export  none         }         parm {             name    "viewportlod"             label   "Display As"             type    ordinal             default { "full" }             help    "Choose how the object\'s geometry should be rendered in the viewport"             menu {                 "full"      "Full Geometry"                 "points"    "Point Cloud"                 "box"       "Bounding Box"                 "centroid"  "Centroid"                 "hidden"    "Hidden"                 "subd"      "Subdivision Surface / Curves"             }             parmtag { "spare_category" "Render" }         }         parm {             name    "vm_rendervisibility"             label   "Render Visibility"             type    string             default { "*" }             menureplace {                 "*"                             "Visible to all"                 "primary"                       "Visible only to primary rays"                 "primary|shadow"                "Visible only to primary and shadow rays"                 "-primary"                      "Invisible to primary rays (Phantom)"                 "-diffuse"                      "Invisible to diffuse rays"                 "-diffuse&-reflect&-refract"    "Invisible to secondary rays"                 ""                              "Invisible (Unrenderable)"             }             parmtag { "mantra_class" "object" }             parmtag { "mantra_name" "rendervisibility" }             parmtag { "spare_category" "Render" }         }         parm {             name    "vm_rendersubd"             label   "Render Polygons As Subdivision (Mantra)"             type    toggle             default { "0" }             parmtag { "mantra_class" "object" }             parmtag { "mantra_name" "rendersubd" }             parmtag { "spare_category" "Geometry" }         }         parm {             name    "vm_subdstyle"             label   "Subdivision Style"             type    string             default { "mantra_catclark" }             hidewhen "{ vm_rendersubd == 0 }"             menu {                 "mantra_catclark"   "Mantra Catmull-Clark"                 "osd_catclark"      "OpenSubdiv Catmull-Clark"             }             parmtag { "mantra_class" "object" }             parmtag { "mantra_name" "subdstyle" }             parmtag { "spare_category" "Geometry" }         }         parm {             name    "vm_subdgroup"             label   "Subdivision Group"             type    string             default { "" }             hidewhen "{ vm_rendersubd == 0 }"             parmtag { "mantra_class" "object" }             parmtag { "mantra_name" "subdgroup" }             parmtag { "spare_category" "Geometry" }         }         parm {             name    "vm_osd_quality"             label   "Open Subdiv Quality"             type    float             default { "1" }             hidewhen "{ vm_rendersubd == 0 vm_subdstyle != osd_catclark }"             range   { 0 10 }             parmtag { "mantra_class" "object" }             parmtag { "mantra_name" "osd_quality" }             parmtag { "spare_category" "Geometry" }         }         parm {             name    "vm_osd_vtxinterp"             label   "OSD Vtx Interp"             type    integer             default { "2" }             hidewhen "{ vm_rendersubd == 0 vm_subdstyle != osd_catclark }"             menu {                 "0" "No vertex interpolation"                 "1" "Edges only"                 "2" "Edges and Corners"             }             range   { 0 10 }             parmtag { "mantra_class" "object" }             parmtag { "mantra_name" "osd_vtxinterp" }             parmtag { "spare_category" "Geometry" }         }         parm {             name    "vm_osd_fvarinterp"             label   "OSD FVar Interp"             type    integer             default { "4" }             hidewhen "{ vm_rendersubd == 0 vm_subdstyle != osd_catclark }"             menu {                 "0" "Smooth everywhere"                 "1" "Sharpen corners only"                 "2" "Sharpen edges and corners"                 "3" "Sharpen edges and propagated corners"                 "4" "Sharpen all boundaries"                 "5" "Bilinear interpolation"             }             range   { 0 10 }             parmtag { "mantra_class" "object" }             parmtag { "mantra_name" "osd_fvarinterp" }             parmtag { "spare_category" "Geometry" }         }         group {             name    "folder0"             label   "Shading"              parm {                 name    "categories"                 label   "Categories"                 type    string                 default { "" }                 help    "A list of tags which can be used to select the object"                 parmtag { "spare_category" "Shading" }             }             parm {                 name    "reflectmask"                 label   "Reflection Mask"                 type    oplist                 default { "*" }                 help    "Objects that will be reflected on this object."                 parmtag { "opexpand" "1" }                 parmtag { "opfilter" "!!OBJ/GEOMETRY!!" }                 parmtag { "oprelative" "/obj" }                 parmtag { "spare_category" "Shading" }             }             parm {                 name    "refractmask"                 label   "Refraction Mask"                 type    oplist                 default { "*" }                 help    "Objects that will be refracted on this object."                 parmtag { "opexpand" "1" }                 parmtag { "opfilter" "!!OBJ/GEOMETRY!!" }                 parmtag { "oprelative" "/obj" }                 parmtag { "spare_category" "Shading" }             }             parm {                 name    "lightmask"                 label   "Light Mask"                 type    oplist                 default { "*" }                 help    "Lights that illuminate this object."                 parmtag { "opexpand" "1" }                 parmtag { "opfilter" "!!OBJ/LIGHT!!" }                 parmtag { "oprelative" "/obj" }                 parmtag { "spare_category" "Shading" }             }             parm {                 name    "lightcategories"                 label   "Light Selection"                 type    string                 default { "*" }                 parmtag { "spare_category" "Shading" }             }             parm {                 name    "vm_lpetag"                 label   "LPE Tag"                 type    string                 default { "" }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "lpetag" }                 parmtag { "spare_category" "Shading" }             }             parm {                 name    "vm_volumefilter"                 label   "Volume Filter"                 type    string                 default { "box" }                 menu {                     "box"       "Box Filter"                     "gaussian"  "Gaussian"                     "bartlett"  "Bartlett (triangle)"                     "catrom"    "Catmull-Rom"                     "hanning"   "Hanning"                     "blackman"  "Blackman"                     "sinc"      "Sinc (sharpening)"                 }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "filter" }                 parmtag { "spare_category" "Shading" }             }             parm {                 name    "vm_volumefilterwidth"                 label   "Volume Filter Width"                 type    float                 default { "1" }                 range   { 0.001 5 }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "filterwidth" }                 parmtag { "spare_category" "Shading" }             }             parm {                 name    "vm_matte"                 label   "Matte shading"                 type    toggle                 default { "0" }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "matte" }                 parmtag { "spare_category" "Shading" }             }             parm {                 name    "vm_rayshade"                 label   "Raytrace Shading"                 type    toggle                 default { "0" }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "rayshade" }                 parmtag { "spare_category" "Shading" }             }         }          group {             name    "folder0_1"             label   "Sampling"              parm {                 name    "geo_velocityblur"                 label   "Geometry Velocity Blur"                 type    ordinal                 default { "off" }                 disablewhen "{ allowmotionblur == 0 }"                 menu {                     "off"       "No Velocity Blur"                     "on"        "Velocity Blur"                     "accelblur" "Acceleration Blur"                 }             }             parm {                 name    "geo_accelattribute"                 label   "Acceleration Attribute"                 type    string                 default { "accel" }                 hidewhen "{ geo_velocityblur != accelblur }"                 parmtag { "spare_category" "Sampling" }             }         }          group {             name    "folder0_2"             label   "Dicing"              parm {                 name    "vm_shadingquality"                 label   "Shading Quality"                 type    float                 default { "1" }                 range   { 0 10 }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "shadingquality" }                 parmtag { "spare_category" "Dicing" }             }             parm {                 name    "vm_flatness"                 label   "Dicing Flatness"                 type    float                 default { "0.05" }                 range   { 0 1 }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "flatness" }                 parmtag { "spare_category" "Dicing" }             }             parm {                 name    "vm_raypredice"                 label   "Ray Predicing"                 type    integer                 default { "0" }                 menu {                     "0" "Disable Predicing"                     "1" "Full Predicing"                     "2" "Precompute Bounds"                 }                 range   { 0 10 }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "raypredice" }                 parmtag { "spare_category" "Dicing" }             }             parm {                 name    "vm_curvesurface"                 label   "Shade Curves As Surfaces"                 type    toggle                 default { "0" }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "curvesurface" }                 parmtag { "spare_category" "Dicing" }             }         }          group {             name    "folder0_3"             label   "Geometry"              parm {                 name    "vm_rmbackface"                 label   "Backface Removal"                 type    toggle                 default { "0" }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "rmbackface" }                 parmtag { "spare_category" "Geometry" }             }             parm {                 name    "shop_geometrypath"                 label   "Procedural Shader"                 type    oppath                 default { "" }                 parmtag { "opfilter" "!!SHOP/GEOMETRY!!" }                 parmtag { "oprelative" "." }                 parmtag { "spare_category" "Geometry" }             }             parm {                 name    "vm_forcegeometry"                 label   "Force Procedural Geometry Output"                 type    toggle                 default { "1" }                 parmtag { "spare_category" "Geometry" }             }             parm {                 name    "vm_rendersubdcurves"                 label   "Render Polygon Curves As Subdivision (Mantra)"                 type    toggle                 default { "0" }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "rendersubdcurves" }                 parmtag { "spare_category" "Geometry" }             }             parm {                 name    "vm_renderpoints"                 label   "Render As Points (Mantra)"                 type    integer                 default { "2" }                 menu {                     "0" "No Point Rendering"                     "1" "Render Only Points"                     "2" "Render Unconnected Points"                 }                 range   { 0 10 }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "renderpoints" }                 parmtag { "spare_category" "Geometry" }             }             parm {                 name    "vm_renderpointsas"                 label   "Render Points As (Mantra)"                 type    integer                 default { "0" }                 disablewhen "{ vm_renderpoints == 0 }"                 menu {                     "0" "Spheres"                     "1" "Circles"                 }                 range   { 0 10 }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "renderpointsas" }                 parmtag { "spare_category" "Geometry" }             }             parm {                 name    "vm_usenforpoints"                 label   "Use N For Point Rendering"                 type    toggle                 default { "0" }                 disablewhen "{ vm_renderpoints == 0 }"                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "usenforpoints" }                 parmtag { "spare_category" "Geometry" }             }             parm {                 name    "vm_pointscale"                 label   "Point Scale"                 type    float                 default { "1" }                 disablewhen "{ vm_renderpoints == 0 }"                 range   { 0! 10 }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "pointscale" }                 parmtag { "spare_category" "Geometry" }             }             parm {                 name    "vm_pscalediameter"                 label   "Treat Point Scale as Diameter Instead of Radius"                 type    toggle                 default { "0" }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "pscalediameter" }                 parmtag { "spare_category" "Geometry" }             }             parm {                 name    "vm_metavolume"                 label   "Metaballs as Volume"                 type    toggle                 default { "0" }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "metavolume" }                 parmtag { "spare_category" "Geometry" }             }             parm {                 name    "vm_coving"                 label   "Coving"                 type    integer                 default { "1" }                 menu {                     "0" "Disable Coving"                     "1" "Coving for displacement/sub-d"                     "2" "Coving for all primitives"                 }                 range   { 0 10 }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "coving" }                 parmtag { "spare_category" "Geometry" }             }             parm {                 name    "vm_materialoverride"                 label   "Material Override"                 type    string                 default { "compact" }                 menu {                     "none"      "Disabled"                     "full"      "Evaluate for Each Primitve/Point"                     "compact"   "Evaluate Once"                 }                 parmtag { "spare_category" "Geometry" }             }             parm {                 name    "vm_overridedetail"                 label   "Ignore Geometry Attribute Shaders"                 type    toggle                 default { "0" }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "overridedetail" }                 parmtag { "spare_category" "Geometry" }             }             parm {                 name    "vm_procuseroottransform"                 label   "Proc Use Root Transform"                 type    toggle                 default { "1" }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "procuseroottransform" }                 parmtag { "spare_category" "Geometry" }             }         }      }      group {         name    "stdswitcher4_2"         label   "Misc"          parm {             name    "use_dcolor"             baseparm             label   "Set Wireframe Color"             export  none         }         parm {             name    "dcolor"             baseparm             label   "Wireframe Color"             export  none         }         parm {             name    "picking"             baseparm             label   "Viewport Selecting Enabled"             export  none         }         parm {             name    "pickscript"             baseparm             label   "Select Script"             export  none         }         parm {             name    "caching"             baseparm             label   "Cache Object Transform"             export  none         }         parm {             name    "vport_shadeopen"             baseparm             label   "Shade Open Curves In Viewport"             export  none         }         parm {             name    "vport_displayassubdiv"             baseparm             label   "Display as Subdivision in Viewport"             invisible             export  none         }         parm {             name    "vport_onionskin"             baseparm             label   "Onion Skinning"             export  none         }     }  ' geo1
opset -S on geo1
opparm -V 20.5.522 geo1 stdswitcher ( 0 0 0 ) xOrd ( srt ) rOrd ( xyz ) t ( 0 0 0 ) r ( 0 0 0 ) s ( 1 1 1 ) p ( 0 0 0 ) pr ( 0 0 0 ) scale ( 1 ) pre_xform ( clean ) keeppos ( off ) childcomp ( off ) constraints_on ( off ) constraints_path ( "" ) lookatpath ( "" ) lookupobjpath ( "" ) lookup ( on ) pathobjpath ( "" ) roll ( 0 ) pos ( 0 ) uparmtype ( arc ) pathorient ( 1 ) up ( 0 1 0 ) bank ( 0 ) shop_materialpath ( "" ) shop_materialopts ( override ) tdisplay ( off ) display ( 1 ) use_dcolor ( off ) dcolor ( 1 1 1 ) picking ( on ) pickscript ( "" ) caching ( on ) vport_shadeopen ( off ) vport_displayassubdiv ( off ) vport_onionskin ( off ) stdswitcher4 ( 0 0 0 ) viewportlod ( full ) vm_rendervisibility ( * ) vm_rendersubd ( off ) vm_subdstyle ( mantra_catclark ) vm_subdgroup ( "" ) vm_osd_quality ( 1 ) vm_osd_vtxinterp ( 2 ) vm_osd_fvarinterp ( 4 ) folder0 ( 0 0 0 0 ) categories ( "" ) reflectmask ( * ) refractmask ( * ) lightmask ( * ) lightcategories ( * ) vm_lpetag ( "" ) vm_volumefilter ( box ) vm_volumefilterwidth ( 1 ) vm_matte ( off ) vm_rayshade ( off ) geo_velocityblur ( off ) geo_accelattribute ( accel ) vm_shadingquality ( 1 ) vm_flatness ( 0.05 ) vm_raypredice ( 0 ) vm_curvesurface ( off ) vm_rmbackface ( off ) shop_geometrypath ( "" ) vm_forcegeometry ( on ) vm_rendersubdcurves ( off ) vm_renderpoints ( 2 ) vm_renderpointsas ( 0 ) vm_usenforpoints ( off ) vm_pointscale ( 1 ) vm_pscalediameter ( off ) vm_metavolume ( off ) vm_coving ( 1 ) vm_materialoverride ( compact ) vm_overridedetail ( off ) vm_procuseroottransform ( on )
chlock geo1 -*
chautoscope geo1 -* +tx +ty +tz +rx +ry +rz +sx +sy +sz
opset -d on -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off -x off geo1
opexprlanguage -s hscript geo1
opuserdata -n '___Version___' -v '20.5.522' geo1
opcf geo1

# Node noisepower (Sop/subnet)
opadd -e -n subnet noisepower
oplocate -x 9.5 -y -1.1499999999999999 noisepower
opspareds '    groupsimple {         name    "noisepower"         label   "Noise Power"          parm {             name    "typemenu"             label   "Type"             type    ordinal             joinnext             default { "2" }             menu {                 "0" "Mesh"                 "1" "Curve"                 "2" "Point Cloud"             }             parmtag { "script_callback" "hou.phm().preset()" }             parmtag { "script_callback_language" "python" }         }         parm {             name    "noisemenu"             label   "Noise"             type    ordinal             joinnext             default { "13" }             menu {                 "0"     "Turbulent - Perlin Noise"                 "1"     "Turbulent - Original Perlin Noise"                 "2"     "Turbulent - Sparse Convolution Noise"                 "3"     "Turbulent - Alligator Noise"                 "4"     "Turbulent - Simplex Noise"                 "5"     "Turbulent - Zero Centered Perlin Noise"                 "6"     "Anti Alias - Perlin"                 "7"     "Anti Alias - Simplex"                 "8"     "Anti Alias - Flow"                 "9"     "Curl - Perlin Noise"                 "10"    "Curl - Original Perlin"                 "11"    "Curl - Sparse Convolution"                 "12"    "Curl - Alligator"                 "13"    "Curl - Simplex"                 "14"    "Curl - Analytic Perlin"                 "15"    "Curl - Analytic Simplex"             }             parmtag { "script_callback_language" "python" }         }         parm {             name    "signature"             label   "Signature"             type    ordinal             default { "0" }             hidewhen "{ typemenu == 1 }"             menu {                 "0" "Vector"                 "1" "Scalar"             }             parmtag { "script_callback_language" "python" }         }         parm {             name    "sepparm"             label   "Separator"             type    separator             default { "" }         }         parm {             name    "iterations"             label   "Iterations"             type    integer             default { "50" }             help    "If you set iterations to 1, you can see the lowest frequency contributing to the sum."             range   { 0 10 }         }         parm {             name    "sepparm3"             label   "Separator"             type    separator             default { "" }         }         parm {             name    "frequency"             label   "Frequency"             type    float             default { "0.1" }             help    "The frequency step size. This value is added to 1 before going into the power function."             range   { 0 1 }         }         parm {             name    "amplitude"             label   "Amplitude"             type    float             default { "0.01" }             help    "The amplitude step size. This value is subtracted from 1 before going into the power function."             range   { 0 1 }         }         parm {             name    "balance"             label   "Balance"             type    float             default { "1" }             help    "The frequency is divided and amplitude multipled by this value before going into the noise. A value of 10 means during the first interation, the frequency is 0.1 and the amplitude is 10. If you use a higher value, you will need more iterations for the amplitude to converge to 0. If you use a value of 1, the summed noise will not include frequencies less then 1."             range   { 0 10 }         }         parm {             name    "sepparm2"             label   "Separator"             type    separator             default { "" }         }         parm {             name    "offset"             label   "Offset"             type    float             default { "0" }             range   { 0 100 }             parmtag { "script_callback_language" "python" }         }         parm {             name    "timeoffsetrate"             label   "Time Offset Rate"             type    float             joinnext             default { "1" }             disablewhen "{ animate != 1 }"             range   { 0 10 }             parmtag { "script_callback_language" "python" }         }         parm {             name    "animate"             label   "Animate"             type    toggle             default { "off" }             parmtag { "script_callback_language" "python" }         }         parm {             name    "offsetvector"             label   "Offset Vector"             type    vector             size    3             default { "0" "1" "0" }             help    "If the input has a vector @offset, this vector will be overruled."             range   { 0 1 }             parmtag { "script_callback_language" "python" }         }         parm {             name    "sepparm4"             label   "Separator"             type    separator             default { "" }         }         parm {             name    "paint"             label   "Paint"             type    toggle             default { "on" }             parmtag { "script_callback_language" "python" }         }     }      parm {         name    "label1"         baseparm         label   "Input #1 Label"         invisible         export  all     }     parm {         name    "label2"         baseparm         label   "Input #2 Label"         invisible         export  all     }     parm {         name    "label3"         baseparm         label   "Input #3 Label"         invisible         export  all     }     parm {         name    "label4"         baseparm         label   "Input #4 Label"         invisible         export  all     } ' noisepower
opparm -V 20.5.522 noisepower label1 ( 'Sub-Network Input #1' ) label2 ( 'Sub-Network Input #2' ) label3 ( 'Sub-Network Input #3' ) label4 ( 'Sub-Network Input #4' ) noisepower ( 0 ) typemenu ( 2 ) noisemenu ( 13 ) signature ( 0 ) sepparm ( ) iterations ( 50 ) sepparm3 ( ) frequency ( 0.1 ) amplitude ( 0.01 ) balance ( 1 ) sepparm2 ( ) offset ( 0 ) timeoffsetrate ( 1 ) animate ( off ) offsetvector ( 0 1 0 ) sepparm4 ( ) paint ( on )
chlock noisepower -*
chautoscope noisepower -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off noisepower
opexprlanguage -s hscript noisepower
opuserdata -n '___Version___' -v '20.5.522' noisepower
opcf noisepower

# Node powernoise (Sop/attribvop)
opadd -e -n attribvop powernoise
oplocate -x 5.13063 -y 1.59945 powernoise
opspareds '    parm {         name    "bindgroup"         baseparm         label   "Group"         export  none         bindselector uvselect "Modify Points"             "Select the points to affect and press Enter to complete."             0 1 0xffffffff 0 bindgrouptype 0     }     parm {         name    "bindgrouptype"         baseparm         label   "Group Type"         export  none     }     parm {         name    "bindclass"         baseparm         label   "Run Over"         export  none     }     parm {         name    "vex_numcount"         baseparm         label   "Number Count"         export  none     }     parm {         name    "vex_threadjobsize"         baseparm         label   "Thread Job Size"         export  none     }     group {         name    "stdswitcher3"         label   "Vex Setup"          parm {             name    "vexsrc"             baseparm             label   "Vex Source"             export  all         }         parm {             name    "shoppath"             baseparm             label   "Shop Path"             export  all         }         parm {             name    "script"             baseparm             label   "Script"             export  all         }         parm {             name    "clear"             baseparm             label   "Re-load VEX Functions"             export  all         }         parm {             name    "vop_compiler"             baseparm             label   "Compiler"             export  none         }         parm {             name    "vop_forcecompile"             baseparm             label   "Force Compile"             export  none         }         parm {             name    "vex_cwdpath"             baseparm             label   "Evaluation Node Path"             export  none         }         parm {             name    "vex_outputmask"             baseparm             label   "Export Parameters"             export  none         }         parm {             name    "vex_multithread"             baseparm             label   "Enable Multithreading"             export  none         }     }      group {         name    "stdswitcher3_1"         label   "Attribute Bindings"          parm {             name    "autobind"             baseparm             label   "Autobind by Name"             export  none         }         multiparm {             name    "bindings"             label    "Number of Bindings"             baseparm             default 0             parmtag { "multistartoffset" "1" }              parm {                 name    "bindname#"                 baseparm                 label   "Attribute Name"                 export  none             }             parm {                 name    "bindparm#"                 baseparm                 label   "VEX Parameter"                 export  none             }         }          parm {             name    "groupautobind"             baseparm             label   "Autobind Groups by Name"             export  none         }         multiparm {             name    "groupbindings"             label    "Group Bindings"             baseparm             default 0             parmtag { "multistartoffset" "1" }              parm {                 name    "bindgroupname#"                 baseparm                 label   "Group Name"                 export  none             }             parm {                 name    "bindgroupparm#"                 baseparm                 label   "VEX Parameter"                 export  none             }         }          parm {             name    "vex_updatenmls"             baseparm             label   "Update Normals If Displaced"             export  none         }         parm {             name    "vex_matchattrib"             baseparm             label   "Attribute to Match"             export  none         }         parm {             name    "vex_inplace"             baseparm             label   "Compute Results In Place"             export  none         }         parm {             name    "vex_selectiongroup"             baseparm             label   "Output Selection Group"             export  none         }     }      parm {         name    "ptnum"         label   "Point Number"         type    integer         invisible         default { "0" }         range   { 0 10 }         parmtag { "parmvop" "1" }         parmtag { "shaderparmcontexts" "cvex" }     }     parm {         name    "vtxnum"         label   "Vertex Number"         type    integer         invisible         default { "0" }         range   { 0 10 }         parmtag { "parmvop" "1" }         parmtag { "shaderparmcontexts" "cvex" }     }     parm {         name    "primnum"         label   "Primitive Number"         type    integer         invisible         default { "0" }         range   { 0 10 }         parmtag { "parmvop" "1" }         parmtag { "shaderparmcontexts" "cvex" }     }     parm {         name    "id"         label   "Id"         type    integer         invisible         default { "-1" }         range   { 0 10 }         parmtag { "parmvop" "1" }         parmtag { "shaderparmcontexts" "cvex" }     }     parm {         name    "numpt"         label   "Number of Points"         type    integer         invisible         default { "0" }         range   { 0 10 }         parmtag { "parmvop" "1" }         parmtag { "shaderparmcontexts" "cvex" }     }     parm {         name    "numvtx"         label   "Number of Vertices"         type    integer         invisible         default { "0" }         range   { 0 10 }         parmtag { "parmvop" "1" }         parmtag { "shaderparmcontexts" "cvex" }     }     parm {         name    "numprim"         label   "Number of Prims"         type    integer         invisible         default { "0" }         range   { 0 10 }         parmtag { "parmvop" "1" }         parmtag { "shaderparmcontexts" "cvex" }     }     parm {         name    "Time"         label   "Time"         type    float         invisible         default { "0" }         range   { 0 1 }         parmtag { "parmvop" "1" }         parmtag { "shaderparmcontexts" "cvex" }     }     parm {         name    "TimeInc"         label   "Time Inc"         type    float         invisible         default { "0" }         range   { 0 1 }         parmtag { "parmvop" "1" }         parmtag { "shaderparmcontexts" "cvex" }     }     parm {         name    "Frame"         label   "Frame"         type    float         invisible         default { "0" }         range   { 0 1 }         parmtag { "parmvop" "1" }         parmtag { "shaderparmcontexts" "cvex" }     }     parm {         name    "life"         label   "Life"         type    float         invisible         default { "0" }         range   { 0 1 }         parmtag { "parmvop" "1" }         parmtag { "shaderparmcontexts" "cvex" }     }     parm {         name    "age"         label   "Age"         type    float         invisible         default { "0" }         range   { 0 1 }         parmtag { "parmvop" "1" }         parmtag { "shaderparmcontexts" "cvex" }     }     parm {         name    "OpInput2"         label   "Second Input"         type    string         invisible         default { "" }         parmtag { "parmvop" "1" }         parmtag { "shaderparmcontexts" "cvex" }     }     parm {         name    "OpInput3"         label   "Third Input"         type    string         invisible         default { "" }         parmtag { "parmvop" "1" }         parmtag { "shaderparmcontexts" "cvex" }     }     parm {         name    "OpInput4"         label   "Fourth Input"         type    string         invisible         default { "" }         parmtag { "parmvop" "1" }         parmtag { "shaderparmcontexts" "cvex" }     }     parm {         name    "OpInput1"         label   "First Input"         type    string         invisible         default { "" }         parmtag { "parmvop" "1" }         parmtag { "shaderparmcontexts" "cvex" }     }     parm {         name    "uv"         label   "UV"         type    float         invisible         size    3         default { "0" "0" "0" }         range   { 0 10 }         parmtag { "parmvop" "1" }         parmtag { "shaderparmcontexts" "cvex" }     }     parm {         name    "P"         label   "P"         type    float         invisible         size    3         default { "0" "0" "0" }         range   { 0 10 }         parmtag { "parmvop" "1" }         parmtag { "shaderparmcontexts" "cvex" }     }     parm {         name    "v"         label   "Velocity"         type    float         invisible         size    3         default { "0" "0" "0" }         range   { 0 10 }         parmtag { "parmvop" "1" }         parmtag { "shaderparmcontexts" "cvex" }     }     parm {         name    "force"         label   "Force"         type    float         invisible         size    3         default { "0" "0" "0" }         range   { 0 10 }         parmtag { "parmvop" "1" }         parmtag { "shaderparmcontexts" "cvex" }     }     parm {         name    "Cd"         label   "Cd"         type    float         invisible         size    3         default { "1" "1" "1" }         range   { 0 10 }         parmtag { "parmvop" "1" }         parmtag { "shaderparmcontexts" "cvex" }     }     parm {         name    "N"         label   "N"         type    float         invisible         size    3         default { "0" "0" "0" }         range   { 0 10 }         parmtag { "parmvop" "1" }         parmtag { "shaderparmcontexts" "cvex" }     }     parm {         name    "vex_precision"         baseparm         label   "VEX Precision"         export  none     }     parm {         name    "freq_step"         label   "FreqStepSize"         type    float         default { "0" }         range   { 0 1 }         parmtag { "parmvop" "1" }         parmtag { "shaderparmcontexts" "cvex" }     }     parm {         name    "amp_step"         label   "AmpStepSize"         type    float         default { "0" }         range   { 0 1 }         parmtag { "parmvop" "1" }         parmtag { "shaderparmcontexts" "cvex" }     }     parm {         name    "Balance"         label   "Balance"         type    float         default { "0" }         range   { 0 1 }         parmtag { "parmvop" "1" }         parmtag { "shaderparmcontexts" "cvex" }     }     parm {         name    "Offset"         label   "Offset"         type    float         default { "0" }         range   { 0 1 }         parmtag { "parmvop" "1" }         parmtag { "shaderparmcontexts" "cvex" }     }     parm {         name    "vexsnippet"         baseparm         label   "Snippet"         export  none     }     parm {         name    "vex_strict"         baseparm         label   "Enforce Prototypes"         export  none     }     parm {         name    "vex_exportlist"         baseparm         label   "Attributes to Create"         export  none     }     parm {         name    "timeoffsettoggle"         label   "timeoffsettoggle"         type    float         default { "0" }         range   { 0 1 }         parmtag { "parmvop" "1" }         parmtag { "shaderparmcontexts" "cvex" }     }     parm {         name    "timeoffsetrate"         label   "timeoffsetrate"         type    float         default { "0" }         range   { 0 1 }         parmtag { "parmvop" "1" }         parmtag { "shaderparmcontexts" "cvex" }     }     parm {         name    "noisemenu"         label   "noisemenu"         type    integer         default { "0" }         range   { 0 10 }         parmtag { "parmvop" "1" }         parmtag { "shaderparmcontexts" "cvex" }     }     parm {         name    "offsetvector"         label   "offsetvector"         type    float         size    3         default { "0" "0" "0" }         range   { 0 10 }         parmtag { "parmvop" "1" }         parmtag { "shaderparmcontexts" "cvex" }     } ' powernoise
opparm powernoise  bindings ( 0 ) groupbindings ( 0 )
chblockbegin
chadd -t 0 0 powernoise freq_step
chkey -t 0 -v 0.10000000000000001 -m 0 -a 0 -A 0 -T a  -F 'ch("../frequency")' powernoise/freq_step
chadd -t 0 0 powernoise amp_step
chkey -t 0 -v 0.040000000000000001 -m 0 -a 0 -A 0 -T a  -F 'ch("../amplitude")' powernoise/amp_step
chadd -t 0 0 powernoise Balance
chkey -t 0 -v 10 -m 0 -a 0 -A 0 -T a  -F 'ch("../balance")' powernoise/Balance
chadd -t 0 0 powernoise Offset
chkey -t 0 -v 3 -m 0 -a 0 -A 0 -T a  -F 'ch("../offset")' powernoise/Offset
chadd -t 0 0 powernoise timeoffsettoggle
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F 'ch("../animate")' powernoise/timeoffsettoggle
chadd -t 0 0 powernoise timeoffsetrate
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F 'ch("../timeoffsetrate")' powernoise/timeoffsetrate
chadd -t 0 0 powernoise noisemenu
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F 'ch("../noisemenu")' powernoise/noisemenu
chadd -t 0 0 powernoise offsetvector1
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F 'ch("../offsetvectorx")' powernoise/offsetvector1
chadd -t 0 0 powernoise offsetvector2
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F 'ch("../offsetvectory")' powernoise/offsetvector2
chadd -t 0 0 powernoise offsetvector3
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F 'ch("../offsetvectorz")' powernoise/offsetvector3
chblockend
opparm -V 20.5.522 powernoise bindgroup ( "" ) bindgrouptype ( guess ) bindclass ( point ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) stdswitcher ( 0 0 ) vexsrc ( myself ) shoppath ( "" ) script ( null ) clear ( 0 ) vexsnippet ( "" ) vex_strict ( off ) vex_exportlist ( * ) vop_compiler ( 'vcc -q $VOP_INCLUDEPATH -o $VOP_OBJECTFILE -e $VOP_ERRORFILE $VOP_SOURCEFILE' ) vop_forcecompile ( 0 ) vex_cwdpath ( "" ) vex_outputmask ( * ) vex_multithread ( on ) vex_precision ( auto ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) stdswitcher3 ( 1 1 ) ptnum ( 0 ) vtxnum ( 0 ) primnum ( 0 ) id ( -1 ) numpt ( 0 ) numvtx ( 0 ) numprim ( 0 ) Time ( 0 ) TimeInc ( 0 ) Frame ( 0 ) life ( 0 ) age ( 0 ) OpInput2 ( "" ) OpInput3 ( "" ) OpInput4 ( "" ) OpInput1 ( "" ) uv ( 0 0 0 ) P ( 0 0 0 ) v ( 0 0 0 ) force ( 0 0 0 ) Cd ( 1 1 1 ) N ( 0 0 0 ) freq_step ( freq_step ) amp_step ( amp_step ) Balance ( Balance ) Offset ( Offset ) timeoffsettoggle ( timeoffsettoggle ) timeoffsetrate ( timeoffsetrate ) noisemenu ( noisemenu ) offsetvector ( offsetvector1 offsetvector2 offsetvector3 )
chlock powernoise -*
chautoscope powernoise -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off powernoise
opexprlanguage -s hscript powernoise
opuserdata -n '___Version___' -v '20.5.522' powernoise
opcf powernoise

# Node geometryvopglobal1 (Vop/geometryvopglobal::2.0)
opadd -e -n geometryvopglobal::2.0 geometryvopglobal1
oplocate -x 9.16784 -y 4.9299999999999997 geometryvopglobal1
opspareds "" geometryvopglobal1
opparm geometryvopglobal1
chlock geometryvopglobal1 -*
chautoscope geometryvopglobal1 -*
opset -d on -r on -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off -L off -M off -H on -E off geometryvopglobal1
opexprlanguage -s hscript geometryvopglobal1
opuserdata -n '___Version___' -v '' geometryvopglobal1

# Node geometryvopoutput1 (Vop/geometryvopoutput)
opadd -e -n geometryvopoutput geometryvopoutput1
oplocate -x 25.5 -y 4.9800000000000004 geometryvopoutput1
opspareds "" geometryvopoutput1
opparm geometryvopoutput1
chlock geometryvopoutput1 -*
chautoscope geometryvopoutput1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off -L off -M off -H on -E off geometryvopoutput1
opexprlanguage -s hscript geometryvopoutput1
opuserdata -n '___Version___' -v '' geometryvopoutput1

# Node bind1 (Vop/bind)
opadd -e -n bind bind1
oplocate -x -2.9477799999999998 -y 7.04 bind1
opspareds "" bind1
opparm -V 20.5.522 bind1 parmname ( iteration ) parmtype ( int ) parmtypename ( "" ) overridetype ( off ) floatdef ( 0 ) intdef ( 0 ) toggledef ( off ) angledef ( 0 ) logfloatdef ( 0 ) float2def ( 0 0 ) float3def ( 0 0 0 ) vectordef ( 0 0 0 ) normaldef ( 0 0 0 ) pointdef ( 0 0 0 ) directiondef ( 1 0 0 ) float4def ( 0 0 0 0 ) floatm2def ( 1 0 0 1 ) float9def ( 1 0 0 0 1 0 0 0 1 ) float16def ( 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1 ) stringdef ( "" ) filedef ( "" ) imagedef ( "" ) geometrydef ( "" ) colordef ( 0 0 0 ) color4def ( 0 0 0 0 ) bsdfdef ( "" ) dictdef ( "" ) coshaderdef ( "" ) surfacedef ( "" ) displacementdef ( "" ) atmospheredef ( "" ) lightdef ( "" ) lightfilterdef ( "" ) floatadef ( ) intadef ( ) vector2adef ( ) vectoradef ( ) pointadef ( ) normaladef ( ) coloradef ( ) floatm2adef ( ) float4adef ( ) float9adef ( ) float16adef ( ) stringadef ( ) dictadef ( ) coshaderadef ( "" ) structdef ( "" ) useasparmdefiner ( off ) useownexportcontext ( off ) parmuniform ( on ) usebound ( off ) exportparm ( off ) exportcontext ( cvex )
chlock bind1 -*
chautoscope bind1 -*
opcolor -c 0.83899998664855957 0.83899998664855957 0.83899998664855957 bind1
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F off -c on -e on -b off -L off -M off -H on -E off bind1
opexprlanguage -s hscript bind1
opuserdata -n '___Version___' -v '20.5.522' bind1

# Node const1 (Vop/constant)
opadd -e -n constant const1
oplocate -x 3.3132100000000002 -y 7.0328999999999997 const1
opspareds "" const1
opparm -V 20.5.522 const1 consttype ( float ) floatdef ( 1 ) intdef ( 0 ) toggledef ( off ) angledef ( 0 ) logfloatdef ( 0 ) float2def ( 0 0 ) float3def ( 0 0 0 ) vectordef ( 0 0 0 ) normaldef ( 0 0 0 ) pointdef ( 0 0 0 ) directiondef ( 1 0 0 ) float4def ( 0 0 0 0 ) floatm2def ( 1 0 0 1 ) float9def ( 1 0 0 0 1 0 0 0 1 ) float16def ( 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1 ) stringdef ( "" ) filedef ( "" ) imagedef ( "" ) geometrydef ( "" ) colordef ( 0 0 0 ) color4def ( 0 0 0 0 ) bsdfdef ( "" ) dictdef ( "" ) coshaderdef ( "" ) surfacedef ( "" ) displacementdef ( "" ) atmospheredef ( "" ) lightdef ( "" ) lightfilterdef ( "" ) floatadef ( ) intadef ( ) vector2adef ( ) vectoradef ( ) pointadef ( ) normaladef ( ) coloradef ( ) floatm2adef ( ) float4adef ( ) float9adef ( ) float16adef ( ) stringadef ( ) dictadef ( ) coshaderadef ( "" ) structdef ( "" ) parmuniform ( on ) constname ( Value ) constlabel ( Constant )
chlock const1 -*
chautoscope const1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off -L off -M off -H on -E off const1
opexprlanguage -s hscript const1
opuserdata -n '___Version___' -v '20.5.522' const1

# Node parm1 (Vop/parameter)
opadd -e -n parameter parm1
oplocate -x 3.3132100000000002 -y 5.9100000000000001 parm1
opspareds "" parm1
opparm -V 20.5.522 parm1 parmscope ( shaderparm ) parmaccess ( "" ) parmname ( freq_step ) parmprefix ( "" ) parmpostfix ( "" ) parmlabel ( FreqStepSize ) showlabel ( on ) parmtype ( float ) parmtypename ( "" ) floatdef ( 0 ) intdef ( 0 ) toggledef ( off ) angledef ( 0 ) logfloatdef ( 0 ) float2def ( 0 0 ) float3def ( 0 0 0 ) vectordef ( 0 0 0 ) normaldef ( 0 0 0 ) pointdef ( 0 0 0 ) directiondef ( 1 0 0 ) float4def ( 0 0 0 0 ) floatm2def ( 1 0 0 1 ) float9def ( 1 0 0 0 1 0 0 0 1 ) float16def ( 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1 ) stringdef ( "" ) filedef ( "" ) imagedef ( "" ) geometrydef ( "" ) colordef ( 0 0 0 ) color4def ( 0 0 0 0 ) bsdfdef ( "" ) dictdef ( "" ) coshaderdef ( "" ) surfacedef ( "" ) displacementdef ( "" ) atmospheredef ( "" ) lightdef ( "" ) lightfilterdef ( "" ) floatadef ( ) intadef ( ) vector2adef ( ) vectoradef ( ) pointadef ( ) normaladef ( ) coloradef ( ) floatm2adef ( ) float4adef ( ) float9adef ( ) float16adef ( ) stringadef ( ) dictadef ( ) coshaderadef ( "" ) structdef ( "" ) rangeflt ( 0 1 ) rangeint ( 0 10 ) stringtype ( off ) opfilter ( !!OBJ/LIGHT!! ) parmcomment ( "" ) separator1 ( ) useasparmdefiner ( off ) useownexportcontext ( off ) parmuniform ( on ) usebound ( off ) hasconnector ( on ) exportparm ( off ) exportcontext ( cvex ) providemenu ( off ) menuchoices ( "" ) menuscript ( "" ) menuscriptlanguage ( hscript ) separator2 ( ) invisible ( off ) joinnext ( off ) disablewhen ( "" ) hidewhen ( "" ) callback ( "" ) tags ( "" ) help ( "" )
chlock parm1 -*
chautoscope parm1 -*
opcolor -c 0.83899998664855957 0.83899998664855957 0.83899998664855957 parm1
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F off -c on -e on -b off -L off -M off -H on -E off parm1
opexprlanguage -s hscript parm1
opuserdata -n '___Version___' -v '20.5.522' parm1

# Node add1 (Vop/add)
opadd -e -n add add1
oplocate -x 5.1811299999999996 -y 6.0599999999999996 add1
opspareds "" add1
opparm -V 20.5.522 add1
chlock add1 -*
chautoscope add1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off -L off -M off -H on -E off add1
opexprlanguage -s hscript add1
opuserdata -n '___Version___' -v '20.5.522' add1

# Node pow1 (Vop/pow)
opadd -e -n pow pow1
oplocate -x 7.1458399999999997 -y 5.9100000000000001 pow1
opspareds "" pow1
opparm pow1 signature ( default ) val ( 1 ) val_v ( 1 1 1 ) val_u ( 1 1 ) val_p ( 1 1 1 ) val_n ( 1 1 1 ) val_c ( 1 1 1 ) val_v4 ( 1 1 1 1 ) val_uf ( 1 ) val_uv ( 1 1 1 ) val_up ( 1 1 1 ) val_un ( 1 1 1 ) val_uc ( 1 1 1 ) exp ( 1 )
chlock pow1 -*
chautoscope pow1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off -L off -M off -H on -E off pow1
opexprlanguage -s hscript pow1
opuserdata -n '___Version___' -v '' pow1

# Node const4 (Vop/constant)
opadd -e -n constant const4
oplocate -x 3.3132100000000002 -y 9.1843500000000002 const4
opspareds "" const4
opparm -V 20.5.522 const4 consttype ( float ) floatdef ( 1 ) intdef ( 0 ) toggledef ( off ) angledef ( 0 ) logfloatdef ( 0 ) float2def ( 0 0 ) float3def ( 0 0 0 ) vectordef ( 0 0 0 ) normaldef ( 0 0 0 ) pointdef ( 0 0 0 ) directiondef ( 1 0 0 ) float4def ( 0 0 0 0 ) floatm2def ( 1 0 0 1 ) float9def ( 1 0 0 0 1 0 0 0 1 ) float16def ( 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1 ) stringdef ( "" ) filedef ( "" ) imagedef ( "" ) geometrydef ( "" ) colordef ( 0 0 0 ) color4def ( 0 0 0 0 ) bsdfdef ( "" ) dictdef ( "" ) coshaderdef ( "" ) surfacedef ( "" ) displacementdef ( "" ) atmospheredef ( "" ) lightdef ( "" ) lightfilterdef ( "" ) floatadef ( ) intadef ( ) vector2adef ( ) vectoradef ( ) pointadef ( ) normaladef ( ) coloradef ( ) floatm2adef ( ) float4adef ( ) float9adef ( ) float16adef ( ) stringadef ( ) dictadef ( ) coshaderadef ( "" ) structdef ( "" ) parmuniform ( on ) constname ( Value ) constlabel ( Constant )
chlock const4 -*
chautoscope const4 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off -L off -M off -H on -E off const4
opexprlanguage -s hscript const4
opuserdata -n '___Version___' -v '20.5.522' const4

# Node parm2 (Vop/parameter)
opadd -e -n parameter parm2
oplocate -x 3.3132100000000002 -y 8.2043499999999998 parm2
opspareds "" parm2
opparm -V 20.5.522 parm2 parmscope ( shaderparm ) parmaccess ( "" ) parmname ( amp_step ) parmprefix ( "" ) parmpostfix ( "" ) parmlabel ( AmpStepSize ) showlabel ( on ) parmtype ( float ) parmtypename ( "" ) floatdef ( 0 ) intdef ( 0 ) toggledef ( off ) angledef ( 0 ) logfloatdef ( 0 ) float2def ( 0 0 ) float3def ( 0 0 0 ) vectordef ( 0 0 0 ) normaldef ( 0 0 0 ) pointdef ( 0 0 0 ) directiondef ( 1 0 0 ) float4def ( 0 0 0 0 ) floatm2def ( 1 0 0 1 ) float9def ( 1 0 0 0 1 0 0 0 1 ) float16def ( 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1 ) stringdef ( "" ) filedef ( "" ) imagedef ( "" ) geometrydef ( "" ) colordef ( 0 0 0 ) color4def ( 0 0 0 0 ) bsdfdef ( "" ) dictdef ( "" ) coshaderdef ( "" ) surfacedef ( "" ) displacementdef ( "" ) atmospheredef ( "" ) lightdef ( "" ) lightfilterdef ( "" ) floatadef ( ) intadef ( ) vector2adef ( ) vectoradef ( ) pointadef ( ) normaladef ( ) coloradef ( ) floatm2adef ( ) float4adef ( ) float9adef ( ) float16adef ( ) stringadef ( ) dictadef ( ) coshaderadef ( "" ) structdef ( "" ) rangeflt ( 0 1 ) rangeint ( 0 10 ) stringtype ( off ) opfilter ( !!OBJ/LIGHT!! ) parmcomment ( "" ) separator1 ( ) useasparmdefiner ( off ) useownexportcontext ( off ) parmuniform ( on ) usebound ( off ) hasconnector ( on ) exportparm ( off ) exportcontext ( cvex ) providemenu ( off ) menuchoices ( "" ) menuscript ( "" ) menuscriptlanguage ( hscript ) separator2 ( ) invisible ( off ) joinnext ( off ) disablewhen ( "" ) hidewhen ( "" ) callback ( "" ) tags ( "" ) help ( "" )
chlock parm2 -*
chautoscope parm2 -*
opcolor -c 0.83899998664855957 0.83899998664855957 0.83899998664855957 parm2
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F off -c on -e on -b off -L off -M off -H on -E off parm2
opexprlanguage -s hscript parm2
opuserdata -n '___Version___' -v '20.5.522' parm2

# Node pow2 (Vop/pow)
opadd -e -n pow pow2
oplocate -x 7.1458399999999997 -y 8.2043499999999998 pow2
opspareds "" pow2
opparm pow2 signature ( default ) val ( 1 ) val_v ( 1 1 1 ) val_u ( 1 1 ) val_p ( 1 1 1 ) val_n ( 1 1 1 ) val_c ( 1 1 1 ) val_v4 ( 1 1 1 1 ) val_uf ( 1 ) val_uv ( 1 1 1 ) val_up ( 1 1 1 ) val_un ( 1 1 1 ) val_uc ( 1 1 1 ) exp ( 1 )
chlock pow2 -*
chautoscope pow2 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off -L off -M off -H on -E off pow2
opexprlanguage -s hscript pow2
opuserdata -n '___Version___' -v '' pow2

# Node subtract3 (Vop/subtract)
opadd -e -n subtract subtract3
oplocate -x 5.1811299999999996 -y 8.3543500000000002 subtract3
opspareds "" subtract3
opparm -V 20.5.522 subtract3
chlock subtract3 -*
chautoscope subtract3 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off -L off -M off -H on -E off subtract3
opexprlanguage -s hscript subtract3
opuserdata -n '___Version___' -v '20.5.522' subtract3

# Node parm4 (Vop/parameter)
opadd -e -n parameter parm4
oplocate -x 7.1458399999999997 -y 7.1829000000000001 parm4
opspareds "" parm4
opparm -V 20.5.522 parm4 parmscope ( shaderparm ) parmaccess ( "" ) parmname ( Balance ) parmprefix ( "" ) parmpostfix ( "" ) parmlabel ( "" ) showlabel ( on ) parmtype ( float ) parmtypename ( "" ) floatdef ( 0 ) intdef ( 0 ) toggledef ( off ) angledef ( 0 ) logfloatdef ( 0 ) float2def ( 0 0 ) float3def ( 0 0 0 ) vectordef ( 0 0 0 ) normaldef ( 0 0 0 ) pointdef ( 0 0 0 ) directiondef ( 1 0 0 ) float4def ( 0 0 0 0 ) floatm2def ( 1 0 0 1 ) float9def ( 1 0 0 0 1 0 0 0 1 ) float16def ( 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1 ) stringdef ( "" ) filedef ( "" ) imagedef ( "" ) geometrydef ( "" ) colordef ( 0 0 0 ) color4def ( 0 0 0 0 ) bsdfdef ( "" ) dictdef ( "" ) coshaderdef ( "" ) surfacedef ( "" ) displacementdef ( "" ) atmospheredef ( "" ) lightdef ( "" ) lightfilterdef ( "" ) floatadef ( ) intadef ( ) vector2adef ( ) vectoradef ( ) pointadef ( ) normaladef ( ) coloradef ( ) floatm2adef ( ) float4adef ( ) float9adef ( ) float16adef ( ) stringadef ( ) dictadef ( ) coshaderadef ( "" ) structdef ( "" ) rangeflt ( 0 1 ) rangeint ( 0 10 ) stringtype ( off ) opfilter ( !!OBJ/LIGHT!! ) parmcomment ( "" ) separator1 ( ) useasparmdefiner ( off ) useownexportcontext ( off ) parmuniform ( on ) usebound ( off ) hasconnector ( on ) exportparm ( off ) exportcontext ( cvex ) providemenu ( off ) menuchoices ( "" ) menuscript ( "" ) menuscriptlanguage ( hscript ) separator2 ( ) invisible ( off ) joinnext ( off ) disablewhen ( "" ) hidewhen ( "" ) callback ( "" ) tags ( "" ) help ( "" )
chlock parm4 -*
chautoscope parm4 -*
opcolor -c 0.83899998664855957 0.83899998664855957 0.83899998664855957 parm4
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F off -c on -e on -b off -L off -M off -H on -E off parm4
opexprlanguage -s hscript parm4
opuserdata -n '___Version___' -v '20.5.522' parm4

# Node amp (Vop/multiply)
opadd -e -n multiply amp
oplocate -x 9.16784 -y 8.2043499999999998 amp
opspareds "" amp
opparm -V 20.5.522 amp
chlock amp -*
chautoscope amp -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off -L off -M off -H on -E off amp
opexprlanguage -s hscript amp
opuserdata -n '___Version___' -v '20.5.522' amp

# Node freq (Vop/divide)
opadd -e -n divide freq
oplocate -x 9.16784 -y 6.0599999999999996 freq
opspareds "" freq
opparm -V 20.5.522 freq
chlock freq -*
chautoscope freq -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off -L off -M off -H on -E off freq
opexprlanguage -s hscript freq
opuserdata -n '___Version___' -v '20.5.522' freq

# Node displace (Vop/null)
opadd -e -n null displace
oplocate -x 26.564499999999999 -y 8.7961200000000002 displace
opspareds "" displace
opparm displace  outputnum ( 0 )
opparm -V 20.5.522 displace outputnum ( 0 )
chlock displace -*
chautoscope displace -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off -L off -M off -H on -E off displace
opexprlanguage -s hscript displace
opuserdata -n '___Version___' -v '20.5.522' displace

# Node position (Vop/null)
opadd -e -n null position
oplocate -x 26.564499999999999 -y 7.6732199999999997 position
opspareds "" position
opparm position  outputnum ( 0 )
opparm -V 20.5.522 position outputnum ( 0 )
chlock position -*
chautoscope position -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off -L off -M off -H on -E off position
opexprlanguage -s hscript position
opuserdata -n '___Version___' -v '20.5.522' position

# Node vector (Vop/null)
opadd -e -n null vector
oplocate -x 26.564499999999999 -y 9.9218799999999998 vector
opspareds "" vector
opparm vector  outputnum ( 0 )
opparm -V 20.5.522 vector outputnum ( 0 )
chlock vector -*
chautoscope vector -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off -L off -M off -H on -E off vector
opexprlanguage -s hscript vector
opuserdata -n '___Version___' -v '20.5.522' vector

# Node scalar (Vop/null)
opadd -e -n null scalar
oplocate -x 26.564499999999999 -y 10.9857 scalar
opspareds "" scalar
opparm scalar  outputnum ( 0 )
opparm -V 20.5.522 scalar outputnum ( 0 )
chlock scalar -*
chautoscope scalar -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off -L off -M off -H on -E off scalar
opexprlanguage -s hscript scalar
opuserdata -n '___Version___' -v '20.5.522' scalar

# Node subnet1 (Vop/subnet)
opadd -e -n subnet subnet1
oplocate -x 11.3262 -y 4.9299999999999997 subnet1
opspareds "" subnet1
opparm -V 20.5.522 subnet1
chlock subnet1 -*
chautoscope subnet1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off -L off -M off -H on -E off subnet1
opexprlanguage -s hscript subnet1
opuserdata -n '___Version___' -v '20.5.522' subnet1
opcf subnet1

# Node const6 (Vop/constant)
opadd -e -n constant const6
oplocate -x -4.4462000000000002 -y 3.3556900000000001 const6
opspareds "" const6
opparm -V 20.5.522 const6 consttype ( float ) floatdef ( 0 ) intdef ( 0 ) toggledef ( off ) angledef ( 0 ) logfloatdef ( 0 ) float2def ( 0 0 ) float3def ( 0 0 0 ) vectordef ( 0 0 0 ) normaldef ( 0 0 0 ) pointdef ( 0 0 0 ) directiondef ( 1 0 0 ) float4def ( 0 0 0 0 ) floatm2def ( 1 0 0 1 ) float9def ( 1 0 0 0 1 0 0 0 1 ) float16def ( 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1 ) stringdef ( "" ) filedef ( "" ) imagedef ( "" ) geometrydef ( "" ) colordef ( 0 0 0 ) color4def ( 0 0 0 0 ) bsdfdef ( "" ) dictdef ( "" ) coshaderdef ( "" ) surfacedef ( "" ) displacementdef ( "" ) atmospheredef ( "" ) lightdef ( "" ) lightfilterdef ( "" ) floatadef ( ) intadef ( ) vector2adef ( ) vectoradef ( ) pointadef ( ) normaladef ( ) coloradef ( ) floatm2adef ( ) float4adef ( ) float9adef ( ) float16adef ( ) stringadef ( ) dictadef ( ) coshaderadef ( "" ) structdef ( "" ) parmuniform ( on ) constname ( Value ) constlabel ( Constant )
chlock const6 -*
chautoscope const6 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off -L off -M off -H on -E off const6
opexprlanguage -s hscript const6
opuserdata -n '___Version___' -v '20.5.522' const6

# Node parm5 (Vop/parameter)
opadd -e -n parameter parm5
oplocate -x -0.53003100000000003 -y 5.5300000000000002 parm5
opspareds "" parm5
opparm -V 20.5.522 parm5 parmscope ( shaderparm ) parmaccess ( "" ) parmname ( Offset ) parmprefix ( "" ) parmpostfix ( "" ) parmlabel ( "" ) showlabel ( on ) parmtype ( float ) parmtypename ( "" ) floatdef ( 0 ) intdef ( 0 ) toggledef ( off ) angledef ( 0 ) logfloatdef ( 0 ) float2def ( 0 0 ) float3def ( 0 0 0 ) vectordef ( 0 0 0 ) normaldef ( 0 0 0 ) pointdef ( 0 0 0 ) directiondef ( 1 0 0 ) float4def ( 0 0 0 0 ) floatm2def ( 1 0 0 1 ) float9def ( 1 0 0 0 1 0 0 0 1 ) float16def ( 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1 ) stringdef ( "" ) filedef ( "" ) imagedef ( "" ) geometrydef ( "" ) colordef ( 0 0 0 ) color4def ( 0 0 0 0 ) bsdfdef ( "" ) dictdef ( "" ) coshaderdef ( "" ) surfacedef ( "" ) displacementdef ( "" ) atmospheredef ( "" ) lightdef ( "" ) lightfilterdef ( "" ) floatadef ( ) intadef ( ) vector2adef ( ) vectoradef ( ) pointadef ( ) normaladef ( ) coloradef ( ) floatm2adef ( ) float4adef ( ) float9adef ( ) float16adef ( ) stringadef ( ) dictadef ( ) coshaderadef ( "" ) structdef ( "" ) rangeflt ( 0 1 ) rangeint ( 0 10 ) stringtype ( off ) opfilter ( !!OBJ/LIGHT!! ) parmcomment ( "" ) separator1 ( ) useasparmdefiner ( off ) useownexportcontext ( off ) parmuniform ( on ) usebound ( off ) hasconnector ( on ) exportparm ( off ) exportcontext ( cvex ) providemenu ( off ) menuchoices ( "" ) menuscript ( "" ) menuscriptlanguage ( hscript ) separator2 ( ) invisible ( off ) joinnext ( off ) disablewhen ( "" ) hidewhen ( "" ) callback ( "" ) tags ( "" ) help ( "" )
chlock parm5 -*
chautoscope parm5 -*
opcolor -c 0.83899998664855957 0.83899998664855957 0.83899998664855957 parm5
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F off -c on -e on -b off -L off -M off -H on -E off parm5
opexprlanguage -s hscript parm5
opuserdata -n '___Version___' -v '20.5.522' parm5

# Node suboutput1 (Vop/suboutput)
opadd -e -n suboutput suboutput1
oplocate -x 5.7399800000000001 -y 10.133800000000001 suboutput1
opspareds "" suboutput1
opparm -V 20.5.522 suboutput1 name1 ( "" ) label1 ( "" ) name2 ( "" ) label2 ( "" ) name3 ( "" ) label3 ( "" ) name4 ( "" ) label4 ( "" ) name5 ( "" ) label5 ( "" ) name6 ( "" ) label6 ( "" ) name7 ( "" ) label7 ( "" ) name8 ( "" ) label8 ( "" ) name9 ( "" ) label9 ( "" ) name10 ( "" ) label10 ( "" ) name11 ( "" ) label11 ( "" ) name12 ( "" ) label12 ( "" ) name13 ( "" ) label13 ( "" ) name14 ( "" ) label14 ( "" ) name15 ( "" ) label15 ( "" ) name16 ( "" ) label16 ( "" ) name17 ( "" ) label17 ( "" ) name18 ( "" ) label18 ( "" ) name19 ( "" ) label19 ( "" ) name20 ( "" ) label20 ( "" ) name21 ( "" ) label21 ( "" ) name22 ( "" ) label22 ( "" ) name23 ( "" ) label23 ( "" ) name24 ( "" ) label24 ( "" ) name25 ( "" ) label25 ( "" ) name26 ( "" ) label26 ( "" ) name27 ( "" ) label27 ( "" ) name28 ( "" ) label28 ( "" ) name29 ( "" ) label29 ( "" ) name30 ( "" ) label30 ( "" ) name31 ( "" ) label31 ( "" ) name32 ( "" ) label32 ( "" ) name33 ( "" ) label33 ( "" ) name34 ( "" ) label34 ( "" ) name35 ( "" ) label35 ( "" ) name36 ( "" ) label36 ( "" ) name37 ( "" ) label37 ( "" ) name38 ( "" ) label38 ( "" ) name39 ( "" ) label39 ( "" ) name40 ( "" ) label40 ( "" ) name41 ( "" ) label41 ( "" ) name42 ( "" ) label42 ( "" ) name43 ( "" ) label43 ( "" ) name44 ( "" ) label44 ( "" ) name45 ( "" ) label45 ( "" ) name46 ( "" ) label46 ( "" ) name47 ( "" ) label47 ( "" ) name48 ( "" ) label48 ( "" ) name49 ( "" ) label49 ( "" ) name50 ( "" ) label50 ( "" ) name51 ( "" ) label51 ( "" ) name52 ( "" ) label52 ( "" ) name53 ( "" ) label53 ( "" ) name54 ( "" ) label54 ( "" ) name55 ( "" ) label55 ( "" ) name56 ( "" ) label56 ( "" ) name57 ( "" ) label57 ( "" ) name58 ( "" ) label58 ( "" ) name59 ( "" ) label59 ( "" ) name60 ( "" ) label60 ( "" ) name61 ( "" ) label61 ( "" ) name62 ( "" ) label62 ( "" ) name63 ( "" ) label63 ( "" ) name64 ( "" ) label64 ( "" )
chlock suboutput1 -*
chautoscope suboutput1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off -L off -M off -H on -E off suboutput1
opexprlanguage -s hscript suboutput1
opuserdata -n '___Version___' -v '20.5.522' suboutput1

# Node subinput1 (Vop/subinput)
opadd -e -n subinput subinput1
oplocate -x 1.5 -y 10.133800000000001 subinput1
opspareds "" subinput1
opparm -V 20.5.522 subinput1
chlock subinput1 -*
chautoscope subinput1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off -L off -M off -H on -E off subinput1
opexprlanguage -s hscript subinput1
opuserdata -n '___Version___' -v '20.5.522' subinput1

# Node turbulent (Vop/subnet)
opadd -e -n subnet turbulent
oplocate -x 3.6408399999999999 -y 10.133800000000001 turbulent
opspareds "" turbulent
opparm -V 20.5.522 turbulent
chlock turbulent -*
chautoscope turbulent -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off -L off -M off -H on -E off turbulent
opexprlanguage -s hscript turbulent
opuserdata -n '___Version___' -v '20.5.522' turbulent
opcf turbulent

# Node turbnoise1 (Vop/turbnoise)
opadd -e -n turbnoise turbnoise1
oplocate -x -3.0529000000000002 -y 5.3922299999999996 turbnoise1
opspareds "" turbnoise1
opparm turbnoise1 signature ( v ) type ( pnoise ) pos ( 0 0 0 ) freq ( 1 1 1 ) offset ( 0 0 0 ) amp ( 10 ) rough ( 0.5 ) atten ( 1 ) turb ( 5 )
chlock turbnoise1 -*
chautoscope turbnoise1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off -L off -M off -H on -E off turbnoise1
opexprlanguage -s hscript turbnoise1
opuserdata -n '___Version___' -v '' turbnoise1

# Node suboutput1 (Vop/suboutput)
opadd -e -n suboutput suboutput1
oplocate -x -0.84557099999999996 -y -0.13500000000000001 suboutput1
opspareds "" suboutput1
opparm -V 20.5.522 suboutput1 name1 ( "" ) label1 ( "" ) name2 ( "" ) label2 ( "" ) name3 ( "" ) label3 ( "" ) name4 ( "" ) label4 ( "" ) name5 ( "" ) label5 ( "" ) name6 ( "" ) label6 ( "" ) name7 ( "" ) label7 ( "" ) name8 ( "" ) label8 ( "" ) name9 ( "" ) label9 ( "" ) name10 ( "" ) label10 ( "" ) name11 ( "" ) label11 ( "" ) name12 ( "" ) label12 ( "" ) name13 ( "" ) label13 ( "" ) name14 ( "" ) label14 ( "" ) name15 ( "" ) label15 ( "" ) name16 ( "" ) label16 ( "" ) name17 ( "" ) label17 ( "" ) name18 ( "" ) label18 ( "" ) name19 ( "" ) label19 ( "" ) name20 ( "" ) label20 ( "" ) name21 ( "" ) label21 ( "" ) name22 ( "" ) label22 ( "" ) name23 ( "" ) label23 ( "" ) name24 ( "" ) label24 ( "" ) name25 ( "" ) label25 ( "" ) name26 ( "" ) label26 ( "" ) name27 ( "" ) label27 ( "" ) name28 ( "" ) label28 ( "" ) name29 ( "" ) label29 ( "" ) name30 ( "" ) label30 ( "" ) name31 ( "" ) label31 ( "" ) name32 ( "" ) label32 ( "" ) name33 ( "" ) label33 ( "" ) name34 ( "" ) label34 ( "" ) name35 ( "" ) label35 ( "" ) name36 ( "" ) label36 ( "" ) name37 ( "" ) label37 ( "" ) name38 ( "" ) label38 ( "" ) name39 ( "" ) label39 ( "" ) name40 ( "" ) label40 ( "" ) name41 ( "" ) label41 ( "" ) name42 ( "" ) label42 ( "" ) name43 ( "" ) label43 ( "" ) name44 ( "" ) label44 ( "" ) name45 ( "" ) label45 ( "" ) name46 ( "" ) label46 ( "" ) name47 ( "" ) label47 ( "" ) name48 ( "" ) label48 ( "" ) name49 ( "" ) label49 ( "" ) name50 ( "" ) label50 ( "" ) name51 ( "" ) label51 ( "" ) name52 ( "" ) label52 ( "" ) name53 ( "" ) label53 ( "" ) name54 ( "" ) label54 ( "" ) name55 ( "" ) label55 ( "" ) name56 ( "" ) label56 ( "" ) name57 ( "" ) label57 ( "" ) name58 ( "" ) label58 ( "" ) name59 ( "" ) label59 ( "" ) name60 ( "" ) label60 ( "" ) name61 ( "" ) label61 ( "" ) name62 ( "" ) label62 ( "" ) name63 ( "" ) label63 ( "" ) name64 ( "" ) label64 ( "" )
chlock suboutput1 -*
chautoscope suboutput1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off -L off -M off -H on -E off suboutput1
opexprlanguage -s hscript suboutput1
opuserdata -n '___Version___' -v '20.5.522' suboutput1

# Node subinput1 (Vop/subinput)
opadd -e -n subinput subinput1
oplocate -x -5.2640799999999999 -y 5.3399999999999999 subinput1
opspareds "" subinput1
opparm -V 20.5.522 subinput1
chlock subinput1 -*
chautoscope subinput1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off -L off -M off -H on -E off subinput1
opexprlanguage -s hscript subinput1
opuserdata -n '___Version___' -v '20.5.522' subinput1

# Node turbnoise2 (Vop/turbnoise)
opadd -e -n turbnoise turbnoise2
oplocate -x -3.0529000000000002 -y 3.53627 turbnoise2
opspareds "" turbnoise2
opparm turbnoise2 signature ( v ) type ( onoise ) pos ( 0 0 0 ) freq ( 1 1 1 ) offset ( 0 0 0 ) amp ( 10 ) rough ( 0.5 ) atten ( 1 ) turb ( 5 )
chlock turbnoise2 -*
chautoscope turbnoise2 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off -L off -M off -H on -E off turbnoise2
opexprlanguage -s hscript turbnoise2
opuserdata -n '___Version___' -v '' turbnoise2

# Node turbnoise3 (Vop/turbnoise)
opadd -e -n turbnoise turbnoise3
oplocate -x -3.0529000000000002 -y 1.56918 turbnoise3
opspareds "" turbnoise3
opparm turbnoise3 signature ( v ) type ( snoise ) pos ( 0 0 0 ) freq ( 1 1 1 ) offset ( 0 0 0 ) amp ( 10 ) rough ( 0.5 ) atten ( 1 ) turb ( 5 )
chlock turbnoise3 -*
chautoscope turbnoise3 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off -L off -M off -H on -E off turbnoise3
opexprlanguage -s hscript turbnoise3
opuserdata -n '___Version___' -v '' turbnoise3

# Node turbnoise4 (Vop/turbnoise)
opadd -e -n turbnoise turbnoise4
oplocate -x -3.0529000000000002 -y -0.42278300000000002 turbnoise4
opspareds "" turbnoise4
opparm turbnoise4 signature ( v ) type ( anoise ) pos ( 0 0 0 ) freq ( 1 1 1 ) offset ( 0 0 0 ) amp ( 10 ) rough ( 0.5 ) atten ( 1 ) turb ( 5 )
chlock turbnoise4 -*
chautoscope turbnoise4 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off -L off -M off -H on -E off turbnoise4
opexprlanguage -s hscript turbnoise4
opuserdata -n '___Version___' -v '' turbnoise4

# Node turbnoise5 (Vop/turbnoise)
opadd -e -n turbnoise turbnoise5
oplocate -x -3.0529000000000002 -y -2.3599199999999998 turbnoise5
opspareds "" turbnoise5
opparm turbnoise5 signature ( v ) type ( xnoise ) pos ( 0 0 0 ) freq ( 1 1 1 ) offset ( -10 0 0 ) amp ( 10 ) rough ( 0.892 ) atten ( 1 ) turb ( 5 )
chlock turbnoise5 -*
chautoscope turbnoise5 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off -L off -M off -H on -E off turbnoise5
opexprlanguage -s hscript turbnoise5
opuserdata -n '___Version___' -v '' turbnoise5

# Node turbnoise6 (Vop/turbnoise)
opadd -e -n turbnoise turbnoise6
oplocate -x -3.0529000000000002 -y -4.2163399999999998 turbnoise6
opspareds "" turbnoise6
opparm turbnoise6 signature ( v ) type ( correctnoise ) pos ( 0 0 0 ) freq ( 1 1 1 ) offset ( 0 0 0 ) amp ( 10 ) rough ( 0.5 ) atten ( 1 ) turb ( 5 )
chlock turbnoise6 -*
chautoscope turbnoise6 -*
opset -d on -r on -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off -L off -M off -H on -E off turbnoise6
opexprlanguage -s hscript turbnoise6
opuserdata -n '___Version___' -v '' turbnoise6
opcf ..

# Node aa (Vop/subnet)
opadd -e -n subnet aa
oplocate -x 3.6408399999999999 -y 8.1738199999999992 aa
opspareds "" aa
opparm -V 20.5.522 aa
chlock aa -*
chautoscope aa -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off -L off -M off -H on -E off aa
opexprlanguage -s hscript aa
opuserdata -n '___Version___' -v '20.5.522' aa
opcf aa

# Node aanoise2 (Vop/aanoise)
opadd -e -n aanoise aanoise2
oplocate -x 3.5385900000000001 -y 8.7379899999999999 aanoise2
opspareds "" aanoise2
opparm aanoise2 signature ( vv ) pos_ff ( 0 ) pos ( 0 0 0 ) pos_fp ( 0 0 0 0 ) freq_ff ( 1 ) freq ( 1 1 1 ) freq_fp ( 1 1 1 1 ) offset_ff ( 0 ) offset ( 0 0 0 ) offset_fp ( 0 0 0 0 ) amp ( 1 ) rough ( 0.5 ) maxoctave ( 8 ) noisetype ( noise )
chlock aanoise2 -*
chautoscope aanoise2 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off -L off -M off -H on -E off aanoise2
opexprlanguage -s hscript aanoise2
opuserdata -n '___Version___' -v '' aanoise2

# Node floattovec1 (Vop/floattovec)
opadd -e -n floattovec floattovec1
oplocate -x 1.3921600000000001 -y 9.1899999999999995 floattovec1
opspareds "" floattovec1
opparm floattovec1 signature ( default ) fval1 ( 0 ) fval2 ( 0 ) fval3 ( 0 ) fval1_uv ( 0 ) fval2_uv ( 0 ) fval3_uv ( 0 )
chlock floattovec1 -*
chautoscope floattovec1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off -L off -M off -H on -E off floattovec1
opexprlanguage -s hscript floattovec1
opuserdata -n '___Version___' -v '' floattovec1

# Node suboutput1 (Vop/suboutput)
opadd -e -n suboutput suboutput1
oplocate -x 5.4970499999999998 -y 6.8938199999999998 suboutput1
opspareds "" suboutput1
opparm -V 20.5.522 suboutput1 name1 ( "" ) label1 ( "" ) name2 ( "" ) label2 ( "" ) name3 ( "" ) label3 ( "" ) name4 ( "" ) label4 ( "" ) name5 ( "" ) label5 ( "" ) name6 ( "" ) label6 ( "" ) name7 ( "" ) label7 ( "" ) name8 ( "" ) label8 ( "" ) name9 ( "" ) label9 ( "" ) name10 ( "" ) label10 ( "" ) name11 ( "" ) label11 ( "" ) name12 ( "" ) label12 ( "" ) name13 ( "" ) label13 ( "" ) name14 ( "" ) label14 ( "" ) name15 ( "" ) label15 ( "" ) name16 ( "" ) label16 ( "" ) name17 ( "" ) label17 ( "" ) name18 ( "" ) label18 ( "" ) name19 ( "" ) label19 ( "" ) name20 ( "" ) label20 ( "" ) name21 ( "" ) label21 ( "" ) name22 ( "" ) label22 ( "" ) name23 ( "" ) label23 ( "" ) name24 ( "" ) label24 ( "" ) name25 ( "" ) label25 ( "" ) name26 ( "" ) label26 ( "" ) name27 ( "" ) label27 ( "" ) name28 ( "" ) label28 ( "" ) name29 ( "" ) label29 ( "" ) name30 ( "" ) label30 ( "" ) name31 ( "" ) label31 ( "" ) name32 ( "" ) label32 ( "" ) name33 ( "" ) label33 ( "" ) name34 ( "" ) label34 ( "" ) name35 ( "" ) label35 ( "" ) name36 ( "" ) label36 ( "" ) name37 ( "" ) label37 ( "" ) name38 ( "" ) label38 ( "" ) name39 ( "" ) label39 ( "" ) name40 ( "" ) label40 ( "" ) name41 ( "" ) label41 ( "" ) name42 ( "" ) label42 ( "" ) name43 ( "" ) label43 ( "" ) name44 ( "" ) label44 ( "" ) name45 ( "" ) label45 ( "" ) name46 ( "" ) label46 ( "" ) name47 ( "" ) label47 ( "" ) name48 ( "" ) label48 ( "" ) name49 ( "" ) label49 ( "" ) name50 ( "" ) label50 ( "" ) name51 ( "" ) label51 ( "" ) name52 ( "" ) label52 ( "" ) name53 ( "" ) label53 ( "" ) name54 ( "" ) label54 ( "" ) name55 ( "" ) label55 ( "" ) name56 ( "" ) label56 ( "" ) name57 ( "" ) label57 ( "" ) name58 ( "" ) label58 ( "" ) name59 ( "" ) label59 ( "" ) name60 ( "" ) label60 ( "" ) name61 ( "" ) label61 ( "" ) name62 ( "" ) label62 ( "" ) name63 ( "" ) label63 ( "" ) name64 ( "" ) label64 ( "" )
chlock suboutput1 -*
chautoscope suboutput1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off -L off -M off -H on -E off suboutput1
opexprlanguage -s hscript suboutput1
opuserdata -n '___Version___' -v '20.5.522' suboutput1

# Node subinput1 (Vop/subinput)
opadd -e -n subinput subinput1
oplocate -x 1.3921600000000001 -y 6.4438199999999997 subinput1
opspareds "" subinput1
opparm -V 20.5.522 subinput1
chlock subinput1 -*
chautoscope subinput1 -*
opset -d on -r on -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off -L off -M off -H on -E off subinput1
opexprlanguage -s hscript subinput1
opuserdata -n '___Version___' -v '20.5.522' subinput1

# Node aanoise3 (Vop/aanoise)
opadd -e -n aanoise aanoise3
oplocate -x 3.5385900000000001 -y 6.8938199999999998 aanoise3
opspareds "" aanoise3
opparm aanoise3 signature ( vv ) pos_ff ( 0 ) pos ( 0 0 0 ) pos_fp ( 0 0 0 0 ) freq_ff ( 1 ) freq ( 1 1 1 ) freq_fp ( 1 1 1 1 ) offset_ff ( 0 ) offset ( 0 0 0 ) offset_fp ( 0 0 0 0 ) amp ( 1 ) rough ( 0.5 ) maxoctave ( 8 ) noisetype ( xnoise )
chlock aanoise3 -*
chautoscope aanoise3 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off -L off -M off -H on -E off aanoise3
opexprlanguage -s hscript aanoise3
opuserdata -n '___Version___' -v '' aanoise3

# Node aaflownoise1 (Vop/aaflownoise)
opadd -e -n aaflownoise aaflownoise1
oplocate -x 3.5 -y 5.0220099999999999 aaflownoise1
opspareds "" aaflownoise1
opparm aaflownoise1 signature ( vv ) pos_ff ( 0 ) pos ( 0 0 0 ) pos_fp ( 0 0 0 0 ) freq_ff ( 1 ) freq ( 1 1 1 ) freq_fp ( 1 1 1 1 ) offset_ff ( 0 ) offset ( 0 0 0 ) offset_fp ( 0 0 0 0 ) amp ( 1 ) rough ( 0.5 ) maxoctave ( 8 ) flow ( 0 ) flowrate ( 1 ) advect ( 0 )
chlock aaflownoise1 -*
chautoscope aaflownoise1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off -L off -M off -H on -E off aaflownoise1
opexprlanguage -s hscript aaflownoise1
opuserdata -n '___Version___' -v '' aaflownoise1
opcf ..

# Node curl (Vop/subnet)
opadd -e -n subnet curl
oplocate -x 3.6408399999999999 -y 6.2800000000000002 curl
opspareds "" curl
opparm -V 20.5.522 curl
chlock curl -*
chautoscope curl -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off -L off -M off -H on -E off curl
opexprlanguage -s hscript curl
opuserdata -n '___Version___' -v '20.5.522' curl
opcf curl

# Node curlnoise1 (Vop/curlnoise)
opadd -e -n curlnoise curlnoise1
oplocate -x 3.6408399999999999 -y 4.6617199999999999 curlnoise1
opspareds "" curlnoise1
opparm curlnoise1 signature ( default ) type ( pnoise ) pos ( 0 0 0 ) pos_vp ( 0 0 0 0 ) freq ( 1 1 1 ) freq_vp ( 1 1 1 1 ) offset ( 0 0 0 ) offset_vp ( 0 0 0 0 ) amp ( 1 ) rough ( 0.5 ) atten ( 1 ) turb ( 1 ) h ( 0.5 ) radius ( 1 ) dist ( 1 ) normal ( 0 0 0 ) sdf ( "" ) bounce ( off )
chlock curlnoise1 -*
chautoscope curlnoise1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off -L off -M off -H on -E off curlnoise1
opexprlanguage -s hscript curlnoise1
opuserdata -n '___Version___' -v '' curlnoise1

# Node suboutput1 (Vop/suboutput)
opadd -e -n suboutput suboutput1
oplocate -x 5.7758099999999999 -y 5.05701 suboutput1
opspareds "" suboutput1
opparm -V 20.5.522 suboutput1 name1 ( "" ) label1 ( "" ) name2 ( "" ) label2 ( "" ) name3 ( "" ) label3 ( "" ) name4 ( "" ) label4 ( "" ) name5 ( "" ) label5 ( "" ) name6 ( "" ) label6 ( "" ) name7 ( "" ) label7 ( "" ) name8 ( "" ) label8 ( "" ) name9 ( "" ) label9 ( "" ) name10 ( "" ) label10 ( "" ) name11 ( "" ) label11 ( "" ) name12 ( "" ) label12 ( "" ) name13 ( "" ) label13 ( "" ) name14 ( "" ) label14 ( "" ) name15 ( "" ) label15 ( "" ) name16 ( "" ) label16 ( "" ) name17 ( "" ) label17 ( "" ) name18 ( "" ) label18 ( "" ) name19 ( "" ) label19 ( "" ) name20 ( "" ) label20 ( "" ) name21 ( "" ) label21 ( "" ) name22 ( "" ) label22 ( "" ) name23 ( "" ) label23 ( "" ) name24 ( "" ) label24 ( "" ) name25 ( "" ) label25 ( "" ) name26 ( "" ) label26 ( "" ) name27 ( "" ) label27 ( "" ) name28 ( "" ) label28 ( "" ) name29 ( "" ) label29 ( "" ) name30 ( "" ) label30 ( "" ) name31 ( "" ) label31 ( "" ) name32 ( "" ) label32 ( "" ) name33 ( "" ) label33 ( "" ) name34 ( "" ) label34 ( "" ) name35 ( "" ) label35 ( "" ) name36 ( "" ) label36 ( "" ) name37 ( "" ) label37 ( "" ) name38 ( "" ) label38 ( "" ) name39 ( "" ) label39 ( "" ) name40 ( "" ) label40 ( "" ) name41 ( "" ) label41 ( "" ) name42 ( "" ) label42 ( "" ) name43 ( "" ) label43 ( "" ) name44 ( "" ) label44 ( "" ) name45 ( "" ) label45 ( "" ) name46 ( "" ) label46 ( "" ) name47 ( "" ) label47 ( "" ) name48 ( "" ) label48 ( "" ) name49 ( "" ) label49 ( "" ) name50 ( "" ) label50 ( "" ) name51 ( "" ) label51 ( "" ) name52 ( "" ) label52 ( "" ) name53 ( "" ) label53 ( "" ) name54 ( "" ) label54 ( "" ) name55 ( "" ) label55 ( "" ) name56 ( "" ) label56 ( "" ) name57 ( "" ) label57 ( "" ) name58 ( "" ) label58 ( "" ) name59 ( "" ) label59 ( "" ) name60 ( "" ) label60 ( "" ) name61 ( "" ) label61 ( "" ) name62 ( "" ) label62 ( "" ) name63 ( "" ) label63 ( "" ) name64 ( "" ) label64 ( "" )
chlock suboutput1 -*
chautoscope suboutput1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off -L off -M off -H on -E off suboutput1
opexprlanguage -s hscript suboutput1
opuserdata -n '___Version___' -v '20.5.522' suboutput1

# Node subinput1 (Vop/subinput)
opadd -e -n subinput subinput1
oplocate -x 1.36805 -y 4.7000000000000002 subinput1
opspareds "" subinput1
opparm -V 20.5.522 subinput1
chlock subinput1 -*
chautoscope subinput1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off -L off -M off -H on -E off subinput1
opexprlanguage -s hscript subinput1
opuserdata -n '___Version___' -v '20.5.522' subinput1

# Node curlnoise2 (Vop/curlnoise)
opadd -e -n curlnoise curlnoise2
oplocate -x 3.6408399999999999 -y 1.7895799999999999 curlnoise2
opspareds "" curlnoise2
opparm curlnoise2 signature ( default ) type ( onoise ) pos ( 0 0 0 ) pos_vp ( 0 0 0 0 ) freq ( 1 1 1 ) freq_vp ( 1 1 1 1 ) offset ( 0 0 0 ) offset_vp ( 0 0 0 0 ) amp ( 1 ) rough ( 0.5 ) atten ( 1 ) turb ( 1 ) h ( 0.5 ) radius ( 1 ) dist ( 1 ) normal ( 0 0 0 ) sdf ( "" ) bounce ( off )
chlock curlnoise2 -*
chautoscope curlnoise2 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off -L off -M off -H on -E off curlnoise2
opexprlanguage -s hscript curlnoise2
opuserdata -n '___Version___' -v '' curlnoise2

# Node curlnoise3 (Vop/curlnoise)
opadd -e -n curlnoise curlnoise3
oplocate -x 3.6408399999999999 -y -1.18066 curlnoise3
opspareds "" curlnoise3
opparm curlnoise3 signature ( default ) type ( snoise ) pos ( 0 0 0 ) pos_vp ( 0 0 0 0 ) freq ( 1 1 1 ) freq_vp ( 1 1 1 1 ) offset ( 0 0 0 ) offset_vp ( 0 0 0 0 ) amp ( 1 ) rough ( 0.5 ) atten ( 1 ) turb ( 1 ) h ( 0.3 ) radius ( 1 ) dist ( 1 ) normal ( 0 0 0 ) sdf ( "" ) bounce ( off )
chlock curlnoise3 -*
chautoscope curlnoise3 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off -L off -M off -H on -E off curlnoise3
opexprlanguage -s hscript curlnoise3
opuserdata -n '___Version___' -v '' curlnoise3

# Node curlnoise4 (Vop/curlnoise)
opadd -e -n curlnoise curlnoise4
oplocate -x 3.6408399999999999 -y -3.9731299999999998 curlnoise4
opspareds "" curlnoise4
opparm curlnoise4 signature ( default ) type ( anoise ) pos ( 0 0 0 ) pos_vp ( 0 0 0 0 ) freq ( 1 1 1 ) freq_vp ( 1 1 1 1 ) offset ( 0 0 0 ) offset_vp ( 0 0 0 0 ) amp ( 1 ) rough ( 0.5 ) atten ( 1 ) turb ( 1 ) h ( 0.5 ) radius ( 1 ) dist ( 1 ) normal ( 0 0 0 ) sdf ( "" ) bounce ( off )
chlock curlnoise4 -*
chautoscope curlnoise4 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off -L off -M off -H on -E off curlnoise4
opexprlanguage -s hscript curlnoise4
opuserdata -n '___Version___' -v '' curlnoise4

# Node curlnoise5 (Vop/curlnoise)
opadd -e -n curlnoise curlnoise5
oplocate -x 3.6408399999999999 -y -6.7974500000000004 curlnoise5
opspareds "" curlnoise5
opparm curlnoise5 signature ( default ) type ( xnoise ) pos ( 0 0 0 ) pos_vp ( 0 0 0 0 ) freq ( 2 2 2 ) freq_vp ( 1 1 1 1 ) offset ( 1.4 1.4 1.4 ) offset_vp ( 0 0 0 0 ) amp ( 1 ) rough ( 0.5 ) atten ( 1 ) turb ( 1 ) h ( 0.5 ) radius ( 1 ) dist ( 1 ) normal ( 0 0 0 ) sdf ( "" ) bounce ( off )
chlock curlnoise5 -*
chautoscope curlnoise5 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off -L off -M off -H on -E off curlnoise5
opexprlanguage -s hscript curlnoise5
opuserdata -n '___Version___' -v '' curlnoise5

# Node curlnoise6 (Vop/curlnoise)
opadd -e -n curlnoise curlnoise6
oplocate -x 3.6408399999999999 -y -9.65306 curlnoise6
opspareds "" curlnoise6
opparm curlnoise6 signature ( default ) type ( exact_pnoise ) pos ( 0 0 0 ) pos_vp ( 0 0 0 0 ) freq ( 1 1 1 ) freq_vp ( 1 1 1 1 ) offset ( 0 0 0 ) offset_vp ( 0 0 0 0 ) amp ( 1 ) rough ( 0.5 ) atten ( 1 ) turb ( 1 ) h ( 0.5 ) radius ( 1 ) dist ( 1 ) normal ( 0 0 0 ) sdf ( "" ) bounce ( off )
chlock curlnoise6 -*
chautoscope curlnoise6 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off -L off -M off -H on -E off curlnoise6
opexprlanguage -s hscript curlnoise6
opuserdata -n '___Version___' -v '' curlnoise6

# Node curlnoise7 (Vop/curlnoise)
opadd -e -n curlnoise curlnoise7
oplocate -x 3.6408399999999999 -y -12.4094 curlnoise7
opspareds "" curlnoise7
opparm curlnoise7 signature ( default ) type ( exact_xnoise ) pos ( 0 0 0 ) pos_vp ( 0 0 0 0 ) freq ( 1 1 1 ) freq_vp ( 1 1 1 1 ) offset ( 0 0 0 ) offset_vp ( 0 0 0 0 ) amp ( 1 ) rough ( 0.5 ) atten ( 1 ) turb ( 1 ) h ( 0.5 ) radius ( 1 ) dist ( 1 ) normal ( 0 0 0 ) sdf ( "" ) bounce ( off )
chlock curlnoise7 -*
chautoscope curlnoise7 -*
opset -d on -r on -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off -L off -M off -H on -E off curlnoise7
opexprlanguage -s hscript curlnoise7
opuserdata -n '___Version___' -v '' curlnoise7
opcf ..

# Node switch1 (Vop/switch)
opadd -e -n switch switch1
oplocate -x -2.3697599999999999 -y 6.6799999999999997 switch1
opspareds "" switch1
opparm -V 20.5.522 switch1 switcher ( 0 ) outofbounds ( last )
chlock switch1 -*
chautoscope switch1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off -L off -M off -H on -E off switch1
opexprlanguage -s hscript switch1
opuserdata -n '___Version___' -v '20.5.522' switch1

# Node parm1 (Vop/parameter)
opadd -e -n parameter parm1
oplocate -x -6.5850900000000001 -y 6.6799999999999997 parm1
opspareds "" parm1
opparm -V 20.5.522 parm1 parmscope ( shaderparm ) parmaccess ( "" ) parmname ( timeoffsettoggle ) parmprefix ( "" ) parmpostfix ( "" ) parmlabel ( "" ) showlabel ( on ) parmtype ( float ) parmtypename ( "" ) floatdef ( 0 ) intdef ( 0 ) toggledef ( off ) angledef ( 0 ) logfloatdef ( 0 ) float2def ( 0 0 ) float3def ( 0 0 0 ) vectordef ( 0 0 0 ) normaldef ( 0 0 0 ) pointdef ( 0 0 0 ) directiondef ( 1 0 0 ) float4def ( 0 0 0 0 ) floatm2def ( 1 0 0 1 ) float9def ( 1 0 0 0 1 0 0 0 1 ) float16def ( 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1 ) stringdef ( "" ) filedef ( "" ) imagedef ( "" ) geometrydef ( "" ) colordef ( 0 0 0 ) color4def ( 0 0 0 0 ) bsdfdef ( "" ) dictdef ( "" ) coshaderdef ( "" ) surfacedef ( "" ) displacementdef ( "" ) atmospheredef ( "" ) lightdef ( "" ) lightfilterdef ( "" ) floatadef ( ) intadef ( ) vector2adef ( ) vectoradef ( ) pointadef ( ) normaladef ( ) coloradef ( ) floatm2adef ( ) float4adef ( ) float9adef ( ) float16adef ( ) stringadef ( ) dictadef ( ) coshaderadef ( "" ) structdef ( "" ) rangeflt ( 0 1 ) rangeint ( 0 10 ) stringtype ( off ) opfilter ( !!OBJ/LIGHT!! ) parmcomment ( "" ) separator1 ( ) useasparmdefiner ( off ) useownexportcontext ( off ) parmuniform ( on ) usebound ( off ) hasconnector ( on ) exportparm ( off ) exportcontext ( cvex ) providemenu ( off ) menuchoices ( "" ) menuscript ( "" ) menuscriptlanguage ( hscript ) separator2 ( ) invisible ( off ) joinnext ( off ) disablewhen ( "" ) hidewhen ( "" ) callback ( "" ) tags ( "" ) help ( "" )
chlock parm1 -*
chautoscope parm1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off -L off -M off -H on -E off parm1
opexprlanguage -s hscript parm1
opuserdata -n '___Version___' -v '20.5.522' parm1

# Node multiply2 (Vop/multiply)
opadd -e -n multiply multiply2
oplocate -x -4.4462000000000002 -y 5.8499999999999996 multiply2
opspareds "" multiply2
opparm -V 20.5.522 multiply2
chlock multiply2 -*
chautoscope multiply2 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off -L off -M off -H on -E off multiply2
opexprlanguage -s hscript multiply2
opuserdata -n '___Version___' -v '20.5.522' multiply2

# Node parm2 (Vop/parameter)
opadd -e -n parameter parm2
oplocate -x -4.4462000000000002 -y 4.46976 parm2
opspareds "" parm2
opparm -V 20.5.522 parm2 parmscope ( shaderparm ) parmaccess ( "" ) parmname ( timeoffsetrate ) parmprefix ( "" ) parmpostfix ( "" ) parmlabel ( "" ) showlabel ( on ) parmtype ( float ) parmtypename ( "" ) floatdef ( 0 ) intdef ( 0 ) toggledef ( off ) angledef ( 0 ) logfloatdef ( 0 ) float2def ( 0 0 ) float3def ( 0 0 0 ) vectordef ( 0 0 0 ) normaldef ( 0 0 0 ) pointdef ( 0 0 0 ) directiondef ( 1 0 0 ) float4def ( 0 0 0 0 ) floatm2def ( 1 0 0 1 ) float9def ( 1 0 0 0 1 0 0 0 1 ) float16def ( 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1 ) stringdef ( "" ) filedef ( "" ) imagedef ( "" ) geometrydef ( "" ) colordef ( 0 0 0 ) color4def ( 0 0 0 0 ) bsdfdef ( "" ) dictdef ( "" ) coshaderdef ( "" ) surfacedef ( "" ) displacementdef ( "" ) atmospheredef ( "" ) lightdef ( "" ) lightfilterdef ( "" ) floatadef ( ) intadef ( ) vector2adef ( ) vectoradef ( ) pointadef ( ) normaladef ( ) coloradef ( ) floatm2adef ( ) float4adef ( ) float9adef ( ) float16adef ( ) stringadef ( ) dictadef ( ) coshaderadef ( "" ) structdef ( "" ) rangeflt ( 0 1 ) rangeint ( 0 10 ) stringtype ( off ) opfilter ( !!OBJ/LIGHT!! ) parmcomment ( "" ) separator1 ( ) useasparmdefiner ( off ) useownexportcontext ( off ) parmuniform ( on ) usebound ( off ) hasconnector ( on ) exportparm ( off ) exportcontext ( cvex ) providemenu ( off ) menuchoices ( "" ) menuscript ( "" ) menuscriptlanguage ( hscript ) separator2 ( ) invisible ( off ) joinnext ( off ) disablewhen ( "" ) hidewhen ( "" ) callback ( "" ) tags ( "" ) help ( "" )
chlock parm2 -*
chautoscope parm2 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off -L off -M off -H on -E off parm2
opexprlanguage -s hscript parm2
opuserdata -n '___Version___' -v '20.5.522' parm2

# Node add1 (Vop/add)
opadd -e -n add add1
oplocate -x -0.53003100000000003 -y 6.6799999999999997 add1
opspareds "" add1
opparm -V 20.5.522 add1
chlock add1 -*
chautoscope add1 -*
opset -d on -r on -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off -L off -M off -H on -E off add1
opexprlanguage -s hscript add1
opuserdata -n '___Version___' -v '20.5.522' add1

# Node unifiednoise1 (Vop/unifiednoise::3.0)
opadd -e -n unifiednoise::3.0 unifiednoise1
oplocate -x 3.6408399999999999 -y 4.29976 unifiednoise1
opspareds "" unifiednoise1
opparm unifiednoise1 signature ( v3 ) basis ( flow ) freq ( 1 1 1 1 ) offset ( 0 0 0 0 ) periodic ( off ) period ( 1 1 1 1 ) folder1 ( 0 ) fractal ( none ) oct ( 8 ) lac ( 2.01234 ) rough ( 0.5 ) folder2 ( 0 ) dolwarp ( off ) accuml ( off ) disp ( 1 ) dispfreq ( 1 ) dogwarp ( off ) accumg ( off ) gflow ( 0 ) flowrot ( 0 ) folder0_1 ( 0 ) cc_fold ( off ) cc_dobias ( off ) cc_bias ( 0.5 0.5 0.5 ) cc_dogain ( off ) cc_gain ( 0.5 0.5 0.5 ) cc_inv ( off ) cc_dorng ( off ) cc_rnglo ( 0 0 0 ) cc_rnghi ( 1 1 1 ) cc_amp ( 1 1 1 ) fscale ( 1 )
chlock unifiednoise1 -*
chautoscope unifiednoise1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b on -L off -M off -H on -E off unifiednoise1
opexprlanguage -s hscript unifiednoise1
opuserdata -n '___Version___' -v '' unifiednoise1

# Node parm3 (Vop/parameter)
opadd -e -n parameter parm3
oplocate -x -0.53003100000000003 -y 4.1150000000000002 parm3
opspareds "" parm3
opparm -V 20.5.522 parm3 parmscope ( shaderparm ) parmaccess ( "" ) parmname ( offsetvector ) parmprefix ( "" ) parmpostfix ( "" ) parmlabel ( "" ) showlabel ( on ) parmtype ( float3 ) parmtypename ( "" ) floatdef ( 0 ) intdef ( 0 ) toggledef ( off ) angledef ( 0 ) logfloatdef ( 0 ) float2def ( 0 0 ) float3def ( 0 0 0 ) vectordef ( 0 0 0 ) normaldef ( 0 0 0 ) pointdef ( 0 0 0 ) directiondef ( 1 0 0 ) float4def ( 0 0 0 0 ) floatm2def ( 1 0 0 1 ) float9def ( 1 0 0 0 1 0 0 0 1 ) float16def ( 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1 ) stringdef ( "" ) filedef ( "" ) imagedef ( "" ) geometrydef ( "" ) colordef ( 0 0 0 ) color4def ( 0 0 0 0 ) bsdfdef ( "" ) dictdef ( "" ) coshaderdef ( "" ) surfacedef ( "" ) displacementdef ( "" ) atmospheredef ( "" ) lightdef ( "" ) lightfilterdef ( "" ) floatadef ( ) intadef ( ) vector2adef ( ) vectoradef ( ) pointadef ( ) normaladef ( ) coloradef ( ) floatm2adef ( ) float4adef ( ) float9adef ( ) float16adef ( ) stringadef ( ) dictadef ( ) coshaderadef ( "" ) structdef ( "" ) rangeflt ( 0 1 ) rangeint ( 0 10 ) stringtype ( off ) opfilter ( !!OBJ/LIGHT!! ) parmcomment ( "" ) separator1 ( ) useasparmdefiner ( off ) useownexportcontext ( off ) parmuniform ( on ) usebound ( off ) hasconnector ( on ) exportparm ( off ) exportcontext ( cvex ) providemenu ( off ) menuchoices ( "" ) menuscript ( "" ) menuscriptlanguage ( hscript ) separator2 ( ) invisible ( off ) joinnext ( off ) disablewhen ( "" ) hidewhen ( "" ) callback ( "" ) tags ( "" ) help ( "" )
chlock parm3 -*
chautoscope parm3 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off -L off -M off -H on -E off parm3
opexprlanguage -s hscript parm3
opuserdata -n '___Version___' -v '20.5.522' parm3

# Node multiply1 (Vop/multiply)
opadd -e -n multiply multiply1
oplocate -x 1.5 -y 6.8938199999999998 multiply1
opspareds "" multiply1
opparm -V 20.5.522 multiply1
chlock multiply1 -*
chautoscope multiply1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off -L off -M off -H on -E off multiply1
opexprlanguage -s hscript multiply1
opuserdata -n '___Version___' -v '20.5.522' multiply1

# Node switch2 (Vop/switch)
opadd -e -n switch switch2
oplocate -x 1.5 -y 5.5300000000000002 switch2
opspareds "" switch2
opparm -V 20.5.522 switch2 switcher ( 1 ) outofbounds ( last )
chlock switch2 -*
chautoscope switch2 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off -L off -M off -H on -E off switch2
opexprlanguage -s hscript switch2
opuserdata -n '___Version___' -v '20.5.522' switch2

# Node bind1 (Vop/bind)
opadd -e -n bind bind1
oplocate -x 1.5 -y 4.1150000000000002 bind1
opspareds "" bind1
opparm -V 20.5.522 bind1 parmname ( offset ) parmtype ( float3 ) parmtypename ( "" ) overridetype ( on ) floatdef ( 0 ) intdef ( 0 ) toggledef ( off ) angledef ( 0 ) logfloatdef ( 0 ) float2def ( 0 0 ) float3def ( 0 0 0 ) vectordef ( 0 0 0 ) normaldef ( 0 0 0 ) pointdef ( 0 0 0 ) directiondef ( 1 0 0 ) float4def ( 0 0 0 0 ) floatm2def ( 1 0 0 1 ) float9def ( 1 0 0 0 1 0 0 0 1 ) float16def ( 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1 ) stringdef ( "" ) filedef ( "" ) imagedef ( "" ) geometrydef ( "" ) colordef ( 0 0 0 ) color4def ( 0 0 0 0 ) bsdfdef ( "" ) dictdef ( "" ) coshaderdef ( "" ) surfacedef ( "" ) displacementdef ( "" ) atmospheredef ( "" ) lightdef ( "" ) lightfilterdef ( "" ) floatadef ( ) intadef ( ) vector2adef ( ) vectoradef ( ) pointadef ( ) normaladef ( ) coloradef ( ) floatm2adef ( ) float4adef ( ) float9adef ( ) float16adef ( ) stringadef ( ) dictadef ( ) coshaderadef ( "" ) structdef ( "" ) useasparmdefiner ( off ) useownexportcontext ( off ) parmuniform ( on ) usebound ( off ) exportparm ( off ) exportcontext ( cvex )
chlock bind1 -*
chautoscope bind1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off -L off -M off -H on -E off bind1
opexprlanguage -s hscript bind1
opuserdata -n '___Version___' -v '20.5.522' bind1

# Node bind2 (Vop/bind)
opadd -e -n bind bind2
oplocate -x -2.3697599999999999 -y 3.04 bind2
opspareds "" bind2
opparm -V 20.5.522 bind2 parmname ( __hasoffset ) parmtype ( int ) parmtypename ( "" ) overridetype ( on ) floatdef ( 0 ) intdef ( 0 ) toggledef ( off ) angledef ( 0 ) logfloatdef ( 0 ) float2def ( 0 0 ) float3def ( 0 0 0 ) vectordef ( 0 0 0 ) normaldef ( 0 0 0 ) pointdef ( 0 0 0 ) directiondef ( 1 0 0 ) float4def ( 0 0 0 0 ) floatm2def ( 1 0 0 1 ) float9def ( 1 0 0 0 1 0 0 0 1 ) float16def ( 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1 ) stringdef ( "" ) filedef ( "" ) imagedef ( "" ) geometrydef ( "" ) colordef ( 0 0 0 ) color4def ( 0 0 0 0 ) bsdfdef ( "" ) dictdef ( "" ) coshaderdef ( "" ) surfacedef ( "" ) displacementdef ( "" ) atmospheredef ( "" ) lightdef ( "" ) lightfilterdef ( "" ) floatadef ( ) intadef ( ) vector2adef ( ) vectoradef ( ) pointadef ( ) normaladef ( ) coloradef ( ) floatm2adef ( ) float4adef ( ) float9adef ( ) float16adef ( ) stringadef ( ) dictadef ( ) coshaderadef ( "" ) structdef ( "" ) useasparmdefiner ( off ) useownexportcontext ( off ) parmuniform ( on ) usebound ( off ) exportparm ( off ) exportcontext ( cvex )
chlock bind2 -*
chautoscope bind2 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off -L off -M off -H on -E off bind2
opexprlanguage -s hscript bind2
opuserdata -n '___Version___' -v '20.5.522' bind2

# Node addconst1 (Vop/addconst)
opadd -e -n addconst addconst1
oplocate -x -0.53003100000000003 -y 3.04 addconst1
opspareds "" addconst1
opparm addconst1 signature ( default ) addconst ( 1 )
chlock addconst1 -*
chautoscope addconst1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b on -L off -M off -H on -E off addconst1
opexprlanguage -s hscript addconst1
opuserdata -n '___Version___' -v '' addconst1

# Node bind3 (Vop/bind)
opadd -e -n bind bind3
oplocate -x -2.5 -y 8.1150000000000002 bind3
opspareds "" bind3
opparm -V 20.5.522 bind3 parmname ( pieceoffset ) parmtype ( float ) parmtypename ( "" ) overridetype ( off ) floatdef ( 0 ) intdef ( 0 ) toggledef ( off ) angledef ( 0 ) logfloatdef ( 0 ) float2def ( 0 0 ) float3def ( 0 0 0 ) vectordef ( 0 0 0 ) normaldef ( 0 0 0 ) pointdef ( 0 0 0 ) directiondef ( 1 0 0 ) float4def ( 0 0 0 0 ) floatm2def ( 1 0 0 1 ) float9def ( 1 0 0 0 1 0 0 0 1 ) float16def ( 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1 ) stringdef ( "" ) filedef ( "" ) imagedef ( "" ) geometrydef ( "" ) colordef ( 0 0 0 ) color4def ( 0 0 0 0 ) bsdfdef ( "" ) dictdef ( "" ) coshaderdef ( "" ) surfacedef ( "" ) displacementdef ( "" ) atmospheredef ( "" ) lightdef ( "" ) lightfilterdef ( "" ) floatadef ( ) intadef ( ) vector2adef ( ) vectoradef ( ) pointadef ( ) normaladef ( ) coloradef ( ) floatm2adef ( ) float4adef ( ) float9adef ( ) float16adef ( ) stringadef ( ) dictadef ( ) coshaderadef ( "" ) structdef ( "" ) useasparmdefiner ( off ) useownexportcontext ( off ) parmuniform ( on ) usebound ( off ) exportparm ( off ) exportcontext ( cvex )
chlock bind3 -*
chautoscope bind3 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off -L off -M off -H on -E off bind3
opexprlanguage -s hscript bind3
opuserdata -n '___Version___' -v '20.5.522' bind3
opcf ..

# Node switch1 (Vop/switch)
opadd -e -n switch switch1
oplocate -x 13.5 -y 4.9299999999999997 switch1
opspareds "" switch1
opparm -V 20.5.522 switch1 switcher ( 3 ) outofbounds ( last )
chlock switch1 -*
chautoscope switch1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off -L off -M off -H on -E off switch1
opexprlanguage -s hscript switch1
opuserdata -n '___Version___' -v '20.5.522' switch1

# Node const5 (Vop/constant)
opadd -e -n constant const5
oplocate -x 13.5 -y 1.5138400000000001 const5
opspareds "" const5
chblockbegin
chadd -t 0 0 const5 intdef
chkey -t 0 -v 1 -m 0 -a 0 -A 0 -T a  -F 'ch("../noisemenu")' const5/intdef
chblockend
opparm -V 20.5.522 const5 consttype ( int ) floatdef ( 0 ) intdef ( intdef ) toggledef ( off ) angledef ( 0 ) logfloatdef ( 0 ) float2def ( 0 0 ) float3def ( 0 0 0 ) vectordef ( 0 0 0 ) normaldef ( 0 0 0 ) pointdef ( 0 0 0 ) directiondef ( 1 0 0 ) float4def ( 0 0 0 0 ) floatm2def ( 1 0 0 1 ) float9def ( 1 0 0 0 1 0 0 0 1 ) float16def ( 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1 ) stringdef ( "" ) filedef ( "" ) imagedef ( "" ) geometrydef ( "" ) colordef ( 0 0 0 ) color4def ( 0 0 0 0 ) bsdfdef ( "" ) dictdef ( "" ) coshaderdef ( "" ) surfacedef ( "" ) displacementdef ( "" ) atmospheredef ( "" ) lightdef ( "" ) lightfilterdef ( "" ) floatadef ( ) intadef ( ) vector2adef ( ) vectoradef ( ) pointadef ( ) normaladef ( ) coloradef ( ) floatm2adef ( ) float4adef ( ) float9adef ( ) float16adef ( ) stringadef ( ) dictadef ( ) coshaderadef ( "" ) structdef ( "" ) parmuniform ( on ) constname ( Value ) constlabel ( Constant )
chlock const5 -*
chautoscope const5 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off -L off -M off -H on -E off const5
opexprlanguage -s hscript const5
opuserdata -n '___Version___' -v '20.5.522' const5

# Node add2 (Vop/add)
opadd -e -n add add2
oplocate -x 19.5 -y 4.9299999999999997 add2
opspareds "" add2
opparm -V 20.5.522 add2
chlock add2 -*
chautoscope add2 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off -L off -M off -H on -E off add2
opexprlanguage -s hscript add2
opuserdata -n '___Version___' -v '20.5.522' add2

# Node abs1 (Vop/abs)
opadd -e -n abs abs1
oplocate -x 17.5 -y 4.9299999999999997 abs1
opspareds "" abs1
opparm abs1 signature ( v ) val ( 1 ) val_i ( 1 ) val_u ( 1 1 ) val_v ( 1 1 1 ) val_p ( 1 1 1 ) val_n ( 1 1 1 ) val_c ( 1 1 1 ) val_v4 ( 1 1 1 1 ) val_uf ( 1 ) val_uv ( 1 1 1 ) val_up ( 1 1 1 ) val_un ( 1 1 1 ) val_uc ( 1 1 1 )
chlock abs1 -*
chautoscope abs1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b on -L off -M off -H on -E off abs1
opexprlanguage -s hscript abs1
opuserdata -n '___Version___' -v '' abs1

# Node bind2 (Vop/bind)
opadd -e -n bind bind2
oplocate -x 17.5 -y 3.1150000000000002 bind2
opspareds "" bind2
opparm -V 20.5.522 bind2 parmname ( powernoise ) parmtype ( float3 ) parmtypename ( "" ) overridetype ( off ) floatdef ( 0 ) intdef ( 0 ) toggledef ( off ) angledef ( 0 ) logfloatdef ( 0 ) float2def ( 0 0 ) float3def ( 0 0 0 ) vectordef ( 0 0 0 ) normaldef ( 0 0 0 ) pointdef ( 0 0 0 ) directiondef ( 1 0 0 ) float4def ( 0 0 0 0 ) floatm2def ( 1 0 0 1 ) float9def ( 1 0 0 0 1 0 0 0 1 ) float16def ( 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1 ) stringdef ( "" ) filedef ( "" ) imagedef ( "" ) geometrydef ( "" ) colordef ( 0 0 0 ) color4def ( 0 0 0 0 ) bsdfdef ( "" ) dictdef ( "" ) coshaderdef ( "" ) surfacedef ( "" ) displacementdef ( "" ) atmospheredef ( "" ) lightdef ( "" ) lightfilterdef ( "" ) floatadef ( ) intadef ( ) vector2adef ( ) vectoradef ( ) pointadef ( ) normaladef ( ) coloradef ( ) floatm2adef ( ) float4adef ( ) float9adef ( ) float16adef ( ) stringadef ( ) dictadef ( ) coshaderadef ( "" ) structdef ( "" ) useasparmdefiner ( off ) useownexportcontext ( off ) parmuniform ( on ) usebound ( off ) exportparm ( off ) exportcontext ( cvex )
chlock bind2 -*
chautoscope bind2 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off -L off -M off -H on -E off bind2
opexprlanguage -s hscript bind2
opuserdata -n '___Version___' -v '20.5.522' bind2

# Node bind3 (Vop/bind)
opadd -e -n bind bind3
oplocate -x 21.5 -y 4.9299999999999997 bind3
opspareds "" bind3
opparm -V 20.5.522 bind3 parmname ( powernoise ) parmtype ( float3 ) parmtypename ( "" ) overridetype ( on ) floatdef ( 0 ) intdef ( 0 ) toggledef ( off ) angledef ( 0 ) logfloatdef ( 0 ) float2def ( 0 0 ) float3def ( 0 0 0 ) vectordef ( 0 0 0 ) normaldef ( 0 0 0 ) pointdef ( 0 0 0 ) directiondef ( 1 0 0 ) float4def ( 0 0 0 0 ) floatm2def ( 1 0 0 1 ) float9def ( 1 0 0 0 1 0 0 0 1 ) float16def ( 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1 ) stringdef ( "" ) filedef ( "" ) imagedef ( "" ) geometrydef ( "" ) colordef ( 0 0 0 ) color4def ( 0 0 0 0 ) bsdfdef ( "" ) dictdef ( "" ) coshaderdef ( "" ) surfacedef ( "" ) displacementdef ( "" ) atmospheredef ( "" ) lightdef ( "" ) lightfilterdef ( "" ) floatadef ( ) intadef ( ) vector2adef ( ) vectoradef ( ) pointadef ( ) normaladef ( ) coloradef ( ) floatm2adef ( ) float4adef ( ) float9adef ( ) float16adef ( ) stringadef ( ) dictadef ( ) coshaderadef ( "" ) structdef ( "" ) useasparmdefiner ( on ) useownexportcontext ( off ) parmuniform ( on ) usebound ( off ) exportparm ( whenconnected ) exportcontext ( cvex )
chlock bind3 -*
chautoscope bind3 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off -L off -M off -H on -E off bind3
opexprlanguage -s hscript bind3
opuserdata -n '___Version___' -v '20.5.522' bind3

# Node parm6 (Vop/parameter)
opadd -e -n parameter parm6
oplocate -x 13.5 -y 0.42875999999999997 parm6
opspareds "" parm6
opparm -V 20.5.522 parm6 parmscope ( shaderparm ) parmaccess ( "" ) parmname ( noisemenu ) parmprefix ( "" ) parmpostfix ( "" ) parmlabel ( "" ) showlabel ( on ) parmtype ( int ) parmtypename ( "" ) floatdef ( 0 ) intdef ( 0 ) toggledef ( off ) angledef ( 0 ) logfloatdef ( 0 ) float2def ( 0 0 ) float3def ( 0 0 0 ) vectordef ( 0 0 0 ) normaldef ( 0 0 0 ) pointdef ( 0 0 0 ) directiondef ( 1 0 0 ) float4def ( 0 0 0 0 ) floatm2def ( 1 0 0 1 ) float9def ( 1 0 0 0 1 0 0 0 1 ) float16def ( 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1 ) stringdef ( "" ) filedef ( "" ) imagedef ( "" ) geometrydef ( "" ) colordef ( 0 0 0 ) color4def ( 0 0 0 0 ) bsdfdef ( "" ) dictdef ( "" ) coshaderdef ( "" ) surfacedef ( "" ) displacementdef ( "" ) atmospheredef ( "" ) lightdef ( "" ) lightfilterdef ( "" ) floatadef ( ) intadef ( ) vector2adef ( ) vectoradef ( ) pointadef ( ) normaladef ( ) coloradef ( ) floatm2adef ( ) float4adef ( ) float9adef ( ) float16adef ( ) stringadef ( ) dictadef ( ) coshaderadef ( "" ) structdef ( "" ) rangeflt ( 0 1 ) rangeint ( 0 10 ) stringtype ( off ) opfilter ( !!OBJ/LIGHT!! ) parmcomment ( "" ) separator1 ( ) useasparmdefiner ( off ) useownexportcontext ( off ) parmuniform ( on ) usebound ( off ) hasconnector ( on ) exportparm ( off ) exportcontext ( cvex ) providemenu ( off ) menuchoices ( "" ) menuscript ( "" ) menuscriptlanguage ( hscript ) separator2 ( ) invisible ( off ) joinnext ( off ) disablewhen ( "" ) hidewhen ( "" ) callback ( "" ) tags ( "" ) help ( "" )
chlock parm6 -*
chautoscope parm6 -*
opcolor -c 0 0 0 parm6
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F off -c on -e on -b off -L off -M off -H on -E off parm6
opexprlanguage -s hscript parm6
opuserdata -n '___Version___' -v '20.5.522' parm6

# Node floattovec1 (Vop/floattovec)
opadd -e -n floattovec floattovec1
oplocate -x 11.3262 -y 6.0599999999999996 floattovec1
opspareds "" floattovec1
opparm floattovec1 signature ( default ) fval1 ( 0 ) fval2 ( 0 ) fval3 ( 0 ) fval1_uv ( 0 ) fval2_uv ( 0 ) fval3_uv ( 0 )
chlock floattovec1 -*
chautoscope floattovec1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off -L off -M off -H on -E off floattovec1
opexprlanguage -s hscript floattovec1
opuserdata -n '___Version___' -v '' floattovec1

# Node bind4 (Vop/bind)
opadd -e -n bind bind4
oplocate -x 13.5 -y 6.1150000000000002 bind4
opspareds "" bind4
opparm -V 20.5.522 bind4 parmname ( freq ) parmtype ( float ) parmtypename ( "" ) overridetype ( on ) floatdef ( 0 ) intdef ( 0 ) toggledef ( off ) angledef ( 0 ) logfloatdef ( 0 ) float2def ( 0 0 ) float3def ( 0 0 0 ) vectordef ( 0 0 0 ) normaldef ( 0 0 0 ) pointdef ( 0 0 0 ) directiondef ( 1 0 0 ) float4def ( 0 0 0 0 ) floatm2def ( 1 0 0 1 ) float9def ( 1 0 0 0 1 0 0 0 1 ) float16def ( 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1 ) stringdef ( "" ) filedef ( "" ) imagedef ( "" ) geometrydef ( "" ) colordef ( 0 0 0 ) color4def ( 0 0 0 0 ) bsdfdef ( "" ) dictdef ( "" ) coshaderdef ( "" ) surfacedef ( "" ) displacementdef ( "" ) atmospheredef ( "" ) lightdef ( "" ) lightfilterdef ( "" ) floatadef ( ) intadef ( ) vector2adef ( ) vectoradef ( ) pointadef ( ) normaladef ( ) coloradef ( ) floatm2adef ( ) float4adef ( ) float9adef ( ) float16adef ( ) stringadef ( ) dictadef ( ) coshaderadef ( "" ) structdef ( "" ) useasparmdefiner ( on ) useownexportcontext ( off ) parmuniform ( on ) usebound ( off ) exportparm ( whenconnected ) exportcontext ( cvex )
chlock bind4 -*
chautoscope bind4 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b on -L off -M off -H on -E off bind4
opexprlanguage -s hscript bind4
opuserdata -n '___Version___' -v '20.5.522' bind4

# Node bind5 (Vop/bind)
opadd -e -n bind bind5
oplocate -x 11.3262 -y 8.2043499999999998 bind5
opspareds "" bind5
opparm -V 20.5.522 bind5 parmname ( amp ) parmtype ( float ) parmtypename ( "" ) overridetype ( on ) floatdef ( 0 ) intdef ( 0 ) toggledef ( off ) angledef ( 0 ) logfloatdef ( 0 ) float2def ( 0 0 ) float3def ( 0 0 0 ) vectordef ( 0 0 0 ) normaldef ( 0 0 0 ) pointdef ( 0 0 0 ) directiondef ( 1 0 0 ) float4def ( 0 0 0 0 ) floatm2def ( 1 0 0 1 ) float9def ( 1 0 0 0 1 0 0 0 1 ) float16def ( 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1 ) stringdef ( "" ) filedef ( "" ) imagedef ( "" ) geometrydef ( "" ) colordef ( 0 0 0 ) color4def ( 0 0 0 0 ) bsdfdef ( "" ) dictdef ( "" ) coshaderdef ( "" ) surfacedef ( "" ) displacementdef ( "" ) atmospheredef ( "" ) lightdef ( "" ) lightfilterdef ( "" ) floatadef ( ) intadef ( ) vector2adef ( ) vectoradef ( ) pointadef ( ) normaladef ( ) coloradef ( ) floatm2adef ( ) float4adef ( ) float9adef ( ) float16adef ( ) stringadef ( ) dictadef ( ) coshaderadef ( "" ) structdef ( "" ) useasparmdefiner ( on ) useownexportcontext ( off ) parmuniform ( on ) usebound ( off ) exportparm ( whenconnected ) exportcontext ( cvex )
chlock bind5 -*
chautoscope bind5 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b on -L off -M off -H on -E off bind5
opexprlanguage -s hscript bind5
opuserdata -n '___Version___' -v '20.5.522' bind5

# Node addconst1 (Vop/addconst)
opadd -e -n addconst addconst1
oplocate -x -0.5 -y 7.04 addconst1
opspareds "" addconst1
opparm addconst1 signature ( default ) addconst ( 1 )
chlock addconst1 -*
chautoscope addconst1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off -L off -M off -H on -E off addconst1
opexprlanguage -s hscript addconst1
opuserdata -n '___Version___' -v '' addconst1
opcf ..
opcf ..
opcf ..
opcf ..

# Node vex (/vex)

# Node mat (/mat)
opcf obj
opcf geo1

# Node curvature (Sop/subnet)
opadd -e -n subnet curvature
oplocate -x 1.5 -y 2.8500000000000001 curvature
opspareds '    groupsimple {         name    "Main"         label   "Curvature"          parm {             name    "distance"             label   "Distance"             type    float             default { "0.1" }             range   { 0 10 }             parmtag { "script_callback_language" "python" }         }         parm {             name    "max"             label   "Max"             type    integer             default { "10" }             range   { 0 10 }             parmtag { "script_callback_language" "python" }         }     }      parm {         name    "label1"         baseparm         label   "Input #1 Label"         invisible         export  all     }     parm {         name    "label2"         baseparm         label   "Input #2 Label"         invisible         export  all     }     parm {         name    "label3"         baseparm         label   "Input #3 Label"         invisible         export  all     }     parm {         name    "label4"         baseparm         label   "Input #4 Label"         invisible         export  all     } ' curvature
opparm -V 20.5.522 curvature label1 ( 'Sub-Network Input #1' ) label2 ( 'Sub-Network Input #2' ) label3 ( 'Sub-Network Input #3' ) label4 ( 'Sub-Network Input #4' ) Main ( 0 ) distance ( 0.1 ) max ( 10 )
chlock curvature -*
chautoscope curvature -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off curvature
opexprlanguage -s hscript curvature
opuserdata -n '___Version___' -v '20.5.522' curvature
opcf curvature

# Node output0 (Sop/output)
opadd -e -n output output0
oplocate -x 1.57643 -y 1.2847900000000001 output0
opspareds "" output0
opparm -V 20.5.522 output0 outputidx ( 0 )
chlock output0 -*
chautoscope output0 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off output0
opexprlanguage -s hscript output0
opuserdata -n '___Version___' -v '20.5.522' output0

# Node curvature (Sop/attribwrangle)
opadd -e -n attribwrangle curvature
oplocate -x -0.68276599999999998 -y 4.2967899999999997 curvature
opspareds '    group {         name    "folder1"         label   "Code"          parm {             name    "group"             baseparm             label   "Group"             export  none             bindselector uvselect "Modify Attribs"                 "Select the geometry to affect and press Enter to complete."                 0 1 0xffffffff 0 grouptype 0         }         parm {             name    "grouptype"             baseparm             label   "Group Type"             export  none         }         parm {             name    "class"             baseparm             label   "Run Over"             export  none         }         parm {             name    "vex_numcount"             baseparm             label   "Number Count"             export  none         }         parm {             name    "vex_threadjobsize"             baseparm             label   "Thread Job Size"             export  none         }         groupsimple {             name    "folder_generatedparms_snippet"             label   "Generated Channel Parameters"             grouptag { "sidefx::look" "blank" }              parm {                 name    "Distance"                 label   "Distance"                 type    float                 default { "0" }                 range   { 0 1 }             }             parm {                 name    "Max"                 label   "Max"                 type    integer                 default { "0" }                 range   { 0 10 }             }         }          parm {             name    "snippet"             baseparm             label   "VEXpression"             export  all         }         parm {             name    "exportlist"             baseparm             label   "Attributes to Create"             export  none         }         parm {             name    "vex_strict"             baseparm             label   "Enforce Prototypes"             export  none         }     }      group {         name    "folder1_1"         label   "Bindings"          parm {             name    "autobind"             baseparm             label   "Autobind by Name"             export  none         }         multiparm {             name    "bindings"             label    "Number of Bindings"             baseparm             default 0             parmtag { "autoscope" "0000000000000000" }             parmtag { "multistartoffset" "1" }              parm {                 name    "bindname#"                 baseparm                 label   "Attribute Name"                 export  none             }             parm {                 name    "bindparm#"                 baseparm                 label   "VEX Parameter"                 export  none             }         }          parm {             name    "groupautobind"             baseparm             label   "Autobind Groups by Name"             export  none         }         multiparm {             name    "groupbindings"             label    "Group Bindings"             baseparm             default 0             parmtag { "autoscope" "0000000000000000" }             parmtag { "multistartoffset" "1" }              parm {                 name    "bindgroupname#"                 baseparm                 label   "Group Name"                 export  none             }             parm {                 name    "bindgroupparm#"                 baseparm                 label   "VEX Parameter"                 export  none             }         }          parm {             name    "vex_cwdpath"             baseparm             label   "Evaluation Node Path"             export  none         }         parm {             name    "vex_outputmask"             baseparm             label   "Export Parameters"             export  none         }         parm {             name    "vex_updatenmls"             baseparm             label   "Update Normals If Displaced"             export  none         }         parm {             name    "vex_matchattrib"             baseparm             label   "Attribute to Match"             export  none         }         parm {             name    "vex_inplace"             baseparm             label   "Compute Results In Place"             export  none         }         parm {             name    "vex_selectiongroup"             baseparm             label   "Output Selection Group"             export  none         }         parm {             name    "vex_precision"             baseparm             label   "VEX Precision"             export  none         }     }  ' curvature
opparm curvature  bindings ( 0 ) groupbindings ( 0 )
chblockbegin
chadd -t 0 0 curvature Distance
chkey -t 0 -v 0.10000000000000001 -m 0 -a 0 -A 0 -T a  -F 'ch("../distance")' curvature/Distance
chadd -t 0 0 curvature Max
chkey -t 0 -v 30 -m 0 -a 0 -A 0 -T a  -F 'ch("../max")' curvature/Max
chblockend
opparm curvature folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( point ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( 'int chums [] = nearpoints(0, @P, ch(\'Distance\'), chi(\'Max\'));\n\n@curvature;\n\nforeach (int u; chums) {\n    vector n = point(0, \'N\', u);\n    float  d = dot(@N, n);\n    @curvature += d;\n                       }\n\n@curvature = @curvature / len(chums);\n    \n\n' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto ) folder1 ( 0 0 ) folder_generatedparms_snippet ( 0 ) Distance ( Distance ) Max ( Max )
chlock curvature -*
chautoscope curvature -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off curvature
opexprlanguage -s hscript curvature
opuserdata -n '___Version___' -v '' curvature

# Node N (Sop/attribwrangle)
opadd -e -n attribwrangle N
oplocate -x -0.68276599999999998 -y 5.4262899999999998 N
opspareds "" N
opparm N  bindings ( 0 ) groupbindings ( 0 )
opparm N folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( point ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( '@N = @N;' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto )
chlock N -*
chautoscope N -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off N
opexprlanguage -s hscript N
opuserdata -n '___Version___' -v '' N

# Node fit (Sop/attribwrangle)
opadd -e -n attribwrangle fit
oplocate -x 1.57643 -y 2.4142899999999998 fit
opspareds '    group {         name    "folder1"         label   "Code"          parm {             name    "group"             baseparm             label   "Group"             export  none             bindselector uvselect "Modify Attribs"                 "Select the geometry to affect and press Enter to complete."                 0 1 0xffffffff 0 grouptype 0         }         parm {             name    "grouptype"             baseparm             label   "Group Type"             export  none         }         parm {             name    "class"             baseparm             label   "Run Over"             export  none         }         parm {             name    "vex_numcount"             baseparm             label   "Number Count"             export  none         }         parm {             name    "vex_threadjobsize"             baseparm             label   "Thread Job Size"             export  none         }         groupsimple {             name    "folder_generatedparms_snippet"             label   "Generated Channel Parameters"             grouptag { "sidefx::look" "blank" }          }          parm {             name    "snippet"             baseparm             label   "VEXpression"             export  all         }         parm {             name    "exportlist"             baseparm             label   "Attributes to Create"             export  none         }         parm {             name    "vex_strict"             baseparm             label   "Enforce Prototypes"             export  none         }     }      group {         name    "folder1_1"         label   "Bindings"          parm {             name    "autobind"             baseparm             label   "Autobind by Name"             export  none         }         multiparm {             name    "bindings"             label    "Number of Bindings"             baseparm             default 0             parmtag { "autoscope" "0000000000000000" }             parmtag { "multistartoffset" "1" }              parm {                 name    "bindname#"                 baseparm                 label   "Attribute Name"                 export  none             }             parm {                 name    "bindparm#"                 baseparm                 label   "VEX Parameter"                 export  none             }         }          parm {             name    "groupautobind"             baseparm             label   "Autobind Groups by Name"             export  none         }         multiparm {             name    "groupbindings"             label    "Group Bindings"             baseparm             default 0             parmtag { "autoscope" "0000000000000000" }             parmtag { "multistartoffset" "1" }              parm {                 name    "bindgroupname#"                 baseparm                 label   "Group Name"                 export  none             }             parm {                 name    "bindgroupparm#"                 baseparm                 label   "VEX Parameter"                 export  none             }         }          parm {             name    "vex_cwdpath"             baseparm             label   "Evaluation Node Path"             export  none         }         parm {             name    "vex_outputmask"             baseparm             label   "Export Parameters"             export  none         }         parm {             name    "vex_updatenmls"             baseparm             label   "Update Normals If Displaced"             export  none         }         parm {             name    "vex_matchattrib"             baseparm             label   "Attribute to Match"             export  none         }         parm {             name    "vex_inplace"             baseparm             label   "Compute Results In Place"             export  none         }         parm {             name    "vex_selectiongroup"             baseparm             label   "Output Selection Group"             export  none         }         parm {             name    "vex_precision"             baseparm             label   "VEX Precision"             export  none         }     }  ' fit
opparm fit  bindings ( 0 ) groupbindings ( 0 )
opparm fit folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( point ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( 'float min = detail(1, \'curvature\', 0); float max = detail(2, \'curvature\', 0);\n\n@curvature = fit(@curvature, min, max, 0, 1);' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto ) folder1 ( 0 0 ) folder_generatedparms_snippet ( 0 )
chlock fit -*
chautoscope fit -*
opset -d on -r on -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off fit
opexprlanguage -s hscript fit
opuserdata -n '___Version___' -v '' fit

# Node min (Sop/attribpromote)
opadd -e -n attribpromote min
oplocate -x 1.57643 -y 3.8449900000000001 min
opspareds "" min
opparm -V 20.5.522 min inname ( curvature ) inclass ( point ) outclass ( detail ) usepieceattrib ( off ) pieceattrib ( name ) method ( min ) useoutname ( off ) outname ( "" ) deletein ( on )
chlock min -*
chautoscope min -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off min
opexprlanguage -s hscript min
opuserdata -n '___Version___' -v '20.5.522' min

# Node max (Sop/attribpromote)
opadd -e -n attribpromote max
oplocate -x 3.8356300000000001 -y 3.3931900000000002 max
opspareds "" max
opparm -V 20.5.522 max inname ( curvature ) inclass ( point ) outclass ( detail ) usepieceattrib ( off ) pieceattrib ( name ) method ( max ) useoutname ( off ) outname ( "" ) deletein ( on )
chlock max -*
chautoscope max -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off max
opexprlanguage -s hscript max
opuserdata -n '___Version___' -v '20.5.522' max
oporder -e output0 curvature N fit min max 
opcf ..

# Node gradient (Sop/subnet)
opadd -e -n subnet gradient
oplocate -x 1.5 -y 1.8500000000000001 gradient
opspareds '    groupsimple {         name    "gradient"         label   "Gradient"          parm {             name    "gradient_scalar"             label   "Scalar"             type    string             default { "value" }             parmtag { "script_callback_language" "python" }         }         parm {             name    "sepparm2"             label   "Separator"             type    separator             default { "" }         }         parm {             name    "gradient_distance"             label   "Distance"             type    float             default { "1" }             range   { 0 10 }             parmtag { "script_callback_language" "python" }         }         parm {             name    "gradient_max"             label   "Max"             type    integer             default { "100" }             range   { 0 500 }             parmtag { "script_callback_language" "python" }         }         parm {             name    "sepparm3"             label   "Separator"             type    separator             default { "" }         }         parm {             name    "gradient_direction"             label   "Direction"             type    ordinal             joinnext             default { "0" }             menu {                 "0" "Ascent"                 "1" "Descent"             }             parmtag { "script_callback_language" "python" }         }         parm {             name    "gradient_project"             label   "Project To Normal Plane"             type    toggle             joinnext             default { "on" }             parmtag { "script_callback_language" "python" }         }         parm {             name    "gradient_mask"             label   "Mask By Scalar"             type    toggle             default { "off" }             parmtag { "script_callback_language" "python" }         }     }      parm {         name    "label1"         baseparm         label   "Input #1 Label"         invisible         export  all     }     parm {         name    "label2"         baseparm         label   "Input #2 Label"         invisible         export  all     }     parm {         name    "label3"         baseparm         label   "Input #3 Label"         invisible         export  all     }     parm {         name    "label4"         baseparm         label   "Input #4 Label"         invisible         export  all     } ' gradient
opparm -V 20.5.522 gradient label1 ( 'Sub-Network Input #1' ) label2 ( 'Sub-Network Input #2' ) label3 ( 'Sub-Network Input #3' ) label4 ( 'Sub-Network Input #4' ) gradient ( 0 ) gradient_scalar ( value ) sepparm2 ( ) gradient_distance ( 1 ) gradient_max ( 100 ) sepparm3 ( ) gradient_direction ( 0 ) gradient_project ( on ) gradient_mask ( off )
chlock gradient -*
chautoscope gradient -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off gradient
opexprlanguage -s hscript gradient
opuserdata -n '___Version___' -v '20.5.522' gradient
opcf gradient

# Node output0 (Sop/output)
opadd -e -n output output0
oplocate -x 1.8285499999999999 -y 3.8083200000000001 output0
opspareds "" output0
opparm -V 20.5.522 output0 outputidx ( 0 )
chlock output0 -*
chautoscope output0 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off output0
opexprlanguage -s hscript output0
opuserdata -n '___Version___' -v '20.5.522' output0

# Node gradient (Sop/attribwrangle)
opadd -e -n attribwrangle gradient
oplocate -x 1.8285499999999999 -y 4.9378200000000003 gradient
opspareds '    group {         name    "folder1"         label   "Code"          parm {             name    "group"             baseparm             label   "Group"             export  none             bindselector uvselect "Modify Attribs"                 "Select the geometry to affect and press Enter to complete."                 0 1 0xffffffff 0 grouptype 0         }         parm {             name    "grouptype"             baseparm             label   "Group Type"             export  none         }         parm {             name    "class"             baseparm             label   "Run Over"             export  none         }         parm {             name    "vex_numcount"             baseparm             label   "Number Count"             export  none         }         parm {             name    "vex_threadjobsize"             baseparm             label   "Thread Job Size"             export  none         }         parm {             name    "snippet"             baseparm             label   "VEXpression"             export  all         }         parm {             name    "exportlist"             baseparm             label   "Attributes to Create"             export  none         }         parm {             name    "vex_strict"             baseparm             label   "Enforce Prototypes"             export  none         }     }      group {         name    "folder1_1"         label   "Bindings"          parm {             name    "autobind"             baseparm             label   "Autobind by Name"             export  none         }         multiparm {             name    "bindings"             label    "Number of Bindings"             baseparm             default 0             parmtag { "autoscope" "0000000000000000" }             parmtag { "multistartoffset" "1" }              parm {                 name    "bindname#"                 baseparm                 label   "Attribute Name"                 export  none             }             parm {                 name    "bindparm#"                 baseparm                 label   "VEX Parameter"                 export  none             }         }          parm {             name    "groupautobind"             baseparm             label   "Autobind Groups by Name"             export  none         }         multiparm {             name    "groupbindings"             label    "Group Bindings"             baseparm             default 0             parmtag { "autoscope" "0000000000000000" }             parmtag { "multistartoffset" "1" }              parm {                 name    "bindgroupname#"                 baseparm                 label   "Group Name"                 export  none             }             parm {                 name    "bindgroupparm#"                 baseparm                 label   "VEX Parameter"                 export  none             }         }          parm {             name    "vex_cwdpath"             baseparm             label   "Evaluation Node Path"             export  none         }         parm {             name    "vex_outputmask"             baseparm             label   "Export Parameters"             export  none         }         parm {             name    "vex_updatenmls"             baseparm             label   "Update Normals If Displaced"             export  none         }         parm {             name    "vex_matchattrib"             baseparm             label   "Attribute to Match"             export  none         }         parm {             name    "vex_inplace"             baseparm             label   "Compute Results In Place"             export  none         }         parm {             name    "vex_selectiongroup"             baseparm             label   "Output Selection Group"             export  none         }         parm {             name    "vex_precision"             baseparm             label   "VEX Precision"             export  none         }     }      parm {         name    "Distance"         label   "Distance"         type    float         default { "0" }         range   { 0 1 }     }     parm {         name    "Max"         label   "Max"         type    integer         default { "0" }         range   { 0 10 }     }     parm {         name    "Directionmode"         label   "Directionmode"         type    integer         default { "0" }         range   { 0 10 }     }     parm {         name    "Scalar"         label   "Scalar"         type    string         default { "" }     }     parm {         name    "Vector"         label   "Vector"         type    string         default { "" }     }     parm {         name    "ProjectMode"         label   "Projectmode"         type    integer         default { "0" }         range   { 0 10 }     }     parm {         name    "MultiplyByScalar"         label   "Multiplybyscalar"         type    integer         default { "0" }         range   { 0 10 }     } ' gradient
opparm gradient  bindings ( 0 ) groupbindings ( 0 )
chblockbegin
chadd -t 0 0 gradient Distance
chkey -t 0 -v 1 -m 0 -a 0 -A 0 -T a  -F 'ch("../gradient_distance")' gradient/Distance
chadd -t 0 0 gradient Max
chkey -t 0 -v 500 -m 0 -a 0 -A 0 -T a  -F 'ch("../gradient_max")' gradient/Max
chadd -t 0 0 gradient Directionmode
chkey -t 0 -v 1 -m 0 -a 0 -A 0 -T a  -F 'ch("../gradient_direction")' gradient/Directionmode
chadd -t 0 0 gradient ProjectMode
chkey -t 0 -v 1 -m 0 -a 0 -A 0 -T a  -F 'ch("../gradient_project")' gradient/ProjectMode
chadd -t 0 0 gradient MultiplyByScalar
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F 'ch("../gradient_mask")' gradient/MultiplyByScalar
chblockend
opparm gradient folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( point ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( '// scalar weight, vector direction\nstring inputscalar = chs(\'Scalar\'); float  a = point(0, inputscalar, @ptnum);\nstring inputvector = chs(\'Vector\'); vector b = point(0, inputvector, @ptnum);\n\n// find chumps by proximity\nint chumps [] = nearpoints(0, @P, ch(\'Distance\'), chi(\'Max\'));\n\nv@gradient;\nforeach ( int t; chumps ) {\n    float  chumpscalar = point(0, inputscalar, t);        \n    vector chumpvector = point(0, inputvector, t);\n    float weight     = chumpscalar / a;\n    v@gradient      += ((chumpvector - b) * weight);\n                          }\n\nv@gradient = normalize(v@gradient); \n\n// direction mode, 1 - descent\nint dirmode = chi(\'Directionmode\');\nif ( dirmode == 1 ) v@gradient *= -1;\n\n// project to tangent plane\nint projmode = chi(\'ProjectMode\'); \nif ( projmode == 1 ) {\n    int hasnormal = haspointattrib(0, \'N\');\n    if ( hasnormal == 0 ) error(\'Input does not have a normal attribute. A normal is needed to project to tangent space.\');\n    \n    v@gradient = normalize(v@gradient - ((dot(v@gradient, @N)) * @N));\n    \n    int multmode = chi(\'MultiplyByScalar\');\n    if ( multmode == 1 ) v@gradient *= a;    \n                     }\n\n' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto ) folder1 ( 0 0 ) Distance ( Distance ) Max ( Max ) Directionmode ( Directionmode ) Scalar ( '`chs("../gradient_scalar")`' ) Vector ( P ) ProjectMode ( ProjectMode ) MultiplyByScalar ( MultiplyByScalar )
chlock gradient -*
chautoscope gradient -*
opset -d on -r on -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off gradient
opexprlanguage -s hscript gradient
opuserdata -n '___Version___' -v '' gradient
oporder -e output0 gradient 
opcf ..

# Node attributefunction (Sop/subnet)
opadd -e -n subnet attributefunction
oplocate -x 1.5 -y -0.14999999999999999 attributefunction
opspareds '    groupsimple {         name    "IO"         label   "IO"          parm {             name    "Input"             label   "Input"             type    string             default { "x" }             parmtag { "autoscope" "0000000000000000" }             parmtag { "script_callback_language" "python" }         }         parm {             name    "Output"             label   "Output"             type    string             default { "" }             parmtag { "autoscope" "0000000000000000" }             parmtag { "script_callback_language" "python" }         }     }      groupsimple {         name    "functions"         label   "Functions"          parm {             name    "preset"             label   "Preset"             type    ordinal             default { "0" }             menu {                 "0" "Sine"             }             parmtag { "script_callback_language" "python" }         }         parm {             name    "sepparm"             label   "Separator"             type    separator             default { "" }         }         groupsimple {             name    "sine"             label   "Sine"              parm {                 name    "amp"                 label   "Amp"                 type    float                 default { "1" }                 range   { 0 1 }                 parmtag { "autoscope" "0000000000000000" }                 parmtag { "script_callback_language" "python" }             }             parm {                 name    "period"                 label   "Period"                 type    float                 default { "1" }                 range   { 0 1 }                 parmtag { "autoscope" "0000000000000000" }                 parmtag { "script_callback_language" "python" }             }             parm {                 name    "phase"                 label   "Phase"                 type    integer                 default { "0" }                 range   { 0 360 }                 parmtag { "autoscope" "1000000000000000" }                 parmtag { "script_callback_language" "python" }             }         }      }      parm {         name    "label1"         baseparm         label   "Input #1 Label"         invisible         export  all     }     parm {         name    "label2"         baseparm         label   "Input #2 Label"         invisible         export  all     }     parm {         name    "label3"         baseparm         label   "Input #3 Label"         invisible         export  all     }     parm {         name    "label4"         baseparm         label   "Input #4 Label"         invisible         export  all     } ' attributefunction
opparm -V 20.5.522 attributefunction label1 ( 'Sub-Network Input #1' ) label2 ( 'Sub-Network Input #2' ) label3 ( 'Sub-Network Input #3' ) label4 ( 'Sub-Network Input #4' ) IO ( 0 ) Input ( x ) Output ( "" ) functions ( 0 ) preset ( 0 ) sepparm ( ) sine ( 0 ) amp ( 1 ) period ( 1 ) phase ( 0 )
chlock attributefunction -*
chautoscope attributefunction -* +phase
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off attributefunction
opexprlanguage -s hscript attributefunction
opuserdata -n '___Version___' -v '20.5.522' attributefunction
opcf attributefunction

# Node output0 (Sop/output)
opadd -e -n output output0
oplocate -x 1.91551 -y 3.88883 output0
opspareds "" output0
opparm -V 20.5.522 output0 outputidx ( 0 )
chlock output0 -*
chautoscope output0 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off output0
opexprlanguage -s hscript output0
opuserdata -n '___Version___' -v '20.5.522' output0

# Node sine (Sop/attribwrangle)
opadd -e -n attribwrangle sine
oplocate -x 1.91551 -y 5.0183299999999997 sine
opspareds '    group {         name    "folder1"         label   "Code"          parm {             name    "group"             baseparm             label   "Group"             export  none             bindselector uvselect "Modify Attribs"                 "Select the geometry to affect and press Enter to complete."                 0 1 0xffffffff 0 grouptype 0         }         parm {             name    "grouptype"             baseparm             label   "Group Type"             export  none         }         parm {             name    "class"             baseparm             label   "Run Over"             export  none         }         parm {             name    "vex_numcount"             baseparm             label   "Number Count"             export  none         }         parm {             name    "vex_threadjobsize"             baseparm             label   "Thread Job Size"             export  none         }         parm {             name    "snippet"             baseparm             label   "VEXpression"             export  all         }         parm {             name    "exportlist"             baseparm             label   "Attributes to Create"             export  none         }         parm {             name    "vex_strict"             baseparm             label   "Enforce Prototypes"             export  none         }     }      group {         name    "folder1_1"         label   "Bindings"          parm {             name    "autobind"             baseparm             label   "Autobind by Name"             export  none         }         multiparm {             name    "bindings"             label    "Number of Bindings"             baseparm             default 0             parmtag { "autoscope" "0000000000000000" }             parmtag { "multistartoffset" "1" }              parm {                 name    "bindname#"                 baseparm                 label   "Attribute Name"                 export  none             }             parm {                 name    "bindparm#"                 baseparm                 label   "VEX Parameter"                 export  none             }         }          parm {             name    "groupautobind"             baseparm             label   "Autobind Groups by Name"             export  none         }         multiparm {             name    "groupbindings"             label    "Group Bindings"             baseparm             default 0             parmtag { "autoscope" "0000000000000000" }             parmtag { "multistartoffset" "1" }              parm {                 name    "bindgroupname#"                 baseparm                 label   "Group Name"                 export  none             }             parm {                 name    "bindgroupparm#"                 baseparm                 label   "VEX Parameter"                 export  none             }         }          parm {             name    "vex_cwdpath"             baseparm             label   "Evaluation Node Path"             export  none         }         parm {             name    "vex_outputmask"             baseparm             label   "Export Parameters"             export  none         }         parm {             name    "vex_updatenmls"             baseparm             label   "Update Normals If Displaced"             export  none         }         parm {             name    "vex_matchattrib"             baseparm             label   "Attribute to Match"             export  none         }         parm {             name    "vex_inplace"             baseparm             label   "Compute Results In Place"             export  none         }         parm {             name    "vex_selectiongroup"             baseparm             label   "Output Selection Group"             export  none         }         parm {             name    "vex_precision"             baseparm             label   "VEX Precision"             export  none         }     }      parm {         name    "Input"         label   "Input"         type    string         default { "" }     }     parm {         name    "Output"         label   "Output"         type    string         default { "" }     }     parm {         name    "amp"         label   "Amp"         type    float         default { "0" }         range   { 0 1 }     }     parm {         name    "period"         label   "Period"         type    float         default { "0" }         range   { 0 1 }     }     parm {         name    "phase"         label   "Phase"         type    integer         default { "0" }         range   { 0 360 }     } ' sine
opparm sine  bindings ( 0 ) groupbindings ( 0 )
chblockbegin
chadd -t -0.041666666666666664 -0.041666666666666664 sine Input
chkey -t -0.041666666666666664 -v 0 -m 0 -a 0 -A 0 -T a  -F 'chs("../Input")' sine/Input
chadd -t -0.041666666666666664 -0.041666666666666664 sine Output
chkey -t -0.041666666666666664 -v 0 -m 0 -a 0 -A 0 -T a  -F 'chs("../Output")' sine/Output
chadd -t -0.041666666666666664 -0.041666666666666664 sine amp
chkey -t -0.041666666666666664 -v 1 -m 0 -a 0 -A 0 -T a  -F 'ch("../amp")' sine/amp
chadd -t -0.041666666666666664 -0.041666666666666664 sine period
chkey -t -0.041666666666666664 -v 1 -m 0 -a 0 -A 0 -T a  -F 'ch("../period")' sine/period
chadd -t -0.041666666666666664 -0.041666666666666664 sine phase
chkey -t -0.041666666666666664 -v 0 -m 0 -a 0 -A 0 -T a  -F 'ch("../phase")' sine/phase
chblockend
opparm sine folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( point ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( 'float dum = point(0,chs(\'Input\'),@ptnum);\ndum = radians(fit(dum,0,1,0,360));\n\nfloat amp    = ch(\'amp\');\nfloat period = ch(\'period\');\nfloat phase  = ch(\'phase\');\n\ndum = amp * sin( period * dum + radians(phase));\n//@P.y += a;\n\nsetpointattrib(0,chs(\'Output\'),@ptnum,dum,\'set\');' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto ) folder1 ( 0 0 ) Input ( Input ) Output ( Output ) amp ( amp ) period ( period ) phase ( phase )
chlock sine -*
chautoscope sine -* +phase
opset -d on -r on -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off sine
opexprlanguage -s hscript sine
opuserdata -n '___Version___' -v '' sine
opuserdata -n 'nodeshape' -v 'chevron_down' sine
oporder -e output0 sine 
opcf ..

# Node cluster (Sop/subnet)
opadd -e -n subnet cluster
oplocate -x 5.5 -y 2.8500000000000001 cluster
opspareds '    groupsimple {         name    "Main"         label   "Cluster"          parm {             name    "clusters"             label   "Clusters"             type    integer             default { "10" }             range   { 1 20 }             parmtag { "script_callback_language" "python" }         }         parm {             name    "iterations"             label   "Iterations"             type    integer             default { "50" }             range   { 0 10 }             parmtag { "script_callback_language" "python" }         }     }      parm {         name    "label5"         label   "label5"         type    string         invisible         default { "Sub-Network Input #1" }         export  all     }     parm {         name    "label1"         baseparm         label   "Input #1 Label"         invisible         export  all     }     parm {         name    "label2"         baseparm         label   "Input #2 Label"         invisible         export  all     }     parm {         name    "label3"         baseparm         label   "Input #3 Label"         invisible         export  all     }     parm {         name    "label4"         baseparm         label   "Input #4 Label"         invisible         export  all     } ' cluster
opparm -V 20.5.522 cluster label1 ( 'Sub-Network Input #1' ) label2 ( 'Sub-Network Input #2' ) label3 ( 'Sub-Network Input #3' ) label4 ( 'Sub-Network Input #4' ) Main ( 0 ) clusters ( 10 ) iterations ( 50 ) label5 ( 'Sub-Network Input #1' )
chlock cluster -*
chautoscope cluster -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off cluster
opexprlanguage -s hscript cluster
opuserdata -n '___Version___' -v '20.5.522' cluster
opcf cluster

# Node output0 (Sop/output)
opadd -e -n output output0
oplocate -x -1.2492000000000001 -y -0.80588199999999999 output0
opspareds "" output0
opparm -V 20.5.522 output0 outputidx ( 0 )
chlock output0 -*
chautoscope output0 -*
opset -d on -r on -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off output0
opexprlanguage -s hscript output0
opuserdata -n '___Version___' -v '20.5.522' output0

# Node attribwrangle9 (Sop/attribwrangle)
opadd -e -n attribwrangle attribwrangle9
oplocate -x 5.1462000000000003 -y 14.854900000000001 attribwrangle9
opspareds "" attribwrangle9
opparm attribwrangle9  bindings ( 0 ) groupbindings ( 0 )
opparm attribwrangle9 folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( detail ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( 'addpoint(0,vector(point(1,\'P\',detail(2,\'iteration\',0))));' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto )
chlock attribwrangle9 -*
chautoscope attribwrangle9 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off attribwrangle9
opexprlanguage -s hscript attribwrangle9
opuserdata -n '___Version___' -v '' attribwrangle9

# Node attribwrangle14 (Sop/attribwrangle)
opadd -e -n attribwrangle attribwrangle14
oplocate -x 2.7462 -y 9.4421999999999997 attribwrangle14
opspareds "" attribwrangle14
opparm attribwrangle14  bindings ( 0 ) groupbindings ( 0 )
opparm attribwrangle14 folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( point ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( 'i@cluster = point(1,\'cluster\',nearpoint(1,@P));' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto )
chlock attribwrangle14 -*
chautoscope attribwrangle14 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off attribwrangle14
opexprlanguage -s hscript attribwrangle14
opuserdata -n '___Version___' -v '' attribwrangle14

# Node init_clusters1 (Sop/attribwrangle)
opadd -e -n attribwrangle init_clusters1
oplocate -x 5.1462000000000003 -y 11.605700000000001 init_clusters1
opspareds "" init_clusters1
opparm init_clusters1  bindings ( 0 ) groupbindings ( 0 )
opparm init_clusters1 folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( point ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( 'i@cluster = @ptnum;' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto )
chlock init_clusters1 -*
chautoscope init_clusters1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off init_clusters1
opexprlanguage -s hscript init_clusters1
opuserdata -n '___Version___' -v '' init_clusters1

# Node tag_cluster1 (Sop/attribwrangle)
opadd -e -n attribwrangle tag_cluster1
oplocate -x 2.7462 -y 3.0215999999999998 tag_cluster1
opspareds "" tag_cluster1
opparm tag_cluster1  bindings ( 0 ) groupbindings ( 0 )
opparm tag_cluster1 folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( point ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( 'i@cluster = @ptnum;' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto )
chlock tag_cluster1 -*
chautoscope tag_cluster1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off tag_cluster1
opexprlanguage -s hscript tag_cluster1
opuserdata -n '___Version___' -v '' tag_cluster1

# Node foreach_end4 (Sop/block_end)
opadd -e -n block_end foreach_end4
oplocate -x 5.1508000000000003 -y 13.7706 foreach_end4
opspareds "" foreach_end4
chblockbegin
chadd -t 41.666666666666664 41.666666666666664 foreach_end4 iterations
chkey -t 41.666666666666664 -v 10 -m 0 -a 0 -A 0 -T a  -F 'ch("../clusters")' foreach_end4/iterations
chblockend
opparm -V 20.5.522 foreach_end4 itermethod ( count ) method ( merge ) iterations ( iterations ) startvalue ( 1 ) increment ( 1 ) class ( point ) useattrib ( on ) attrib ( "" ) usemaxiter ( off ) maxiter ( 10 ) blockpath ( ../foreach_begin5 ) templatepath ( ../foreach_begin5 ) resetcookpass ( 0 ) dosinglepass ( off ) singlepass ( 0 ) stopcondition ( 0 ) multithread ( on )
chlock foreach_end4 -*
chautoscope foreach_end4 -*
opcolor -c 0.75 0.40000000596046448 0 foreach_end4
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F off -c on -e on -b off foreach_end4
opexprlanguage -s hscript foreach_end4
opuserdata -n '___Version___' -v '20.5.522' foreach_end4

# Node foreach_begin5 (Sop/block_begin)
opadd -e -n block_begin foreach_begin5
oplocate -x 5.1508000000000003 -y 15.934799999999999 foreach_begin5
opspareds "" foreach_begin5
opparm -V 20.5.522 foreach_begin5 method ( input ) blockpath ( ../foreach_end4 ) resetcookpass ( 0 ) createmetablock ( 0 ) label1 ( 'iteration, numiterations, value, ivalue' )
chlock foreach_begin5 -*
chautoscope foreach_begin5 -*
opcolor -c 0.75 0.40000000596046448 0 foreach_begin5
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F off -c on -e on -b off foreach_begin5
opexprlanguage -s hscript foreach_begin5
opuserdata -n '___Version___' -v '20.5.522' foreach_begin5

# Node foreach_count3 (Sop/block_begin)
opadd -e -n block_begin foreach_count3
oplocate -x 7.5507999999999997 -y 15.934799999999999 foreach_count3
opspareds "" foreach_count3
opparm -V 20.5.522 foreach_count3 method ( metadata ) blockpath ( ../foreach_end4 ) resetcookpass ( 0 ) createmetablock ( 0 ) label1 ( 'iteration, numiterations, value, ivalue' )
chlock foreach_count3 -*
chautoscope foreach_count3 -*
opcolor -c 0.75 0.40000000596046448 0 foreach_count3
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F off -c on -e on -b off foreach_count3
opexprlanguage -s hscript foreach_count3
opuserdata -n '___Version___' -v '20.5.522' foreach_count3

# Node compile_end3 (Sop/compile_end)
opadd -e -n compile_end compile_end3
oplocate -x 5.1508000000000003 -y 12.684900000000001 compile_end3
opspareds "" compile_end3
opparm -V 20.5.522 compile_end3 docompile ( on ) unload ( always ) primarypath ( "" ) forcerecompile ( 0 ) delayillegal ( off ) fallback ( off )
chlock compile_end3 -*
chautoscope compile_end3 -*
opcolor -c 0.75 0.75 0 compile_end3
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F off -c on -e on -b off compile_end3
opexprlanguage -s hscript compile_end3
opuserdata -n '___Version___' -v '20.5.522' compile_end3

# Node compile_begin3 (Sop/compile_begin)
opadd -e -n compile_begin compile_begin3
oplocate -x 5.1508000000000003 -y 17.020499999999998 compile_begin3
opspareds "" compile_begin3
opparm -V 20.5.522 compile_begin3 blockpath ( ../compile_end3 ) name ( "" ) optional ( off ) createbeginblock ( 0 )
chlock compile_begin3 -*
chautoscope compile_begin3 -*
opcolor -c 0.75 0.75 0 compile_begin3
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F off -c on -e on -b off compile_begin3
opexprlanguage -s hscript compile_begin3
opuserdata -n '___Version___' -v '20.5.522' compile_begin3

# Node foreach_end5 (Sop/block_end)
opadd -e -n block_end foreach_end5
oplocate -x 2.7507999999999999 -y 5.1864999999999997 foreach_end5
opspareds "" foreach_end5
opparm -V 20.5.522 foreach_end5 itermethod ( pieces ) method ( merge ) iterations ( 10 ) startvalue ( 1 ) increment ( 1 ) class ( point ) useattrib ( on ) attrib ( cluster ) usemaxiter ( off ) maxiter ( 10 ) blockpath ( ../foreach_begin6 ) templatepath ( ../foreach_begin6 ) resetcookpass ( 0 ) dosinglepass ( off ) singlepass ( 0 ) stopcondition ( 0 ) multithread ( on )
chlock foreach_end5 -*
chautoscope foreach_end5 -*
opcolor -c 0.75 0.40000000596046448 0 foreach_end5
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F off -c on -e on -b off foreach_end5
opexprlanguage -s hscript foreach_end5
opuserdata -n '___Version___' -v '20.5.522' foreach_end5

# Node foreach_begin6 (Sop/block_begin)
opadd -e -n block_begin foreach_begin6
oplocate -x 2.7507999999999999 -y 7.2728999999999999 foreach_begin6
opspareds "" foreach_begin6
opparm -V 20.5.522 foreach_begin6 method ( piece ) blockpath ( ../foreach_end5 ) resetcookpass ( 0 ) createmetablock ( 0 ) label1 ( 'iteration, numiterations, value, ivalue' )
chlock foreach_begin6 -*
chautoscope foreach_begin6 -*
opcolor -c 0.75 0.40000000596046448 0 foreach_begin6
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F off -c on -e on -b off foreach_begin6
opexprlanguage -s hscript foreach_begin6
opuserdata -n '___Version___' -v '20.5.522' foreach_begin6

# Node extractcentroid2 (Sop/extractcentroid)
opadd -e -n extractcentroid extractcentroid2
oplocate -x 2.7492000000000001 -y 6.2328999999999999 extractcentroid2
opspareds "" extractcentroid2
opparm -V 20.5.522 extractcentroid2 partitiontype ( detail ) pieceattrib ( "" ) class ( prim ) method ( com ) output ( points ) centroidattrib ( centroid ) transferattributes ( "" ) transfergroups ( "" )
chlock extractcentroid2 -*
chautoscope extractcentroid2 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off extractcentroid2
opexprlanguage -s hscript extractcentroid2
opuserdata -n '___Version___' -v '20.5.522' extractcentroid2

# Node compile_end4 (Sop/compile_end)
opadd -e -n compile_end compile_end4
oplocate -x 2.7507999999999999 -y 4.1007999999999996 compile_end4
opspareds "" compile_end4
opparm -V 20.5.522 compile_end4 docompile ( on ) unload ( always ) primarypath ( "" ) forcerecompile ( 0 ) delayillegal ( off ) fallback ( off )
chlock compile_end4 -*
chautoscope compile_end4 -*
opcolor -c 0.75 0.75 0 compile_end4
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F off -c on -e on -b off compile_end4
opexprlanguage -s hscript compile_end4
opuserdata -n '___Version___' -v '20.5.522' compile_end4

# Node compile_begin4 (Sop/compile_begin)
opadd -e -n compile_begin compile_begin4
oplocate -x 2.7507999999999999 -y 8.3585999999999991 compile_begin4
opspareds "" compile_begin4
opparm -V 20.5.522 compile_begin4 blockpath ( ../compile_end4 ) name ( "" ) optional ( off ) createbeginblock ( 0 )
chlock compile_begin4 -*
chautoscope compile_begin4 -*
opcolor -c 0.75 0.75 0 compile_begin4
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F off -c on -e on -b off compile_begin4
opexprlanguage -s hscript compile_begin4
opuserdata -n '___Version___' -v '20.5.522' compile_begin4

# Node foreach_end6 (Sop/block_end)
opadd -e -n block_end foreach_end6
oplocate -x 2.7507999999999999 -y 1.9373 foreach_end6
opspareds "" foreach_end6
chblockbegin
chadd -t 41.666666666666664 41.666666666666664 foreach_end6 iterations
chkey -t 41.666666666666664 -v 35 -m 0 -a 0 -A 0 -T a  -F 'ch("../iterations")' foreach_end6/iterations
chblockend
opparm -V 20.5.522 foreach_end6 itermethod ( count ) method ( feedback ) iterations ( iterations ) startvalue ( 1 ) increment ( 1 ) class ( point ) useattrib ( on ) attrib ( "" ) usemaxiter ( off ) maxiter ( 10 ) blockpath ( ../foreach_begin7 ) templatepath ( ../foreach_begin7 ) resetcookpass ( 0 ) dosinglepass ( off ) singlepass ( 0 ) stopcondition ( 0 ) multithread ( off )
chlock foreach_end6 -*
chautoscope foreach_end6 -*
opcolor -c 0.75 0.40000000596046448 0 foreach_end6
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F off -c on -e on -b off foreach_end6
opexprlanguage -s hscript foreach_end6
opuserdata -n '___Version___' -v '20.5.522' foreach_end6

# Node foreach_begin7 (Sop/block_begin)
opadd -e -n block_begin foreach_begin7
oplocate -x 2.7507999999999999 -y 10.5221 foreach_begin7
opspareds "" foreach_begin7
opparm -V 20.5.522 foreach_begin7 method ( input ) blockpath ( ../foreach_end6 ) resetcookpass ( 0 ) createmetablock ( 0 ) label1 ( 'iteration, numiterations, value, ivalue' )
chlock foreach_begin7 -*
chautoscope foreach_begin7 -*
opcolor -c 0.75 0.40000000596046448 0 foreach_begin7
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F off -c on -e on -b off foreach_begin7
opexprlanguage -s hscript foreach_begin7
opuserdata -n '___Version___' -v '20.5.522' foreach_begin7

# Node foreach_begin8 (Sop/block_begin)
opadd -e -n block_begin foreach_begin8
oplocate -x 5.1508000000000003 -y 10.5221 foreach_begin8
opspareds "" foreach_begin8
opparm -V 20.5.522 foreach_begin8 method ( feedback ) blockpath ( ../foreach_end6 ) resetcookpass ( 0 ) createmetablock ( 0 ) label1 ( 'iteration, numiterations, value, ivalue' )
chlock foreach_begin8 -*
chautoscope foreach_begin8 -*
opcolor -c 0.75 0.40000000596046448 0 foreach_begin8
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F off -c on -e on -b off foreach_begin8
opexprlanguage -s hscript foreach_begin8
opuserdata -n '___Version___' -v '20.5.522' foreach_begin8

# Node attribwrangle1 (Sop/attribwrangle)
opadd -e -n attribwrangle attribwrangle1
oplocate -x -1.2538 -y 0.93985399999999997 attribwrangle1
opspareds "" attribwrangle1
opparm attribwrangle1  bindings ( 0 ) groupbindings ( 0 )
opparm attribwrangle1 folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( point ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( 'int t = nearpoint(1, @P); i@cluster = point(1, \'cluster\', t);' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto )
chlock attribwrangle1 -*
chautoscope attribwrangle1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off attribwrangle1
opexprlanguage -s hscript attribwrangle1
opuserdata -n '___Version___' -v '' attribwrangle1
opuserdata -n '___toolcount___' -v '1' attribwrangle1
opuserdata -n '___toolid___' -v 'generic_delete' attribwrangle1

# Node color1 (Sop/color)
opadd -e -n color color1
oplocate -x -1.2507999999999999 -y -0.0591456 color1
opspareds "" color1
opparm color1  ramp ( 2 )
opparm color1 group ( "" ) grouptype ( guess ) deleteallcolorattribs ( off ) enable ( on ) class ( 2 ) colortype ( 4 ) color ( 1 1 1 ) seed ( 0 ) rampattribute ( cluster ) ramprange ( 0 1 ) ramp ( 2 ) ramp1pos ( 0 ) ramp1c ( 0 0 0 ) ramp1interp ( linear ) ramp2pos ( 1 ) ramp2c ( 1 1 1 ) ramp2interp ( linear )
chlock color1 -*
chautoscope color1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off color1
opexprlanguage -s hscript color1
opuserdata -n '___Version___' -v '' color1
opuserdata -n '___toolcount___' -v '2' color1
opuserdata -n '___toolid___' -v 'sop_color' color1

# Node output1 (Sop/output)
opadd -e -n output output1
oplocate -x 2.7507999999999999 -y -0.80588199999999999 output1
opspareds "" output1
opparm -V 20.5.522 output1 outputidx ( 1 )
chlock output1 -*
chautoscope output1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off output1
opexprlanguage -s hscript output1
opuserdata -n '___Version___' -v '20.5.522' output1
oporder -e output0 attribwrangle9 attribwrangle14 init_clusters1 tag_cluster1 foreach_end4 foreach_begin5 foreach_count3 compile_end3 compile_begin3 foreach_end5 foreach_begin6 extractcentroid2 compile_end4 compile_begin4 foreach_end6 foreach_begin7 foreach_begin8 attribwrangle1 color1 output1 
opcf ..

# Node curvefromanim (Sop/subnet)
opadd -e -n subnet curvefromanim
oplocate -x 5.5 -y 0.84999999999999998 curvefromanim
opspareds '    groupsimple {         name    "main"         label   "Animation Curve"          parm {             name    "start"             label   "Start"             type    integer             joinnext             default { "1" }             range   { 0 10 }             parmtag { "script_callback_language" "python" }         }         parm {             name    "end"             label   "End"             type    integer             default { "120" }             range   { 0 10 }             parmtag { "script_callback_language" "python" }         }         parm {             name    "segments"             label   "Segments"             type    float             default { "100" }             range   { 0 1 }             parmtag { "script_callback_language" "python" }         }         parm {             name    "blast"             label   "Blast Out Of Bound"             type    toggle             joinnext             default { "on" }             parmtag { "script_callback_language" "python" }         }         parm {             name    "boundpad"             label   "Bound Pad"             type    float             default { "0.02" }             disablewhen "{ blast == 0 }"             range   { 0 10 }             parmtag { "script_callback_language" "python" }         }         parm {             name    "snap"             label   "Snap To Object"             type    toggle             default { "on" }             parmtag { "script_callback_language" "python" }         }     }      parm {         name    "label1"         baseparm         label   "Input #1 Label"         invisible         export  all     }     parm {         name    "label2"         baseparm         label   "Input #2 Label"         invisible         export  all     }     parm {         name    "label3"         baseparm         label   "Input #3 Label"         invisible         export  all     }     parm {         name    "label4"         baseparm         label   "Input #4 Label"         invisible         export  all     } ' curvefromanim
opparm -V 20.5.522 curvefromanim label1 ( 'Sub-Network Input #1' ) label2 ( 'Sub-Network Input #2' ) label3 ( 'Sub-Network Input #3' ) label4 ( 'Sub-Network Input #4' ) main ( 0 ) start ( 1 ) end ( 120 ) segments ( 100 ) blast ( on ) boundpad ( 0.02 ) snap ( on )
chlock curvefromanim -*
chautoscope curvefromanim -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off curvefromanim
opexprlanguage -s hscript curvefromanim
opuserdata -n '___Version___' -v '20.5.522' curvefromanim
opcf curvefromanim

# Node output0 (Sop/output)
opadd -e -n output output0
oplocate -x 6.3010599999999997 -y -0.96440300000000001 output0
opspareds "" output0
opparm -V 20.5.522 output0 outputidx ( 0 )
chlock output0 -*
chautoscope output0 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off output0
opexprlanguage -s hscript output0
opuserdata -n '___Version___' -v '20.5.522' output0

# Node extractcentroid2 (Sop/extractcentroid)
opadd -e -n extractcentroid extractcentroid2
oplocate -x 3.0534599999999998 -y 7.5445000000000002 extractcentroid2
opspareds "" extractcentroid2
opparm -V 20.5.522 extractcentroid2 partitiontype ( pieces ) pieceattrib ( class ) class ( prim ) method ( com ) output ( points ) centroidattrib ( centroid ) transferattributes ( class ) transfergroups ( "" )
chlock extractcentroid2 -*
chautoscope extractcentroid2 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off extractcentroid2
opexprlanguage -s hscript extractcentroid2
opuserdata -n '___Version___' -v '20.5.522' extractcentroid2

# Node solver1 (Sop/solver)
opadd -e -n solver solver1
oplocate -x 3.0534599999999998 -y 6.415 solver1
opspareds "" solver1
chblockbegin
chadd -t 0 0 solver1 startframe
chkey -t 0 -v 1 -m 0 -a 0 -A 0 -T a  -F 'ch("../start")' solver1/startframe
chblockend
opparm solver1 resimulate ( 0 ) useinitialsop ( off ) initialsop ( "" ) startframe ( startframe ) substep ( 1 ) cacheenabled ( on ) cachetodisk ( off ) cachemaxsize ( 5000 )
chlock solver1 -*
chautoscope solver1 -*
opcolor -c 0 0 0 solver1
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F off -c on -e on -b off solver1
opexprlanguage -s hscript solver1
opuserdata -n '___Version___' -v '' solver1

# Editable subnode
opcf solver1/d

# Node s (Dop/sopsolver)
opadd -e -n sopsolver s
oplocate -x 1.88226 -y 0.51761800000000002 s
opspareds "" s
opparm s  numinputs ( 0 ) numoutputs ( 0 ) numstamps ( 0 )
opparm -V 20.5.522 s parmop_usesoppath ( default ) usesoppath ( off ) parmop_soppath ( default ) soppath ( "" ) parmop_datapath ( default ) datapath ( Geometry ) parmop_doinvoke ( default ) doinvoke ( off ) parmop_primaryinputname ( default ) primaryinputname ( data ) parmop_numinputs ( default ) numinputs ( 0 ) parmop_numoutputs ( default ) numoutputs ( 0 ) parmop_transformsopoutput ( default ) transformsopoutput ( on ) parmop_solveinitframe ( default ) solveinitframe ( on ) parmop_numstamps ( default ) numstamps ( 0 ) parmop_usetimestep ( default ) usetimestep ( on ) parmop_timescale ( default ) timescale ( 1 ) defaultparmop ( initial ) addaffectors ( on ) group ( * ) dataname ( '$OS' ) uniquedataname ( on ) solverperobject ( off )
chlock s -*
chautoscope s -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 s
opset -d on -r off -h off -f off -y off -t off -l off -s off -u off -F off -c on -e on -b off s
opexprlanguage -s hscript s
opuserdata -n '___Version___' -v '20.5.522' s
opcf s

# Node Input_5 (Sop/object_merge)
opadd -e -n object_merge Input_5
oplocate -x 0 -y 0 Input_5
opspareds "" Input_5
opparm Input_5  numobj ( 1 )
opparm -V 20.5.522 Input_5 numobj ( 1 ) _separator ( ) xformtype ( object ) xformpath ( "" ) invertxform ( off ) createptgroups ( off ) ptgroupprefix ( _ptgrp_ ) createprimgroups ( off ) primgroupprefix ( _primgrp_ ) verbosegroups ( off ) suffixfirstgroup ( on ) createptstring ( off ) createprimstring ( off ) pathattrib ( objname ) pack ( off ) pivot ( centroid ) viewportlod ( full ) addpath ( on ) enable1 ( on ) objpath1 ( "" ) group1 ( "" ) expand1 ( off )
chlock Input_5 -*
chautoscope Input_5 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off Input_5
opexprlanguage -s hscript Input_5
opuserdata -n '___Version___' -v '20.5.522' Input_5

# Node Input_6 (Sop/object_merge)
opadd -e -n object_merge Input_6
oplocate -x 0 -y 0 Input_6
opspareds "" Input_6
opparm Input_6  numobj ( 1 )
opparm -V 20.5.522 Input_6 numobj ( 1 ) _separator ( ) xformtype ( object ) xformpath ( "" ) invertxform ( off ) createptgroups ( off ) ptgroupprefix ( _ptgrp_ ) createprimgroups ( off ) primgroupprefix ( _primgrp_ ) verbosegroups ( off ) suffixfirstgroup ( on ) createptstring ( off ) createprimstring ( off ) pathattrib ( objname ) pack ( off ) pivot ( centroid ) viewportlod ( full ) addpath ( on ) enable1 ( on ) objpath1 ( "" ) group1 ( "" ) expand1 ( off )
chlock Input_6 -*
chautoscope Input_6 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off Input_6
opexprlanguage -s hscript Input_6
opuserdata -n '___Version___' -v '20.5.522' Input_6

# Node Input_7 (Sop/object_merge)
opadd -e -n object_merge Input_7
oplocate -x 0 -y 0 Input_7
opspareds "" Input_7
opparm Input_7  numobj ( 1 )
opparm -V 20.5.522 Input_7 numobj ( 1 ) _separator ( ) xformtype ( object ) xformpath ( "" ) invertxform ( off ) createptgroups ( off ) ptgroupprefix ( _ptgrp_ ) createprimgroups ( off ) primgroupprefix ( _primgrp_ ) verbosegroups ( off ) suffixfirstgroup ( on ) createptstring ( off ) createprimstring ( off ) pathattrib ( objname ) pack ( off ) pivot ( centroid ) viewportlod ( full ) addpath ( on ) enable1 ( on ) objpath1 ( "" ) group1 ( "" ) expand1 ( off )
chlock Input_7 -*
chautoscope Input_7 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off Input_7
opexprlanguage -s hscript Input_7
opuserdata -n '___Version___' -v '20.5.522' Input_7

# Node Input_8 (Sop/object_merge)
opadd -e -n object_merge Input_8
oplocate -x 0 -y 0 Input_8
opspareds "" Input_8
opparm Input_8  numobj ( 1 )
opparm -V 20.5.522 Input_8 numobj ( 1 ) _separator ( ) xformtype ( object ) xformpath ( "" ) invertxform ( off ) createptgroups ( off ) ptgroupprefix ( _ptgrp_ ) createprimgroups ( off ) primgroupprefix ( _primgrp_ ) verbosegroups ( off ) suffixfirstgroup ( on ) createptstring ( off ) createprimstring ( off ) pathattrib ( objname ) pack ( off ) pivot ( centroid ) viewportlod ( full ) addpath ( on ) enable1 ( on ) objpath1 ( "" ) group1 ( "" ) expand1 ( off )
chlock Input_8 -*
chautoscope Input_8 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off Input_8
opexprlanguage -s hscript Input_8
opuserdata -n '___Version___' -v '20.5.522' Input_8

# Node Prev_Frame1 (Sop/dopimport::2.0)
opadd -e -n dopimport::2.0 Prev_Frame1
oplocate -x 0 -y 0 Prev_Frame1
opspareds "" Prev_Frame1
chblockbegin
chadd -t 0 0 Prev_Frame1 integrateovertime
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '1/$FPS' Prev_Frame1/integrateovertime
chblockend
opparm -V 20.5.522 Prev_Frame1 doppath ( "" ) objpattern ( * ) relpattern ( "" ) donotsim ( off ) folder_geometry ( 0 ) importstyle ( fetch ) spacer ( "" ) pointsquicksetup ( menu ) geodatapath ( "" ) pack ( off ) pivot ( centroid ) viewportlod ( full ) adddopobjectpath ( off ) adddopobjectname ( off ) dopobjectnameattrib ( dopobjectname ) adddopdatapath ( off ) dopdatapathattrib ( dopdatapath ) transferattributes ( "" ) transfergroups ( "" ) folder_xform ( 0 ) doposxform ( on ) dogeoxform ( on ) keepworldspacepos ( on ) pointvels ( none ) integrateovertime ( integrateovertime ) addtoexistingvel ( on )
chlock Prev_Frame1 -*
chautoscope Prev_Frame1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off Prev_Frame1
opexprlanguage -s hscript Prev_Frame1
opuserdata -n '___Version___' -v '20.5.522' Prev_Frame1

# Node OUT1 (Sop/output)
opadd -e -n output OUT1
oplocate -x 0 -y 0 OUT1
opspareds "" OUT1
chblockbegin
chadd -t 0 0 OUT1 outputidx
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F 'max(opdigits("."),0)' OUT1/outputidx
chblockend
opparm -V 20.5.522 OUT1 outputidx ( outputidx )
chlock OUT1 -*
chautoscope OUT1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off OUT1
opexprlanguage -s hscript OUT1
opuserdata -n '___Version___' -v '20.5.522' OUT1

# Node Input_1 (Sop/object_merge)
opadd -e -n object_merge Input_1
oplocate -x 5.8722399999999997 -y -1.6779900000000001 Input_1
opspareds "" Input_1
opparm Input_1  numobj ( 1 )
opparm -V 20.5.522 Input_1 numobj ( 1 ) _separator ( ) xformtype ( object ) xformpath ( "" ) invertxform ( off ) createptgroups ( off ) ptgroupprefix ( _ptgrp_ ) createprimgroups ( off ) primgroupprefix ( _primgrp_ ) verbosegroups ( off ) suffixfirstgroup ( on ) createptstring ( off ) createprimstring ( off ) pathattrib ( objname ) pack ( off ) pivot ( centroid ) viewportlod ( full ) addpath ( on ) enable1 ( on ) objpath1 ( '`opinputpath("../..", 0)`' ) group1 ( "" ) expand1 ( off )
chlock Input_1 -*
chautoscope Input_1 -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 Input_1
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F off -c on -e on -b off Input_1
opexprlanguage -s hscript Input_1
opuserdata -n '___Version___' -v '20.5.522' Input_1

# Node Input_2 (Sop/object_merge)
opadd -e -n object_merge Input_2
oplocate -x 7.4656000000000002 -y -2.2325200000000001 Input_2
opspareds "" Input_2
opparm Input_2  numobj ( 1 )
opparm -V 20.5.522 Input_2 numobj ( 1 ) _separator ( ) xformtype ( object ) xformpath ( "" ) invertxform ( off ) createptgroups ( off ) ptgroupprefix ( _ptgrp_ ) createprimgroups ( off ) primgroupprefix ( _primgrp_ ) verbosegroups ( off ) suffixfirstgroup ( on ) createptstring ( off ) createprimstring ( off ) pathattrib ( objname ) pack ( off ) pivot ( centroid ) viewportlod ( full ) addpath ( on ) enable1 ( on ) objpath1 ( '`opinputpath("../..", 1)`' ) group1 ( "" ) expand1 ( off )
chlock Input_2 -*
chautoscope Input_2 -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 Input_2
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F off -c on -e on -b off Input_2
opexprlanguage -s hscript Input_2
opuserdata -n '___Version___' -v '20.5.522' Input_2

# Node Input_3 (Sop/object_merge)
opadd -e -n object_merge Input_3
oplocate -x 8.7743500000000001 -y -2.8480300000000001 Input_3
opspareds "" Input_3
opparm Input_3  numobj ( 1 )
opparm -V 20.5.522 Input_3 numobj ( 1 ) _separator ( ) xformtype ( object ) xformpath ( "" ) invertxform ( off ) createptgroups ( off ) ptgroupprefix ( _ptgrp_ ) createprimgroups ( off ) primgroupprefix ( _primgrp_ ) verbosegroups ( off ) suffixfirstgroup ( on ) createptstring ( off ) createprimstring ( off ) pathattrib ( objname ) pack ( off ) pivot ( centroid ) viewportlod ( full ) addpath ( on ) enable1 ( on ) objpath1 ( '`opinputpath("../..", 2)`' ) group1 ( "" ) expand1 ( off )
chlock Input_3 -*
chautoscope Input_3 -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 Input_3
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F off -c on -e on -b off Input_3
opexprlanguage -s hscript Input_3
opuserdata -n '___Version___' -v '20.5.522' Input_3

# Node Input_4 (Sop/object_merge)
opadd -e -n object_merge Input_4
oplocate -x 10.2864 -y -3.4025500000000002 Input_4
opspareds "" Input_4
opparm Input_4  numobj ( 1 )
opparm -V 20.5.522 Input_4 numobj ( 1 ) _separator ( ) xformtype ( object ) xformpath ( "" ) invertxform ( off ) createptgroups ( off ) ptgroupprefix ( _ptgrp_ ) createprimgroups ( off ) primgroupprefix ( _primgrp_ ) verbosegroups ( off ) suffixfirstgroup ( on ) createptstring ( off ) createprimstring ( off ) pathattrib ( objname ) pack ( off ) pivot ( centroid ) viewportlod ( full ) addpath ( on ) enable1 ( on ) objpath1 ( '`opinputpath("../..", 3)`' ) group1 ( "" ) expand1 ( off )
chlock Input_4 -*
chautoscope Input_4 -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 Input_4
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F off -c on -e on -b off Input_4
opexprlanguage -s hscript Input_4
opuserdata -n '___Version___' -v '20.5.522' Input_4

# Node Prev_Frame (Sop/dopimport::2.0)
opadd -e -n dopimport::2.0 Prev_Frame
oplocate -x 2.95383 -y -1.67954 Prev_Frame
opspareds "" Prev_Frame
chblockbegin
chadd -t 0 0 Prev_Frame integrateovertime
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '1/$FPS' Prev_Frame/integrateovertime
chblockend
opparm -V 20.5.522 Prev_Frame doppath ( '`stamps("..", "DOPNET", "../..")`' ) objpattern ( '`stamps("..", "OBJID", arg(dopnodeobjs(".."),0))`' ) relpattern ( "" ) donotsim ( on ) folder_geometry ( 0 ) importstyle ( fetch ) spacer ( "" ) pointsquicksetup ( menu ) geodatapath ( '`stamps("..", "DATANAME", chs("../datapath"))`' ) pack ( off ) pivot ( centroid ) viewportlod ( full ) adddopobjectpath ( off ) adddopobjectname ( off ) dopobjectnameattrib ( dopobjectname ) adddopdatapath ( off ) dopdatapathattrib ( dopdatapath ) transferattributes ( "" ) transfergroups ( "" ) folder_xform ( 0 ) doposxform ( on ) dogeoxform ( on ) keepworldspacepos ( on ) pointvels ( none ) integrateovertime ( integrateovertime ) addtoexistingvel ( on )
chlock Prev_Frame -*
chautoscope Prev_Frame -*
opcolor -c 0.56499999761581421 0.49399998784065247 0.86299997568130493 Prev_Frame
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F off -c on -e on -b off Prev_Frame
opexprlanguage -s hscript Prev_Frame
opuserdata -n '___Version___' -v '20.5.522' Prev_Frame

# Node OUT (Sop/output)
opadd -e -n output OUT
oplocate -x 4.4158200000000001 -y -3.6905100000000002 OUT
opspareds "" OUT
opparm -V 20.5.522 OUT outputidx ( 0 )
chlock OUT -*
chautoscope OUT -*
opset -d on -r on -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off OUT
opexprlanguage -s hscript OUT
opuserdata -n '___Version___' -v '20.5.522' OUT

# Node merge1 (Sop/merge)
opadd -e -n merge merge1
oplocate -x 4.4146700000000001 -y -2.5077799999999999 merge1
opspareds "" merge1
opparm -V 20.5.522 merge1
chlock merge1 -*
chautoscope merge1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off merge1
opexprlanguage -s hscript merge1
opuserdata -n '___Version___' -v '20.5.522' merge1
oporder -e Input_5 Input_6 Input_7 Input_8 Prev_Frame1 OUT1 Input_1 Input_2 Input_3 Input_4 Prev_Frame OUT merge1 
opcf ..

# End of editable subnode
opcf ../..


# Node add1 (Sop/add)
opadd -e -n add add1
oplocate -x 3.0534599999999998 -y 4.1559999999999997 add1
opspareds "" add1
opparm add1  points ( 0 ) prims ( 1 )
opparm -V 20.5.522 add1 stdswitcher ( 1 1 1 ) keep ( off ) points ( 0 ) remove ( off ) switcher ( 1 1 ) prims ( 1 ) group ( "" ) add ( attribute ) inc ( 2 ) attrname ( class ) closedall ( off ) addparticlesystem ( off ) particlegroup ( "" ) appendunusedtoparticlesystem ( off ) prim0 ( "" ) closed0 ( off )
chlock add1 -*
chautoscope add1 -*
opset -d on -r on -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off add1
opexprlanguage -s hscript add1
opuserdata -n '___Version___' -v '20.5.522' add1

# Node resample1 (Sop/resample)
opadd -e -n resample resample1
oplocate -x 3.0534599999999998 -y 3.0265 resample1
opspareds "" resample1
chblockbegin
chadd -t 0 0 resample1 length
chkey -t 0 -v 0.10000000000000001 -m 0 -a 0 -A 0 -T a  -F 'ch("../segments")' resample1/length
chadd -t 0 0 resample1 segs
chkey -t 0 -v 100 -m 0 -a 0 -A 0 -T a  -F 'ch("../segments")' resample1/segs
chblockend
opparm -V 20.5.522 resample1 group ( "" ) maintainprimorder ( off ) lod ( 1 ) edge ( off ) method ( dist ) measure ( arc ) dolength ( on ) length ( length ) dosegs ( off ) segs ( segs ) useattribs ( on ) allequal ( on ) last ( off ) randomshift ( off ) onlypoints ( off ) treatpolysas ( straight ) outputsubdpoly ( off ) doptdistattr ( off ) ptdistattr ( ptdist ) dotangentattr ( off ) tangentattr ( tangentu ) docurveuattr ( off ) curveuattr ( curveu ) docurvenumattr ( off ) curvenumattr ( curvenum )
chlock resample1 -*
chautoscope resample1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off resample1
opexprlanguage -s hscript resample1
opuserdata -n '___Version___' -v '20.5.522' resample1

# Node bound1 (Sop/bound)
opadd -e -n bound bound1
oplocate -x 5.8774600000000001 -y 7.3939000000000004 bound1
opspareds "" bound1
opparm -V 20.5.522 bound1 group ( "" ) grouptype ( guess ) keepOriginal ( off ) createboundinggeo ( on ) createempty ( on ) separator ( ) boundtype ( off ) orientedbbox ( on ) refinementiterations ( 6 ) dodivs ( off ) divs ( 3 3 3 ) rebar ( off ) minsize ( 0 0 0 ) orient ( y ) accurate ( off ) minradius ( 0 ) orientedbrect ( off ) origin ( 0 0 0 ) dist ( 0 ) dir ( 0 1 0 ) minpad ( 0 0 0 ) maxpad ( 0 0 0 ) addboundsgroup ( off ) boundsgroup ( bounds ) addxformattrib ( off ) xformattrib ( xform ) addradiiattrib ( off ) radiiattrib ( radii )
chlock bound1 -*
chautoscope bound1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off bound1
opexprlanguage -s hscript bound1
opuserdata -n '___Version___' -v '20.5.522' bound1

# Node group1 (Sop/groupcreate)
opadd -e -n groupcreate group1
oplocate -x 5.8774600000000001 -y 4.8337000000000003 group1
opspareds "" group1
opparm -V 20.5.522 group1 groupname ( blast ) grouptype ( point ) mergeop ( replace ) folder0 ( 0 ) groupbase ( off ) basegroup ( "" ) ordered ( off ) geotype ( all ) switcher3 ( 0 ) groupbounding ( on ) boundtype ( usebobject ) size ( 1 1 1 ) t ( 0 0 0 ) initbounds ( 0 ) includenotwhollycontained ( off ) iso ( 0 ) invertvolume ( off ) switcher4 ( 0 ) groupnormal ( off ) camerapath ( "" ) nonplanar ( off ) nonplanartol ( 0.001 ) dir ( 0 0 1 ) angle ( 180 ) oppositenormals ( off ) switcher5 ( 0 ) groupedges ( off ) dominedgeangle ( off ) minedgeangle ( 20 ) domaxedgeangle ( off ) maxedgeangle ( 20 ) edgeanglebetweenedges ( off ) dominedgelen ( off ) minedgelen ( 0 ) domaxedgelen ( off ) maxedgelen ( 0 ) dodepth ( off ) edgestep ( 0 ) edgeptgrp ( 0 ) unshared ( off ) boundarygroups ( off ) switcher6 ( 0 ) grouprandom ( off ) globalseed ( 1 ) useseedattrib ( off ) seedattrib ( id ) percent ( 50 )
chlock group1 -*
chautoscope group1 -*
opset -d off -r off -h on -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off group1
opexprlanguage -s hscript group1
opuserdata -n '___Version___' -v '20.5.522' group1

# Node blast1 (Sop/blast)
opadd -e -n blast blast1
oplocate -x 5.8774600000000001 -y 3.7042000000000002 blast1
opspareds "" blast1
opparm -V 20.5.522 blast1 group ( blast ) grouptype ( guess ) computenorms ( off ) negate ( on ) fillhole ( off ) removegrp ( off )
chlock blast1 -*
chautoscope blast1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off blast1
opexprlanguage -s hscript blast1
opuserdata -n '___Version___' -v '20.5.522' blast1

# Node padding (Sop/attribwrangle)
opadd -e -n attribwrangle padding
oplocate -x 5.8774600000000001 -y 6.2644000000000002 padding
opspareds '    group {         name    "folder1"         label   "Code"          parm {             name    "group"             baseparm             label   "Group"             export  none             bindselector uvselect "Modify Attribs"                 "Select the geometry to affect and press Enter to complete."                 0 1 0xffffffff 0 grouptype 0         }         parm {             name    "grouptype"             baseparm             label   "Group Type"             export  none         }         parm {             name    "class"             baseparm             label   "Run Over"             export  none         }         parm {             name    "vex_numcount"             baseparm             label   "Number Count"             export  none         }         parm {             name    "vex_threadjobsize"             baseparm             label   "Thread Job Size"             export  none         }         groupsimple {             name    "folder_generatedparms_snippet"             label   "Generated Channel Parameters"             grouptag { "sidefx::look" "blank" }              parm {                 name    "Padding"                 label   "Padding"                 type    float                 default { "0" }                 range   { 0 1 }             }         }          parm {             name    "snippet"             baseparm             label   "VEXpression"             export  all         }         parm {             name    "exportlist"             baseparm             label   "Attributes to Create"             export  none         }         parm {             name    "vex_strict"             baseparm             label   "Enforce Prototypes"             export  none         }     }      group {         name    "folder1_1"         label   "Bindings"          parm {             name    "autobind"             baseparm             label   "Autobind by Name"             export  none         }         multiparm {             name    "bindings"             label    "Number of Bindings"             baseparm             default 0             parmtag { "autoscope" "0000000000000000" }             parmtag { "multistartoffset" "1" }              parm {                 name    "bindname#"                 baseparm                 label   "Attribute Name"                 export  none             }             parm {                 name    "bindparm#"                 baseparm                 label   "VEX Parameter"                 export  none             }         }          parm {             name    "groupautobind"             baseparm             label   "Autobind Groups by Name"             export  none         }         multiparm {             name    "groupbindings"             label    "Group Bindings"             baseparm             default 0             parmtag { "autoscope" "0000000000000000" }             parmtag { "multistartoffset" "1" }              parm {                 name    "bindgroupname#"                 baseparm                 label   "Group Name"                 export  none             }             parm {                 name    "bindgroupparm#"                 baseparm                 label   "VEX Parameter"                 export  none             }         }          parm {             name    "vex_cwdpath"             baseparm             label   "Evaluation Node Path"             export  none         }         parm {             name    "vex_outputmask"             baseparm             label   "Export Parameters"             export  none         }         parm {             name    "vex_updatenmls"             baseparm             label   "Update Normals If Displaced"             export  none         }         parm {             name    "vex_matchattrib"             baseparm             label   "Attribute to Match"             export  none         }         parm {             name    "vex_inplace"             baseparm             label   "Compute Results In Place"             export  none         }         parm {             name    "vex_selectiongroup"             baseparm             label   "Output Selection Group"             export  none         }         parm {             name    "vex_precision"             baseparm             label   "VEX Precision"             export  none         }     }  ' padding
opparm padding  bindings ( 0 ) groupbindings ( 0 )
chblockbegin
chadd -t 0 0 padding Padding
chkey -t 0 -v 0.02 -m 0 -a 0 -A 0 -T a  -F 'ch("../boundpad")' padding/Padding
chblockend
opparm padding folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( point ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( '@P -= getbbox_center(0); @P *= 1 + ch(\'Padding\'); @P += getbbox_center(0);' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto ) folder1 ( 0 0 ) folder_generatedparms_snippet ( 0 ) Padding ( Padding )
chlock padding -*
chautoscope padding -*
opset -d off -r off -h off -f off -y off -t on -l off -s off -u off -F on -c on -e on -b off padding
opexprlanguage -s hscript padding
opuserdata -n '___Version___' -v '' padding

# Node snap (Sop/attribwrangle)
opadd -e -n attribwrangle snap
oplocate -x 6.3010599999999997 -y 0.16509699999999999 snap
opspareds '    group {         name    "folder1"         label   "Code"          parm {             name    "group"             baseparm             label   "Group"             export  none             bindselector uvselect "Modify Attribs"                 "Select the geometry to affect and press Enter to complete."                 0 1 0xffffffff 0 grouptype 0         }         parm {             name    "grouptype"             baseparm             label   "Group Type"             export  none         }         parm {             name    "class"             baseparm             label   "Run Over"             export  none         }         parm {             name    "vex_numcount"             baseparm             label   "Number Count"             export  none         }         parm {             name    "vex_threadjobsize"             baseparm             label   "Thread Job Size"             export  none         }         groupsimple {             name    "folder_generatedparms_snippet"             label   "Generated Channel Parameters"             grouptag { "sidefx::look" "blank" }              parm {                 name    "Mode"                 label   "Mode"                 type    integer                 default { "0" }                 range   { 0 10 }             }         }          parm {             name    "snippet"             baseparm             label   "VEXpression"             export  all         }         parm {             name    "exportlist"             baseparm             label   "Attributes to Create"             export  none         }         parm {             name    "vex_strict"             baseparm             label   "Enforce Prototypes"             export  none         }     }      group {         name    "folder1_1"         label   "Bindings"          parm {             name    "autobind"             baseparm             label   "Autobind by Name"             export  none         }         multiparm {             name    "bindings"             label    "Number of Bindings"             baseparm             default 0             parmtag { "autoscope" "0000000000000000" }             parmtag { "multistartoffset" "1" }              parm {                 name    "bindname#"                 baseparm                 label   "Attribute Name"                 export  none             }             parm {                 name    "bindparm#"                 baseparm                 label   "VEX Parameter"                 export  none             }         }          parm {             name    "groupautobind"             baseparm             label   "Autobind Groups by Name"             export  none         }         multiparm {             name    "groupbindings"             label    "Group Bindings"             baseparm             default 0             parmtag { "autoscope" "0000000000000000" }             parmtag { "multistartoffset" "1" }              parm {                 name    "bindgroupname#"                 baseparm                 label   "Group Name"                 export  none             }             parm {                 name    "bindgroupparm#"                 baseparm                 label   "VEX Parameter"                 export  none             }         }          parm {             name    "vex_cwdpath"             baseparm             label   "Evaluation Node Path"             export  none         }         parm {             name    "vex_outputmask"             baseparm             label   "Export Parameters"             export  none         }         parm {             name    "vex_updatenmls"             baseparm             label   "Update Normals If Displaced"             export  none         }         parm {             name    "vex_matchattrib"             baseparm             label   "Attribute to Match"             export  none         }         parm {             name    "vex_inplace"             baseparm             label   "Compute Results In Place"             export  none         }         parm {             name    "vex_selectiongroup"             baseparm             label   "Output Selection Group"             export  none         }         parm {             name    "vex_precision"             baseparm             label   "VEX Precision"             export  none         }     }  ' snap
opparm snap  bindings ( 0 ) groupbindings ( 0 )
chblockbegin
chadd -t 0 0 snap Mode
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F 'ch("../snap")' snap/Mode
chblockend
opparm snap folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( point ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( 'int mode = chi(\'Mode\');\nif ( mode == 1 ) @P = minpos(1, @P);' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto ) folder1 ( 0 0 ) folder_generatedparms_snippet ( 0 ) Mode ( Mode )
chlock snap -*
chautoscope snap -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off snap
opexprlanguage -s hscript snap
opuserdata -n '___Version___' -v '' snap

# Node timeshift (Sop/timeshift)
opadd -e -n timeshift timeshift
oplocate -x 3.0534599999999998 -y 5.2854999999999999 timeshift
opspareds "" timeshift
chblockbegin
chadd -t 0 0 timeshift frame
chkey -t 0 -v 120 -m 0 -a 0 -A 0 -T a  -F 'ch("../end")' timeshift/frame
chadd -t 0 0 timeshift time
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '$T' timeshift/time
chadd -t 0 0 timeshift frange1
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '$FSTART' timeshift/frange1
chadd -t 0 0 timeshift frange2
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '$FEND' timeshift/frange2
chadd -t 0 0 timeshift trange1
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '$TSTART' timeshift/trange1
chadd -t 0 0 timeshift trange2
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '$TEND' timeshift/trange2
chblockend
opparm -V 20.5.522 timeshift method ( byframe ) frame ( frame ) integerframe ( on ) time ( time ) rangeclamp ( none ) frange ( frange1 frange2 ) trange ( trange1 trange2 )
chlock timeshift -*
chautoscope timeshift -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off timeshift
opexprlanguage -s hscript timeshift
opuserdata -n '___Version___' -v '20.5.522' timeshift

# Node groupdelete1 (Sop/groupdelete)
opadd -e -n groupdelete groupdelete1
oplocate -x 5.8774600000000001 -y 2.5747 groupdelete1
opspareds "" groupdelete1
opparm groupdelete1  deletions ( 1 )
opparm -V 20.5.522 groupdelete1 deletions ( 1 ) removegrp ( off ) selection_folder ( 0 ) selectiongroup ( "" ) selectiongrouptype ( guess ) enable1 ( on ) grouptype1 ( any ) group1 ( blast )
chlock groupdelete1 -*
chautoscope groupdelete1 -*
opset -d off -r off -h on -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off groupdelete1
opexprlanguage -s hscript groupdelete1
opuserdata -n '___Version___' -v '20.5.522' groupdelete1

# Node switch1 (Sop/switch)
opadd -e -n switch switch1
oplocate -x 4.4654600000000002 -y 1.5958000000000001 switch1
opspareds "" switch1
chblockbegin
chadd -t 0 0 switch1 input
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F 'ch("../blast")' switch1/input
chblockend
opparm -V 20.5.522 switch1 input ( input )
chlock switch1 -*
chautoscope switch1 -*
opcolor -c 0 0 0 switch1
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F off -c on -e on -b off switch1
opexprlanguage -s hscript switch1
opuserdata -n '___Version___' -v '20.5.522' switch1
opuserdata -n 'nodeshape' -v 'circle' switch1

# Node connectivity1 (Sop/connectivity)
opadd -e -n connectivity connectivity1
oplocate -x 3.0534599999999998 -y 8.6739999999999995 connectivity1
opspareds "" connectivity1
opparm -V 20.5.522 connectivity1 connecttype ( prim ) primincgroup ( "" ) pointincgroup ( "" ) attribname ( class ) attribtype ( int ) prefix ( piece ) createvarmap ( off ) varname ( "" ) seamgroup ( "" ) byuv ( off ) uvattrib ( uv )
chlock connectivity1 -*
chautoscope connectivity1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off connectivity1
opexprlanguage -s hscript connectivity1
opuserdata -n '___Version___' -v '20.5.522' connectivity1
oporder -e output0 extractcentroid2 solver1 add1 resample1 bound1 group1 blast1 padding snap timeshift groupdelete1 switch1 connectivity1 
opcf ..

# Node matrixcurve (Sop/subnet)
opadd -e -n subnet matrixcurve
oplocate -x 9.5 -y 2.8500000000000001 matrixcurve
opspareds '    groupsimple {         name    "main"         label   "Scope Curve Matrix"          parm {             name    "mode"             label   "Mode"             type    ordinal             default { "0" }             menu {                 "0" "Orthogonal"                 "1" "Parallel Transport"             }             parmtag { "script_callback_language" "python" }         }         parm {             name    "up"             label   "Up"             type    vector             size    3             default { "0" "1" "0" }             range   { -1 1 }             parmtag { "script_callback_language" "python" }         }     }      parm {         name    "label1"         baseparm         label   "Input #1 Label"         invisible         export  all     }     parm {         name    "label2"         baseparm         label   "Input #2 Label"         invisible         export  all     }     parm {         name    "label3"         baseparm         label   "Input #3 Label"         invisible         export  all     }     parm {         name    "label4"         baseparm         label   "Input #4 Label"         invisible         export  all     } ' matrixcurve
opparm -V 20.5.522 matrixcurve label1 ( 'Sub-Network Input #1' ) label2 ( 'Sub-Network Input #2' ) label3 ( 'Sub-Network Input #3' ) label4 ( 'Sub-Network Input #4' ) main ( 0 ) mode ( 0 ) up ( 0 1 0 )
chlock matrixcurve -*
chautoscope matrixcurve -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off matrixcurve
opexprlanguage -s hscript matrixcurve
opuserdata -n '___Version___' -v '20.5.522' matrixcurve
opcf matrixcurve

# Node output0 (Sop/output)
opadd -e -n output output0
oplocate -x 2.3542000000000001 -y 1.8324100000000001 output0
opspareds "" output0
opparm -V 20.5.522 output0 outputidx ( 0 )
chlock output0 -*
chautoscope output0 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off output0
opexprlanguage -s hscript output0
opuserdata -n '___Version___' -v '20.5.522' output0

# Node init_z (Sop/attribwrangle)
opadd -e -n attribwrangle init_z
oplocate -x 0.94220000000000004 -y 5.5221099999999996 init_z
opspareds '    group {         name    "folder1"         label   "Code"          parm {             name    "group"             baseparm             label   "Group"             export  none             bindselector uvselect "Modify Attribs"                 "Select the geometry to affect and press Enter to complete."                 0 1 0xffffffff 0 grouptype 0         }         parm {             name    "grouptype"             baseparm             label   "Group Type"             export  none         }         parm {             name    "class"             baseparm             label   "Run Over"             export  none         }         parm {             name    "vex_numcount"             baseparm             label   "Number Count"             export  none         }         parm {             name    "vex_threadjobsize"             baseparm             label   "Thread Job Size"             export  none         }         groupsimple {             name    "folder_generatedparms_snippet"             label   "Generated Channel Parameters"             grouptag { "sidefx::look" "blank" }          }          parm {             name    "snippet"             baseparm             label   "VEXpression"             export  all         }         parm {             name    "exportlist"             baseparm             label   "Attributes to Create"             export  none         }         parm {             name    "vex_strict"             baseparm             label   "Enforce Prototypes"             export  none         }     }      group {         name    "folder1_1"         label   "Bindings"          parm {             name    "autobind"             baseparm             label   "Autobind by Name"             export  none         }         multiparm {             name    "bindings"             label    "Number of Bindings"             baseparm             default 0             parmtag { "autoscope" "0000000000000000" }             parmtag { "multistartoffset" "1" }              parm {                 name    "bindname#"                 baseparm                 label   "Attribute Name"                 export  none             }             parm {                 name    "bindparm#"                 baseparm                 label   "VEX Parameter"                 export  none             }         }          parm {             name    "groupautobind"             baseparm             label   "Autobind Groups by Name"             export  none         }         multiparm {             name    "groupbindings"             label    "Group Bindings"             baseparm             default 0             parmtag { "autoscope" "0000000000000000" }             parmtag { "multistartoffset" "1" }              parm {                 name    "bindgroupname#"                 baseparm                 label   "Group Name"                 export  none             }             parm {                 name    "bindgroupparm#"                 baseparm                 label   "VEX Parameter"                 export  none             }         }          parm {             name    "vex_cwdpath"             baseparm             label   "Evaluation Node Path"             export  none         }         parm {             name    "vex_outputmask"             baseparm             label   "Export Parameters"             export  none         }         parm {             name    "vex_updatenmls"             baseparm             label   "Update Normals If Displaced"             export  none         }         parm {             name    "vex_matchattrib"             baseparm             label   "Attribute to Match"             export  none         }         parm {             name    "vex_inplace"             baseparm             label   "Compute Results In Place"             export  none         }         parm {             name    "vex_selectiongroup"             baseparm             label   "Output Selection Group"             export  none         }         parm {             name    "vex_precision"             baseparm             label   "VEX Precision"             export  none         }     }  ' init_z
opparm init_z  bindings ( 0 ) groupbindings ( 0 )
opparm init_z folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( point ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( 'int set = npoints(0); int next = @ptnum + 1;\n\n//\nv@z;\nif ( @ptnum != set - 1 ) @z = normalize(point(0, \'P\', next) - @P);\nelse @z = normalize(@P - point(0, \'P\', @ptnum -1));' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto ) folder1 ( 0 0 ) folder_generatedparms_snippet ( 0 )
chlock init_z -*
chautoscope init_z -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off init_z
opexprlanguage -s hscript init_z
opuserdata -n '___Version___' -v '' init_z

# Node init_x (Sop/attribwrangle)
opadd -e -n attribwrangle init_x
oplocate -x 3.7662 -y 5.0703100000000001 init_x
opspareds '    group {         name    "folder1"         label   "Code"          parm {             name    "group"             baseparm             label   "Group"             export  none             bindselector uvselect "Modify Attribs"                 "Select the geometry to affect and press Enter to complete."                 0 1 0xffffffff 0 grouptype 0         }         parm {             name    "grouptype"             baseparm             label   "Group Type"             export  none         }         parm {             name    "class"             baseparm             label   "Run Over"             export  none         }         parm {             name    "vex_numcount"             baseparm             label   "Number Count"             export  none         }         parm {             name    "vex_threadjobsize"             baseparm             label   "Thread Job Size"             export  none         }         groupsimple {             name    "folder_generatedparms_snippet"             label   "Generated Channel Parameters"             grouptag { "sidefx::look" "blank" }              parm {                 name    "World"                 label   "World"                 type    vector                 size    3                 default { "0" "0" "0" }                 range   { 0 1 }             }         }          parm {             name    "snippet"             baseparm             label   "VEXpression"             export  all         }         parm {             name    "exportlist"             baseparm             label   "Attributes to Create"             export  none         }         parm {             name    "vex_strict"             baseparm             label   "Enforce Prototypes"             export  none         }     }      group {         name    "folder1_1"         label   "Bindings"          parm {             name    "autobind"             baseparm             label   "Autobind by Name"             export  none         }         multiparm {             name    "bindings"             label    "Number of Bindings"             baseparm             default 0             parmtag { "autoscope" "0000000000000000" }             parmtag { "multistartoffset" "1" }              parm {                 name    "bindname#"                 baseparm                 label   "Attribute Name"                 export  none             }             parm {                 name    "bindparm#"                 baseparm                 label   "VEX Parameter"                 export  none             }         }          parm {             name    "groupautobind"             baseparm             label   "Autobind Groups by Name"             export  none         }         multiparm {             name    "groupbindings"             label    "Group Bindings"             baseparm             default 0             parmtag { "autoscope" "0000000000000000" }             parmtag { "multistartoffset" "1" }              parm {                 name    "bindgroupname#"                 baseparm                 label   "Group Name"                 export  none             }             parm {                 name    "bindgroupparm#"                 baseparm                 label   "VEX Parameter"                 export  none             }         }          parm {             name    "vex_cwdpath"             baseparm             label   "Evaluation Node Path"             export  none         }         parm {             name    "vex_outputmask"             baseparm             label   "Export Parameters"             export  none         }         parm {             name    "vex_updatenmls"             baseparm             label   "Update Normals If Displaced"             export  none         }         parm {             name    "vex_matchattrib"             baseparm             label   "Attribute to Match"             export  none         }         parm {             name    "vex_inplace"             baseparm             label   "Compute Results In Place"             export  none         }         parm {             name    "vex_selectiongroup"             baseparm             label   "Output Selection Group"             export  none         }         parm {             name    "vex_precision"             baseparm             label   "VEX Precision"             export  none         }     }  ' init_x
opparm init_x  bindings ( 0 ) groupbindings ( 0 )
chblockbegin
chadd -t 0 0 init_x Worldx
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F 'ch("../upx")' init_x/Worldx
chadd -t 0 0 init_x Worldy
chkey -t 0 -v 1 -m 0 -a 0 -A 0 -T a  -F 'ch("../upy")' init_x/Worldy
chadd -t 0 0 init_x Worldz
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F 'ch("../upz")' init_x/Worldz
chblockend
opparm init_x folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( point ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( '//\nvector __z = point(0, \'z\', 0); vector world = chv(\'World\'); v@x = normalize(cross(__z, world));' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto ) folder1 ( 0 0 ) folder_generatedparms_snippet ( 0 ) World ( Worldx Worldy Worldz )
chlock init_x -*
chautoscope init_x -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off init_x
opexprlanguage -s hscript init_x
opuserdata -n '___Version___' -v '' init_x

# Node parallel_transport (Sop/attribwrangle)
opadd -e -n attribwrangle parallel_transport
oplocate -x 3.7662 -y 3.9408099999999999 parallel_transport
opspareds '    group {         name    "folder1"         label   "Code"          parm {             name    "group"             baseparm             label   "Group"             export  none             bindselector uvselect "Modify Attribs"                 "Select the geometry to affect and press Enter to complete."                 0 1 0xffffffff 0 grouptype 0         }         parm {             name    "grouptype"             baseparm             label   "Group Type"             export  none         }         parm {             name    "class"             baseparm             label   "Run Over"             export  none         }         parm {             name    "vex_numcount"             baseparm             label   "Number Count"             export  none         }         parm {             name    "vex_threadjobsize"             baseparm             label   "Thread Job Size"             export  none         }         groupsimple {             name    "folder_generatedparms_snippet"             label   "Generated Channel Parameters"             grouptag { "sidefx::look" "blank" }          }          parm {             name    "snippet"             baseparm             label   "VEXpression"             export  all         }         parm {             name    "exportlist"             baseparm             label   "Attributes to Create"             export  none         }         parm {             name    "vex_strict"             baseparm             label   "Enforce Prototypes"             export  none         }     }      group {         name    "folder1_1"         label   "Bindings"          parm {             name    "autobind"             baseparm             label   "Autobind by Name"             export  none         }         multiparm {             name    "bindings"             label    "Number of Bindings"             baseparm             default 0             parmtag { "autoscope" "0000000000000000" }             parmtag { "multistartoffset" "1" }              parm {                 name    "bindname#"                 baseparm                 label   "Attribute Name"                 export  none             }             parm {                 name    "bindparm#"                 baseparm                 label   "VEX Parameter"                 export  none             }         }          parm {             name    "groupautobind"             baseparm             label   "Autobind Groups by Name"             export  none         }         multiparm {             name    "groupbindings"             label    "Group Bindings"             baseparm             default 0             parmtag { "autoscope" "0000000000000000" }             parmtag { "multistartoffset" "1" }              parm {                 name    "bindgroupname#"                 baseparm                 label   "Group Name"                 export  none             }             parm {                 name    "bindgroupparm#"                 baseparm                 label   "VEX Parameter"                 export  none             }         }          parm {             name    "vex_cwdpath"             baseparm             label   "Evaluation Node Path"             export  none         }         parm {             name    "vex_outputmask"             baseparm             label   "Export Parameters"             export  none         }         parm {             name    "vex_updatenmls"             baseparm             label   "Update Normals If Displaced"             export  none         }         parm {             name    "vex_matchattrib"             baseparm             label   "Attribute to Match"             export  none         }         parm {             name    "vex_inplace"             baseparm             label   "Compute Results In Place"             export  none         }         parm {             name    "vex_selectiongroup"             baseparm             label   "Output Selection Group"             export  none         }         parm {             name    "vex_precision"             baseparm             label   "VEX Precision"             export  none         }     }  ' parallel_transport
opparm parallel_transport  bindings ( 0 ) groupbindings ( 0 )
opparm parallel_transport folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( detail ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( 'for ( int i = 0; i < npoints(0) - 1; i ++ ) {\n\n    vector x  = point(0, \'x\', i);\n    vector z0 = point(0, \'z\', i);\n    vector z1 = point(0, \'z\', i+ 1);\n\n    // rotation axis\n    vector b = cross(z0, z1);\n\n    // if my and the next points z are the same, our x is also the same\n    if ( length(b) == 0 ) setpointattrib(0, \'x\', i + 1, x, \'set\');\n    //\n    else {\n    b = normalize(b);\n    float theta = acos(dot(z0, z1));\n    matrix3 R = ident(); rotate(R, theta, b);\n    vector newx = R * x; setpointattrib(0, \'x\', i + 1, newx, \'set\');\n    \n    // find y, make matrix\n    vector y = cross(x, z0) ; setpointattrib(0, \'y\', i, y, \'set\');\n    matrix3 T = set(x, y, z0); setpointattrib(0, \'xform\', i, T, \'set\');\n        }\n                                        }\n        \n\n\n\n' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto ) folder1 ( 0 0 ) folder_generatedparms_snippet ( 0 )
chlock parallel_transport -*
chautoscope parallel_transport -*
opset -d off -r off -h off -f off -y off -t on -l off -s off -u off -F on -c on -e on -b off parallel_transport
opexprlanguage -s hscript parallel_transport
opuserdata -n '___Version___' -v '' parallel_transport

# Node orthogonal (Sop/attribwrangle)
opadd -e -n attribwrangle orthogonal
oplocate -x 0.94220000000000004 -y 4.3926100000000003 orthogonal
opspareds '    group {         name    "folder1"         label   "Code"          parm {             name    "group"             baseparm             label   "Group"             export  none             bindselector uvselect "Modify Attribs"                 "Select the geometry to affect and press Enter to complete."                 0 1 0xffffffff 0 grouptype 0         }         parm {             name    "grouptype"             baseparm             label   "Group Type"             export  none         }         parm {             name    "class"             baseparm             label   "Run Over"             export  none         }         parm {             name    "vex_numcount"             baseparm             label   "Number Count"             export  none         }         parm {             name    "vex_threadjobsize"             baseparm             label   "Thread Job Size"             export  none         }         groupsimple {             name    "folder_generatedparms_snippet"             label   "Generated Channel Parameters"             grouptag { "sidefx::look" "blank" }              parm {                 name    "World"                 label   "World"                 type    vector                 size    3                 default { "0" "0" "0" }                 range   { 0 1 }             }         }          parm {             name    "snippet"             baseparm             label   "VEXpression"             export  all         }         parm {             name    "exportlist"             baseparm             label   "Attributes to Create"             export  none         }         parm {             name    "vex_strict"             baseparm             label   "Enforce Prototypes"             export  none         }     }      group {         name    "folder1_1"         label   "Bindings"          parm {             name    "autobind"             baseparm             label   "Autobind by Name"             export  none         }         multiparm {             name    "bindings"             label    "Number of Bindings"             baseparm             default 0             parmtag { "autoscope" "0000000000000000" }             parmtag { "multistartoffset" "1" }              parm {                 name    "bindname#"                 baseparm                 label   "Attribute Name"                 export  none             }             parm {                 name    "bindparm#"                 baseparm                 label   "VEX Parameter"                 export  none             }         }          parm {             name    "groupautobind"             baseparm             label   "Autobind Groups by Name"             export  none         }         multiparm {             name    "groupbindings"             label    "Group Bindings"             baseparm             default 0             parmtag { "autoscope" "0000000000000000" }             parmtag { "multistartoffset" "1" }              parm {                 name    "bindgroupname#"                 baseparm                 label   "Group Name"                 export  none             }             parm {                 name    "bindgroupparm#"                 baseparm                 label   "VEX Parameter"                 export  none             }         }          parm {             name    "vex_cwdpath"             baseparm             label   "Evaluation Node Path"             export  none         }         parm {             name    "vex_outputmask"             baseparm             label   "Export Parameters"             export  none         }         parm {             name    "vex_updatenmls"             baseparm             label   "Update Normals If Displaced"             export  none         }         parm {             name    "vex_matchattrib"             baseparm             label   "Attribute to Match"             export  none         }         parm {             name    "vex_inplace"             baseparm             label   "Compute Results In Place"             export  none         }         parm {             name    "vex_selectiongroup"             baseparm             label   "Output Selection Group"             export  none         }         parm {             name    "vex_precision"             baseparm             label   "VEX Precision"             export  none         }     }  ' orthogonal
opparm orthogonal  bindings ( 0 ) groupbindings ( 0 )
chblockbegin
chadd -t 0 0 orthogonal Worldx
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F 'ch("../upx")' orthogonal/Worldx
chadd -t 0 0 orthogonal Worldy
chkey -t 0 -v 1 -m 0 -a 0 -A 0 -T a  -F 'ch("../upy")' orthogonal/Worldy
chadd -t 0 0 orthogonal Worldz
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F 'ch("../upz")' orthogonal/Worldz
chblockend
opparm orthogonal folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( point ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( 'vector world = normalize(chv(\'World\')); v@x = normalize(cross(world, v@z));\nv@y = normalize(cross(v@z, v@x)); 3@xform = set(v@x, v@y, v@z);' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto ) folder1 ( 0 0 ) folder_generatedparms_snippet ( 0 ) World ( Worldx Worldy Worldz )
chlock orthogonal -*
chautoscope orthogonal -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off orthogonal
opexprlanguage -s hscript orthogonal
opuserdata -n '___Version___' -v '' orthogonal

# Node switch1 (Sop/switch)
opadd -e -n switch switch1
oplocate -x 2.3542000000000001 -y 2.96191 switch1
opspareds "" switch1
chblockbegin
chadd -t 0 0 switch1 input
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F 'ch("../mode")' switch1/input
chblockend
opparm -V 20.5.522 switch1 input ( input )
chlock switch1 -*
chautoscope switch1 -*
opcolor -c 0 0 0 switch1
opset -d on -r on -h off -f off -y off -t off -l off -s off -u off -F off -c on -e on -b off switch1
opexprlanguage -s hscript switch1
opuserdata -n '___Version___' -v '20.5.522' switch1
opuserdata -n 'nodeshape' -v 'circle' switch1
oporder -e output0 init_z init_x parallel_transport orthogonal switch1 
opcf ..

# Node solvercurveadvect (Sop/subnet)
opadd -e -n subnet solvercurveadvect
oplocate -x 1.5 -y -4.1500000000000004 solvercurveadvect
opspareds '    groupsimple {         name    "main"         label   "Curve Solver"          parm {             name    "mode"             label   "Mode"             type    ordinal             default { "0" }             menu {                 "0" "Vector Field"                 "1" "Space Colony"             }             parmtag { "script_callback_language" "python" }         }         parm {             name    "sepparm4"             label   "Spacer"             type    separator             default { "" }             parmtag { "sidefx::layout_height" "small" }             parmtag { "sidefx::look" "blank" }         }         groupsimple {             name    "vectorfield"             label   "Vector Field"             hidewhen "{ mode != 0 }"              parm {                 name    "sepparm3"                 label   "Separator"                 type    separator                 default { "" }             }             parm {                 name    "amp"                 label   "Amplitude"                 type    float                 default { "0.001" }                 range   { 0 10 }                 parmtag { "script_callback_language" "python" }             }             parm {                 name    "distance"                 label   "Distance"                 type    float                 default { "1" }                 range   { 0 10 }                 parmtag { "script_callback_language" "python" }             }             parm {                 name    "max"                 label   "Max"                 type    integer                 default { "10" }                 range   { 0 100 }                 parmtag { "script_callback_language" "python" }             }             parm {                 name    "sepparm"                 label   "Separator"                 type    separator                 default { "" }             }             parm {                 name    "normfield"                 label   "Normalize Field"                 type    toggle                 joinnext                 default { "on" }                 parmtag { "script_callback_language" "python" }             }             parm {                 name    "snapmode"                 label   "Snap To Surface"                 type    toggle                 default { "off" }                 parmtag { "script_callback_language" "python" }             }         }          groupsimple {             name    "spacecolony"             label   "Space Colony"             hidewhen "{ mode != 1 }"              parm {                 name    "searchradius"                 label   "Search Radius"                 type    float                 default { "0.1" }                 range   { 0 10 }                 parmtag { "script_callback_language" "python" }             }             parm {                 name    "seeddiameter"                 label   "Seed Diameter"                 type    float                 default { "0.001" }                 range   { 0 10 }                 parmtag { "script_callback_language" "python" }             }             parm {                 name    "killradius"                 label   "Kill Radius"                 type    float                 default { "0.01" }                 range   { 0 10 }                 parmtag { "script_callback_language" "python" }             }         }      }      groupsimple {         name    "framehold2"         label   "Frame Hold"          parm {             name    "framehold"             label   "Hold"             type    toggle             default { "off" }             parmtag { "script_callback_language" "python" }         }         parm {             name    "frame"             label   "Frame"             type    integer             default { "120" }             hidewhen "{ framehold != 1 }"             range   { 1 120 }             parmtag { "script_callback_language" "python" }         }     }      parm {         name    "label1"         baseparm         label   "Input #1 Label"         invisible         export  all     }     parm {         name    "label2"         baseparm         label   "Input #2 Label"         invisible         export  all     }     parm {         name    "label3"         baseparm         label   "Input #3 Label"         invisible         export  all     }     parm {         name    "label4"         baseparm         label   "Input #4 Label"         invisible         export  all     } ' solvercurveadvect
opparm -V 20.5.522 solvercurveadvect label1 ( 'Sub-Network Input #1' ) label2 ( 'Sub-Network Input #2' ) label3 ( 'Sub-Network Input #3' ) label4 ( 'Sub-Network Input #4' ) main ( 0 ) mode ( 0 ) sepparm4 ( ) vectorfield ( 0 ) sepparm3 ( ) amp ( 0.001 ) distance ( 1 ) max ( 10 ) sepparm ( ) normfield ( on ) snapmode ( off ) spacecolony ( 0 ) searchradius ( 0.1 ) seeddiameter ( 0.001 ) killradius ( 0.01 ) framehold2 ( 0 ) framehold ( off ) frame ( 120 )
chlock solvercurveadvect -*
chautoscope solvercurveadvect -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off solvercurveadvect
opexprlanguage -s hscript solvercurveadvect
opuserdata -n '___Version___' -v '20.5.522' solvercurveadvect
opcf solvercurveadvect

# Node output0 (Sop/output)
opadd -e -n output output0
oplocate -x 2.9860899999999999 -y 1.1470599999999997 output0
opspareds "" output0
opparm -V 20.5.522 output0 outputidx ( 0 )
chlock output0 -*
chautoscope output0 -*
opset -d on -r on -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off output0
opexprlanguage -s hscript output0
opuserdata -n '___Version___' -v '20.5.522' output0

# Node init (Sop/attribwrangle)
opadd -e -n attribwrangle init
oplocate -x -2.5029999965336174 -y 7.8490000069141397 init
opspareds "" init
opparm init  bindings ( 0 ) groupbindings ( 0 )
opparm init folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( point ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( 'int hasfield = haspointattrib(1, \'field\');\nif ( hasfield == 0 ) error(\'Second input does not have a field attribute.\');\n\ni@id = @ptnum; i@leader = 1;' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto )
chlock init -*
chautoscope init -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off init
opexprlanguage -s hscript init
opuserdata -n '___Version___' -v '' init

# Node vectorfield (Sop/solver)
opadd -e -n solver vectorfield
oplocate -x -2.3795099999999998 -y 6.2674600538587582 vectorfield
opspareds "" vectorfield
opparm vectorfield resimulate ( 0 ) useinitialsop ( off ) initialsop ( "" ) startframe ( 1 ) substep ( 1 ) cacheenabled ( on ) cachetodisk ( off ) cachemaxsize ( 5000 )
chlock vectorfield -*
chautoscope vectorfield -*
opcolor -c 0.47499999403953552 0.81199997663497925 0.20399999618530273 vectorfield
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F off -c on -e on -b off vectorfield
opexprlanguage -s hscript vectorfield
opuserdata -n '___Version___' -v '' vectorfield

# Editable subnode
opcf vectorfield/d

# Node s (Dop/sopsolver)
opadd -e -n sopsolver s
oplocate -x 1.88226 -y 0.51761800000000002 s
opspareds "" s
opparm s  numinputs ( 0 ) numoutputs ( 0 ) numstamps ( 0 )
opparm -V 20.5.522 s parmop_usesoppath ( default ) usesoppath ( off ) parmop_soppath ( default ) soppath ( "" ) parmop_datapath ( default ) datapath ( Geometry ) parmop_doinvoke ( default ) doinvoke ( off ) parmop_primaryinputname ( default ) primaryinputname ( data ) parmop_numinputs ( default ) numinputs ( 0 ) parmop_numoutputs ( default ) numoutputs ( 0 ) parmop_transformsopoutput ( default ) transformsopoutput ( on ) parmop_solveinitframe ( default ) solveinitframe ( on ) parmop_numstamps ( default ) numstamps ( 0 ) parmop_usetimestep ( default ) usetimestep ( on ) parmop_timescale ( default ) timescale ( 1 ) defaultparmop ( initial ) addaffectors ( on ) group ( * ) dataname ( '$OS' ) uniquedataname ( on ) solverperobject ( off )
chlock s -*
chautoscope s -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 s
opset -d on -r off -h off -f off -y off -t off -l off -s off -u off -F off -c on -e on -b off s
opexprlanguage -s hscript s
opuserdata -n '___Version___' -v '20.5.522' s
opcf s

# Node Input_5 (Sop/object_merge)
opadd -e -n object_merge Input_5
oplocate -x 0 -y 0 Input_5
opspareds "" Input_5
opparm Input_5  numobj ( 1 )
opparm -V 20.5.522 Input_5 numobj ( 1 ) _separator ( ) xformtype ( object ) xformpath ( "" ) invertxform ( off ) createptgroups ( off ) ptgroupprefix ( _ptgrp_ ) createprimgroups ( off ) primgroupprefix ( _primgrp_ ) verbosegroups ( off ) suffixfirstgroup ( on ) createptstring ( off ) createprimstring ( off ) pathattrib ( objname ) pack ( off ) pivot ( centroid ) viewportlod ( full ) addpath ( on ) enable1 ( on ) objpath1 ( "" ) group1 ( "" ) expand1 ( off )
chlock Input_5 -*
chautoscope Input_5 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off Input_5
opexprlanguage -s hscript Input_5
opuserdata -n '___Version___' -v '20.5.522' Input_5

# Node Input_6 (Sop/object_merge)
opadd -e -n object_merge Input_6
oplocate -x 0 -y 0 Input_6
opspareds "" Input_6
opparm Input_6  numobj ( 1 )
opparm -V 20.5.522 Input_6 numobj ( 1 ) _separator ( ) xformtype ( object ) xformpath ( "" ) invertxform ( off ) createptgroups ( off ) ptgroupprefix ( _ptgrp_ ) createprimgroups ( off ) primgroupprefix ( _primgrp_ ) verbosegroups ( off ) suffixfirstgroup ( on ) createptstring ( off ) createprimstring ( off ) pathattrib ( objname ) pack ( off ) pivot ( centroid ) viewportlod ( full ) addpath ( on ) enable1 ( on ) objpath1 ( "" ) group1 ( "" ) expand1 ( off )
chlock Input_6 -*
chautoscope Input_6 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off Input_6
opexprlanguage -s hscript Input_6
opuserdata -n '___Version___' -v '20.5.522' Input_6

# Node Input_7 (Sop/object_merge)
opadd -e -n object_merge Input_7
oplocate -x 0 -y 0 Input_7
opspareds "" Input_7
opparm Input_7  numobj ( 1 )
opparm -V 20.5.522 Input_7 numobj ( 1 ) _separator ( ) xformtype ( object ) xformpath ( "" ) invertxform ( off ) createptgroups ( off ) ptgroupprefix ( _ptgrp_ ) createprimgroups ( off ) primgroupprefix ( _primgrp_ ) verbosegroups ( off ) suffixfirstgroup ( on ) createptstring ( off ) createprimstring ( off ) pathattrib ( objname ) pack ( off ) pivot ( centroid ) viewportlod ( full ) addpath ( on ) enable1 ( on ) objpath1 ( "" ) group1 ( "" ) expand1 ( off )
chlock Input_7 -*
chautoscope Input_7 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off Input_7
opexprlanguage -s hscript Input_7
opuserdata -n '___Version___' -v '20.5.522' Input_7

# Node Input_8 (Sop/object_merge)
opadd -e -n object_merge Input_8
oplocate -x 0 -y 0 Input_8
opspareds "" Input_8
opparm Input_8  numobj ( 1 )
opparm -V 20.5.522 Input_8 numobj ( 1 ) _separator ( ) xformtype ( object ) xformpath ( "" ) invertxform ( off ) createptgroups ( off ) ptgroupprefix ( _ptgrp_ ) createprimgroups ( off ) primgroupprefix ( _primgrp_ ) verbosegroups ( off ) suffixfirstgroup ( on ) createptstring ( off ) createprimstring ( off ) pathattrib ( objname ) pack ( off ) pivot ( centroid ) viewportlod ( full ) addpath ( on ) enable1 ( on ) objpath1 ( "" ) group1 ( "" ) expand1 ( off )
chlock Input_8 -*
chautoscope Input_8 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off Input_8
opexprlanguage -s hscript Input_8
opuserdata -n '___Version___' -v '20.5.522' Input_8

# Node Prev_Frame1 (Sop/dopimport::2.0)
opadd -e -n dopimport::2.0 Prev_Frame1
oplocate -x 0.0012500286102295408 -y -2.447058823529412 Prev_Frame1
opspareds "" Prev_Frame1
chblockbegin
chadd -t 0 0 Prev_Frame1 integrateovertime
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '1/$FPS' Prev_Frame1/integrateovertime
chblockend
opparm -V 20.5.522 Prev_Frame1 doppath ( "" ) objpattern ( * ) relpattern ( "" ) donotsim ( off ) folder_geometry ( 0 ) importstyle ( fetch ) spacer ( "" ) pointsquicksetup ( menu ) geodatapath ( "" ) pack ( off ) pivot ( centroid ) viewportlod ( full ) adddopobjectpath ( off ) adddopobjectname ( off ) dopobjectnameattrib ( dopobjectname ) adddopdatapath ( off ) dopdatapathattrib ( dopdatapath ) transferattributes ( "" ) transfergroups ( "" ) folder_xform ( 0 ) doposxform ( on ) dogeoxform ( on ) keepworldspacepos ( on ) pointvels ( none ) integrateovertime ( integrateovertime ) addtoexistingvel ( on )
chlock Prev_Frame1 -*
chautoscope Prev_Frame1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off Prev_Frame1
opexprlanguage -s hscript Prev_Frame1
opuserdata -n '___Version___' -v '20.5.522' Prev_Frame1

# Node OUT1 (Sop/output)
opadd -e -n output OUT1
oplocate -x -1.7294117647058826 -y -1.0117647058823531 OUT1
opspareds "" OUT1
chblockbegin
chadd -t 0 0 OUT1 outputidx
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F 'max(opdigits("."),0)' OUT1/outputidx
chblockend
opparm -V 20.5.522 OUT1 outputidx ( outputidx )
chlock OUT1 -*
chautoscope OUT1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off OUT1
opexprlanguage -s hscript OUT1
opuserdata -n '___Version___' -v '20.5.522' OUT1

# Node Input_1 (Sop/object_merge)
opadd -e -n object_merge Input_1
oplocate -x 3.4987499999999998 -y -1.14845 Input_1
opspareds "" Input_1
opparm Input_1  numobj ( 1 )
opparm -V 20.5.522 Input_1 numobj ( 1 ) _separator ( ) xformtype ( object ) xformpath ( "" ) invertxform ( off ) createptgroups ( off ) ptgroupprefix ( _ptgrp_ ) createprimgroups ( off ) primgroupprefix ( _primgrp_ ) verbosegroups ( off ) suffixfirstgroup ( on ) createptstring ( off ) createprimstring ( off ) pathattrib ( objname ) pack ( off ) pivot ( centroid ) viewportlod ( full ) addpath ( on ) enable1 ( on ) objpath1 ( '`opinputpath("../..", 0)`' ) group1 ( "" ) expand1 ( off )
chlock Input_1 -*
chautoscope Input_1 -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 Input_1
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F off -c on -e on -b off Input_1
opexprlanguage -s hscript Input_1
opuserdata -n '___Version___' -v '20.5.522' Input_1

# Node Input_2 (Sop/object_merge)
opadd -e -n object_merge Input_2
oplocate -x 7.4987500000000002 -y -2.14845 Input_2
opspareds "" Input_2
opparm Input_2  numobj ( 1 )
opparm -V 20.5.522 Input_2 numobj ( 1 ) _separator ( ) xformtype ( object ) xformpath ( "" ) invertxform ( off ) createptgroups ( off ) ptgroupprefix ( _ptgrp_ ) createprimgroups ( off ) primgroupprefix ( _primgrp_ ) verbosegroups ( off ) suffixfirstgroup ( on ) createptstring ( off ) createprimstring ( off ) pathattrib ( objname ) pack ( off ) pivot ( centroid ) viewportlod ( full ) addpath ( on ) enable1 ( on ) objpath1 ( '`opinputpath("../..", 1)`' ) group1 ( "" ) expand1 ( off )
chlock Input_2 -*
chautoscope Input_2 -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 Input_2
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F off -c on -e on -b off Input_2
opexprlanguage -s hscript Input_2
opuserdata -n '___Version___' -v '20.5.522' Input_2

# Node Input_3 (Sop/object_merge)
opadd -e -n object_merge Input_3
oplocate -x 3.4987499999999998 -y -0.14845 Input_3
opspareds "" Input_3
opparm Input_3  numobj ( 1 )
opparm -V 20.5.522 Input_3 numobj ( 1 ) _separator ( ) xformtype ( object ) xformpath ( "" ) invertxform ( off ) createptgroups ( off ) ptgroupprefix ( _ptgrp_ ) createprimgroups ( off ) primgroupprefix ( _primgrp_ ) verbosegroups ( off ) suffixfirstgroup ( on ) createptstring ( off ) createprimstring ( off ) pathattrib ( objname ) pack ( off ) pivot ( centroid ) viewportlod ( full ) addpath ( on ) enable1 ( on ) objpath1 ( '`opinputpath("../..", 2)`' ) group1 ( "" ) expand1 ( off )
chlock Input_3 -*
chautoscope Input_3 -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 Input_3
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F off -c on -e on -b off Input_3
opexprlanguage -s hscript Input_3
opuserdata -n '___Version___' -v '20.5.522' Input_3

# Node Input_4 (Sop/object_merge)
opadd -e -n object_merge Input_4
oplocate -x 3.4987499999999998 -y 0.85155000000000003 Input_4
opspareds "" Input_4
opparm Input_4  numobj ( 1 )
opparm -V 20.5.522 Input_4 numobj ( 1 ) _separator ( ) xformtype ( object ) xformpath ( "" ) invertxform ( off ) createptgroups ( off ) ptgroupprefix ( _ptgrp_ ) createprimgroups ( off ) primgroupprefix ( _primgrp_ ) verbosegroups ( off ) suffixfirstgroup ( on ) createptstring ( off ) createprimstring ( off ) pathattrib ( objname ) pack ( off ) pivot ( centroid ) viewportlod ( full ) addpath ( on ) enable1 ( on ) objpath1 ( '`opinputpath("../..", 3)`' ) group1 ( "" ) expand1 ( off )
chlock Input_4 -*
chautoscope Input_4 -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 Input_4
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F off -c on -e on -b off Input_4
opexprlanguage -s hscript Input_4
opuserdata -n '___Version___' -v '20.5.522' Input_4

# Node Prev_Frame (Sop/dopimport::2.0)
opadd -e -n dopimport::2.0 Prev_Frame
oplocate -x 4.0176499999999997 -y -2.5735299999999999 Prev_Frame
opspareds "" Prev_Frame
chblockbegin
chadd -t 0 0 Prev_Frame integrateovertime
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '1/$FPS' Prev_Frame/integrateovertime
chblockend
opparm -V 20.5.522 Prev_Frame doppath ( '`stamps("..", "DOPNET", "../..")`' ) objpattern ( '`stamps("..", "OBJID", arg(dopnodeobjs(".."),0))`' ) relpattern ( "" ) donotsim ( on ) folder_geometry ( 0 ) importstyle ( fetch ) spacer ( "" ) pointsquicksetup ( menu ) geodatapath ( '`stamps("..", "DATANAME", chs("../datapath"))`' ) pack ( off ) pivot ( centroid ) viewportlod ( full ) adddopobjectpath ( off ) adddopobjectname ( off ) dopobjectnameattrib ( dopobjectname ) adddopdatapath ( off ) dopdatapathattrib ( dopdatapath ) transferattributes ( "" ) transfergroups ( "" ) folder_xform ( 0 ) doposxform ( on ) dogeoxform ( on ) keepworldspacepos ( on ) pointvels ( none ) integrateovertime ( integrateovertime ) addtoexistingvel ( on )
chlock Prev_Frame -*
chautoscope Prev_Frame -*
opcolor -c 0.56499999761581421 0.49399998784065247 0.86299997568130493 Prev_Frame
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F off -c on -e on -b off Prev_Frame
opexprlanguage -s hscript Prev_Frame
opuserdata -n '___Version___' -v '20.5.522' Prev_Frame

# Node OUT (Sop/output)
opadd -e -n output OUT
oplocate -x 3.5 -y -8.2133500000000002 OUT
opspareds "" OUT
opparm -V 20.5.522 OUT outputidx ( 0 )
chlock OUT -*
chautoscope OUT -*
opset -d on -r on -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off OUT
opexprlanguage -s hscript OUT
opuserdata -n '___Version___' -v '20.5.522' OUT

# Node solve (Sop/attribwrangle)
opadd -e -n attribwrangle solve
oplocate -x 7.4969999999999999 -y -5.1509999999999998 solve
opspareds '    group {         name    "folder1"         label   "Code"          parm {             name    "group"             baseparm             label   "Group"             export  none             bindselector uvselect "Modify Attribs"                 "Select the geometry to affect and press Enter to complete."                 0 1 0xffffffff 0 grouptype 0         }         parm {             name    "grouptype"             baseparm             label   "Group Type"             export  none         }         parm {             name    "class"             baseparm             label   "Run Over"             export  none         }         parm {             name    "vex_numcount"             baseparm             label   "Number Count"             export  none         }         parm {             name    "vex_threadjobsize"             baseparm             label   "Thread Job Size"             export  none         }         parm {             name    "snippet"             baseparm             label   "VEXpression"             export  all         }         parm {             name    "exportlist"             baseparm             label   "Attributes to Create"             export  none         }         parm {             name    "vex_strict"             baseparm             label   "Enforce Prototypes"             export  none         }     }      group {         name    "folder1_1"         label   "Bindings"          parm {             name    "autobind"             baseparm             label   "Autobind by Name"             export  none         }         multiparm {             name    "bindings"             label    "Number of Bindings"             baseparm             default 0             parmtag { "autoscope" "0000000000000000" }             parmtag { "multistartoffset" "1" }              parm {                 name    "bindname#"                 baseparm                 label   "Attribute Name"                 export  none             }             parm {                 name    "bindparm#"                 baseparm                 label   "VEX Parameter"                 export  none             }         }          parm {             name    "groupautobind"             baseparm             label   "Autobind Groups by Name"             export  none         }         multiparm {             name    "groupbindings"             label    "Group Bindings"             baseparm             default 0             parmtag { "autoscope" "0000000000000000" }             parmtag { "multistartoffset" "1" }              parm {                 name    "bindgroupname#"                 baseparm                 label   "Group Name"                 export  none             }             parm {                 name    "bindgroupparm#"                 baseparm                 label   "VEX Parameter"                 export  none             }         }          parm {             name    "vex_cwdpath"             baseparm             label   "Evaluation Node Path"             export  none         }         parm {             name    "vex_outputmask"             baseparm             label   "Export Parameters"             export  none         }         parm {             name    "vex_updatenmls"             baseparm             label   "Update Normals If Displaced"             export  none         }         parm {             name    "vex_matchattrib"             baseparm             label   "Attribute to Match"             export  none         }         parm {             name    "vex_inplace"             baseparm             label   "Compute Results In Place"             export  none         }         parm {             name    "vex_selectiongroup"             baseparm             label   "Output Selection Group"             export  none         }         parm {             name    "vex_precision"             baseparm             label   "VEX Precision"             export  none         }     }      parm {         name    "Displace"         label   "Displace"         type    float         default { "0" }         range   { 0 1 }     }     parm {         name    "NormalizeMode"         label   "Normalizemode"         type    float         default { "0" }         range   { 0 1 }     }     parm {         name    "SnapMode"         label   "Snapmode"         type    integer         default { "0" }         range   { 0 10 }     }     parm {         name    "Distance"         label   "Distance"         type    float         default { "0" }         range   { 0 1 }     }     parm {         name    "Max"         label   "Max"         type    integer         default { "0" }         range   { 0 10 }     } ' solve
opparm solve  bindings ( 0 ) groupbindings ( 0 )
chblockbegin
chadd -t 0 0 solve Displace
chkey -t 0 -v 1 -m 0 -a 0 -A 0 -T a  -F 'ch("../../../../amp")' solve/Displace
chadd -t 0 0 solve NormalizeMode
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F 'ch("../../../../normfield")' solve/NormalizeMode
chadd -t 0 0 solve SnapMode
chkey -t 0 -v 1 -m 0 -a 0 -A 0 -T a  -F 'ch("../../../../snapmode")' solve/SnapMode
chadd -t 0 0 solve Distance
chkey -t 0 -v 1 -m 0 -a 0 -A 0 -T a  -F 'ch("../../../../distance")' solve/Distance
chadd -t 0 0 solve Max
chkey -t 0 -v 100 -m 0 -a 0 -A 0 -T a  -F 'ch("../../../../max")' solve/Max
chblockend
opparm solve folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( point ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( 'float disp = ch(\'Displace\'); int normmode = ch(\'NormalizeMode\'); int snapmode = chi(\'SnapMode\');\n\nint chums [] = nearpoints(1, @P, ch(\'Distance\'), chi(\'Max\')); \n\nvector field;\n\nforeach ( int t; chums ) {\n    vector r = point(1, \'field\', t);\n    field += r;          }\n    \nfield /= len(chums);\n\nif ( normmode == 1 ) field = normalize(field);\n\n@P += (field * disp);\n\nif ( snapmode == 1 ) {\n    vector q = minpos(1, @P);\n    @P = q;          }\n    \ni@leader = 1;    \n\n' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto ) folder1 ( 0 0 ) Displace ( Displace ) NormalizeMode ( NormalizeMode ) SnapMode ( SnapMode ) Distance ( Distance ) Max ( Max )
chlock solve -*
chautoscope solve -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off solve
opexprlanguage -s hscript solve
opuserdata -n '___Version___' -v '' solve

# Node merge1 (Sop/merge)
opadd -e -n merge merge1
oplocate -x 3.49885 -y -6.2102000000000004 merge1
opspareds "" merge1
opparm -V 20.5.522 merge1
chlock merge1 -*
chautoscope merge1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off merge1
opexprlanguage -s hscript merge1
opuserdata -n '___Version___' -v '20.5.522' merge1

# Node null_leader (Sop/attribwrangle)
opadd -e -n attribwrangle null_leader
oplocate -x 2.485235294117647 -y -4.1509999930858612 null_leader
opspareds "" null_leader
opparm null_leader  bindings ( 0 ) groupbindings ( 0 )
opparm null_leader folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( point ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( 'i@leader = 0;' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto )
chlock null_leader -*
chautoscope null_leader -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off null_leader
opexprlanguage -s hscript null_leader
opuserdata -n '___Version___' -v '' null_leader

# Node catch_leader (Sop/attribwrangle)
opadd -e -n attribwrangle catch_leader
oplocate -x 5.4969999999999999 -y -4.1509999999999998 catch_leader
opspareds "" catch_leader
opparm catch_leader  bindings ( 0 ) groupbindings ( 0 )
opparm catch_leader folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( point ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( 'removepoint(0, i@leader != 1 ? @ptnum : -1);' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto )
chlock catch_leader -*
chautoscope catch_leader -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off catch_leader
opexprlanguage -s hscript catch_leader
opuserdata -n '___Version___' -v '' catch_leader
oporder -e Input_5 Input_6 Input_7 Input_8 Prev_Frame1 OUT1 Input_1 Input_2 Input_3 Input_4 Prev_Frame OUT solve merge1 null_leader catch_leader 
opcf ..

# End of editable subnode
opcf ../..


# Node line (Sop/add)
opadd -e -n add line
oplocate -x -2.3795099999999998 -y 5.137960053858758 line
opspareds "" line
opparm line  points ( 0 ) prims ( 1 )
opparm -V 20.5.522 line stdswitcher ( 1 1 1 ) keep ( off ) points ( 0 ) remove ( off ) switcher ( 1 1 ) prims ( 1 ) group ( "" ) add ( attribute ) inc ( 2 ) attrname ( id ) closedall ( off ) addparticlesystem ( off ) particlegroup ( "" ) appendunusedtoparticlesystem ( off ) prim0 ( "" ) closed0 ( off )
chlock line -*
chautoscope line -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off line
opexprlanguage -s hscript line
opuserdata -n '___Version___' -v '20.5.522' line

# Node switch1 (Sop/switch)
opadd -e -n switch switch1
oplocate -x -0.68510999999999989 -y 3.7072600269293789 switch1
opspareds "" switch1
chblockbegin
chadd -t 0 0 switch1 input
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F 'ch("../framehold")' switch1/input
chblockend
opparm -V 20.5.522 switch1 input ( input )
chlock switch1 -*
chautoscope switch1 -*
opcolor -c 0 0 0 switch1
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F off -c on -e on -b off switch1
opexprlanguage -s hscript switch1
opuserdata -n '___Version___' -v '20.5.522' switch1

# Node timeshift1 (Sop/timeshift)
opadd -e -n timeshift timeshift1
oplocate -x 1.00929 -y 4.6861600359058384 timeshift1
opspareds "" timeshift1
chblockbegin
chadd -t 0 0 timeshift1 frame
chkey -t 0 -v 64 -m 0 -a 0 -A 0 -T a  -F 'ch("../frame")' timeshift1/frame
chadd -t 0 0 timeshift1 time
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '$T' timeshift1/time
chadd -t 0 0 timeshift1 frange1
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '$FSTART' timeshift1/frange1
chadd -t 0 0 timeshift1 frange2
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '$FEND' timeshift1/frange2
chadd -t 0 0 timeshift1 trange1
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '$TSTART' timeshift1/trange1
chadd -t 0 0 timeshift1 trange2
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '$TEND' timeshift1/trange2
chblockend
opparm -V 20.5.522 timeshift1 method ( byframe ) frame ( frame ) integerframe ( on ) time ( time ) rangeclamp ( none ) frange ( frange1 frange2 ) trange ( trange1 trange2 )
chlock timeshift1 -*
chautoscope timeshift1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off timeshift1
opexprlanguage -s hscript timeshift1
opuserdata -n '___Version___' -v '20.5.522' timeshift1

# Node switch2 (Sop/switch)
opadd -e -n switch switch2
oplocate -x 2.9860899999999999 -y 2.2765599999999999 switch2
opspareds "" switch2
chblockbegin
chadd -t 0 0 switch2 input
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F 'ch("../mode")' switch2/input
chblockend
opparm -V 20.5.522 switch2 input ( input )
chlock switch2 -*
chautoscope switch2 -*
opcolor -c 0 0 0 switch2
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F off -c on -e on -b off switch2
opexprlanguage -s hscript switch2
opuserdata -n '___Version___' -v '20.5.522' switch2

# Node initfood (Sop/attribwrangle)
opadd -e -n attribwrangle initfood
oplocate -x 7.4970000034663826 -y 7.8490000069141397 initfood
opspareds "" initfood
opparm initfood  bindings ( 0 ) groupbindings ( 0 )
opparm initfood folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( point ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( 'int t = npoints(1);\nfor ( int i; i < t; i++ ) {\n    vector p = point(1, \'P\', i);\n    if ( @P == p ) removepoint(0, @ptnum);\n                     }\n\ni@group_food = 1; i@food = 1;                    ' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto )
chlock initfood -*
chautoscope initfood -*
opset -d off -r off -h off -f off -y off -t on -l off -s off -u off -F on -c on -e on -b off initfood
opexprlanguage -s hscript initfood
opuserdata -n '___Version___' -v '' initfood

# Node spacecolony (Sop/solver)
opadd -e -n solver spacecolony
oplocate -x 4.9628899999999989 -y 5.8156600359058386 spacecolony
opspareds "" spacecolony
opparm spacecolony resimulate ( 0 ) useinitialsop ( off ) initialsop ( "" ) startframe ( 1 ) substep ( 1 ) cacheenabled ( on ) cachetodisk ( off ) cachemaxsize ( 5000 )
chlock spacecolony -*
chautoscope spacecolony -*
opcolor -c 0.47499999403953552 0.81199997663497925 0.20399999618530273 spacecolony
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F off -c on -e on -b off spacecolony
opexprlanguage -s hscript spacecolony
opuserdata -n '___Version___' -v '' spacecolony

# Editable subnode
opcf spacecolony/d

# Node s (Dop/sopsolver)
opadd -e -n sopsolver s
oplocate -x 1.88226 -y 0.51761800000000002 s
opspareds "" s
opparm s  numinputs ( 0 ) numoutputs ( 0 ) numstamps ( 0 )
opparm -V 20.5.522 s parmop_usesoppath ( default ) usesoppath ( off ) parmop_soppath ( default ) soppath ( "" ) parmop_datapath ( default ) datapath ( Geometry ) parmop_doinvoke ( default ) doinvoke ( off ) parmop_primaryinputname ( default ) primaryinputname ( data ) parmop_numinputs ( default ) numinputs ( 0 ) parmop_numoutputs ( default ) numoutputs ( 0 ) parmop_transformsopoutput ( default ) transformsopoutput ( on ) parmop_solveinitframe ( default ) solveinitframe ( on ) parmop_numstamps ( default ) numstamps ( 0 ) parmop_usetimestep ( default ) usetimestep ( on ) parmop_timescale ( default ) timescale ( 1 ) defaultparmop ( initial ) addaffectors ( on ) group ( * ) dataname ( '$OS' ) uniquedataname ( on ) solverperobject ( off )
chlock s -*
chautoscope s -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 s
opset -d on -r off -h off -f off -y off -t off -l off -s off -u off -F off -c on -e on -b off s
opexprlanguage -s hscript s
opuserdata -n '___Version___' -v '20.5.522' s
opcf s

# Node Input_5 (Sop/object_merge)
opadd -e -n object_merge Input_5
oplocate -x 0 -y 0 Input_5
opspareds "" Input_5
opparm Input_5  numobj ( 1 )
opparm -V 20.5.522 Input_5 numobj ( 1 ) _separator ( ) xformtype ( object ) xformpath ( "" ) invertxform ( off ) createptgroups ( off ) ptgroupprefix ( _ptgrp_ ) createprimgroups ( off ) primgroupprefix ( _primgrp_ ) verbosegroups ( off ) suffixfirstgroup ( on ) createptstring ( off ) createprimstring ( off ) pathattrib ( objname ) pack ( off ) pivot ( centroid ) viewportlod ( full ) addpath ( on ) enable1 ( on ) objpath1 ( "" ) group1 ( "" ) expand1 ( off )
chlock Input_5 -*
chautoscope Input_5 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off Input_5
opexprlanguage -s hscript Input_5
opuserdata -n '___Version___' -v '20.5.522' Input_5

# Node Input_6 (Sop/object_merge)
opadd -e -n object_merge Input_6
oplocate -x 0 -y 0 Input_6
opspareds "" Input_6
opparm Input_6  numobj ( 1 )
opparm -V 20.5.522 Input_6 numobj ( 1 ) _separator ( ) xformtype ( object ) xformpath ( "" ) invertxform ( off ) createptgroups ( off ) ptgroupprefix ( _ptgrp_ ) createprimgroups ( off ) primgroupprefix ( _primgrp_ ) verbosegroups ( off ) suffixfirstgroup ( on ) createptstring ( off ) createprimstring ( off ) pathattrib ( objname ) pack ( off ) pivot ( centroid ) viewportlod ( full ) addpath ( on ) enable1 ( on ) objpath1 ( "" ) group1 ( "" ) expand1 ( off )
chlock Input_6 -*
chautoscope Input_6 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off Input_6
opexprlanguage -s hscript Input_6
opuserdata -n '___Version___' -v '20.5.522' Input_6

# Node Input_7 (Sop/object_merge)
opadd -e -n object_merge Input_7
oplocate -x 0 -y 0 Input_7
opspareds "" Input_7
opparm Input_7  numobj ( 1 )
opparm -V 20.5.522 Input_7 numobj ( 1 ) _separator ( ) xformtype ( object ) xformpath ( "" ) invertxform ( off ) createptgroups ( off ) ptgroupprefix ( _ptgrp_ ) createprimgroups ( off ) primgroupprefix ( _primgrp_ ) verbosegroups ( off ) suffixfirstgroup ( on ) createptstring ( off ) createprimstring ( off ) pathattrib ( objname ) pack ( off ) pivot ( centroid ) viewportlod ( full ) addpath ( on ) enable1 ( on ) objpath1 ( "" ) group1 ( "" ) expand1 ( off )
chlock Input_7 -*
chautoscope Input_7 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off Input_7
opexprlanguage -s hscript Input_7
opuserdata -n '___Version___' -v '20.5.522' Input_7

# Node Input_8 (Sop/object_merge)
opadd -e -n object_merge Input_8
oplocate -x 0 -y 0 Input_8
opspareds "" Input_8
opparm Input_8  numobj ( 1 )
opparm -V 20.5.522 Input_8 numobj ( 1 ) _separator ( ) xformtype ( object ) xformpath ( "" ) invertxform ( off ) createptgroups ( off ) ptgroupprefix ( _ptgrp_ ) createprimgroups ( off ) primgroupprefix ( _primgrp_ ) verbosegroups ( off ) suffixfirstgroup ( on ) createptstring ( off ) createprimstring ( off ) pathattrib ( objname ) pack ( off ) pivot ( centroid ) viewportlod ( full ) addpath ( on ) enable1 ( on ) objpath1 ( "" ) group1 ( "" ) expand1 ( off )
chlock Input_8 -*
chautoscope Input_8 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off Input_8
opexprlanguage -s hscript Input_8
opuserdata -n '___Version___' -v '20.5.522' Input_8

# Node Prev_Frame1 (Sop/dopimport::2.0)
opadd -e -n dopimport::2.0 Prev_Frame1
oplocate -x 0 -y 0 Prev_Frame1
opspareds "" Prev_Frame1
chblockbegin
chadd -t 0 0 Prev_Frame1 integrateovertime
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '1/$FPS' Prev_Frame1/integrateovertime
chblockend
opparm -V 20.5.522 Prev_Frame1 doppath ( "" ) objpattern ( * ) relpattern ( "" ) donotsim ( off ) folder_geometry ( 0 ) importstyle ( fetch ) spacer ( "" ) pointsquicksetup ( menu ) geodatapath ( "" ) pack ( off ) pivot ( centroid ) viewportlod ( full ) adddopobjectpath ( off ) adddopobjectname ( off ) dopobjectnameattrib ( dopobjectname ) adddopdatapath ( off ) dopdatapathattrib ( dopdatapath ) transferattributes ( "" ) transfergroups ( "" ) folder_xform ( 0 ) doposxform ( on ) dogeoxform ( on ) keepworldspacepos ( on ) pointvels ( none ) integrateovertime ( integrateovertime ) addtoexistingvel ( on )
chlock Prev_Frame1 -*
chautoscope Prev_Frame1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off Prev_Frame1
opexprlanguage -s hscript Prev_Frame1
opuserdata -n '___Version___' -v '20.5.522' Prev_Frame1

# Node OUT1 (Sop/output)
opadd -e -n output OUT1
oplocate -x 0 -y 0 OUT1
opspareds "" OUT1
chblockbegin
chadd -t 0 0 OUT1 outputidx
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F 'max(opdigits("."),0)' OUT1/outputidx
chblockend
opparm -V 20.5.522 OUT1 outputidx ( outputidx )
chlock OUT1 -*
chautoscope OUT1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off OUT1
opexprlanguage -s hscript OUT1
opuserdata -n '___Version___' -v '20.5.522' OUT1

# Node Input_1 (Sop/object_merge)
opadd -e -n object_merge Input_1
oplocate -x 5.8722399999999997 -y -1.6779900000000001 Input_1
opspareds "" Input_1
opparm Input_1  numobj ( 1 )
opparm -V 20.5.522 Input_1 numobj ( 1 ) _separator ( ) xformtype ( object ) xformpath ( "" ) invertxform ( off ) createptgroups ( off ) ptgroupprefix ( _ptgrp_ ) createprimgroups ( off ) primgroupprefix ( _primgrp_ ) verbosegroups ( off ) suffixfirstgroup ( on ) createptstring ( off ) createprimstring ( off ) pathattrib ( objname ) pack ( off ) pivot ( centroid ) viewportlod ( full ) addpath ( on ) enable1 ( on ) objpath1 ( '`opinputpath("../..", 0)`' ) group1 ( "" ) expand1 ( off )
chlock Input_1 -*
chautoscope Input_1 -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 Input_1
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F off -c on -e on -b off Input_1
opexprlanguage -s hscript Input_1
opuserdata -n '___Version___' -v '20.5.522' Input_1

# Node Input_2 (Sop/object_merge)
opadd -e -n object_merge Input_2
oplocate -x 7.4656000000000002 -y -2.2325200000000001 Input_2
opspareds "" Input_2
opparm Input_2  numobj ( 1 )
opparm -V 20.5.522 Input_2 numobj ( 1 ) _separator ( ) xformtype ( object ) xformpath ( "" ) invertxform ( off ) createptgroups ( off ) ptgroupprefix ( _ptgrp_ ) createprimgroups ( off ) primgroupprefix ( _primgrp_ ) verbosegroups ( off ) suffixfirstgroup ( on ) createptstring ( off ) createprimstring ( off ) pathattrib ( objname ) pack ( off ) pivot ( centroid ) viewportlod ( full ) addpath ( on ) enable1 ( on ) objpath1 ( '`opinputpath("../..", 1)`' ) group1 ( "" ) expand1 ( off )
chlock Input_2 -*
chautoscope Input_2 -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 Input_2
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F off -c on -e on -b off Input_2
opexprlanguage -s hscript Input_2
opuserdata -n '___Version___' -v '20.5.522' Input_2

# Node Input_3 (Sop/object_merge)
opadd -e -n object_merge Input_3
oplocate -x 8.7743500000000001 -y -2.8480300000000001 Input_3
opspareds "" Input_3
opparm Input_3  numobj ( 1 )
opparm -V 20.5.522 Input_3 numobj ( 1 ) _separator ( ) xformtype ( object ) xformpath ( "" ) invertxform ( off ) createptgroups ( off ) ptgroupprefix ( _ptgrp_ ) createprimgroups ( off ) primgroupprefix ( _primgrp_ ) verbosegroups ( off ) suffixfirstgroup ( on ) createptstring ( off ) createprimstring ( off ) pathattrib ( objname ) pack ( off ) pivot ( centroid ) viewportlod ( full ) addpath ( on ) enable1 ( on ) objpath1 ( '`opinputpath("../..", 2)`' ) group1 ( "" ) expand1 ( off )
chlock Input_3 -*
chautoscope Input_3 -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 Input_3
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F off -c on -e on -b off Input_3
opexprlanguage -s hscript Input_3
opuserdata -n '___Version___' -v '20.5.522' Input_3

# Node Input_4 (Sop/object_merge)
opadd -e -n object_merge Input_4
oplocate -x 10.2864 -y -3.4025500000000002 Input_4
opspareds "" Input_4
opparm Input_4  numobj ( 1 )
opparm -V 20.5.522 Input_4 numobj ( 1 ) _separator ( ) xformtype ( object ) xformpath ( "" ) invertxform ( off ) createptgroups ( off ) ptgroupprefix ( _ptgrp_ ) createprimgroups ( off ) primgroupprefix ( _primgrp_ ) verbosegroups ( off ) suffixfirstgroup ( on ) createptstring ( off ) createprimstring ( off ) pathattrib ( objname ) pack ( off ) pivot ( centroid ) viewportlod ( full ) addpath ( on ) enable1 ( on ) objpath1 ( '`opinputpath("../..", 3)`' ) group1 ( "" ) expand1 ( off )
chlock Input_4 -*
chautoscope Input_4 -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 Input_4
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F off -c on -e on -b off Input_4
opexprlanguage -s hscript Input_4
opuserdata -n '___Version___' -v '20.5.522' Input_4

# Node Prev_Frame (Sop/dopimport::2.0)
opadd -e -n dopimport::2.0 Prev_Frame
oplocate -x 3.5 -y -2.1499999999999999 Prev_Frame
opspareds "" Prev_Frame
chblockbegin
chadd -t 0 0 Prev_Frame integrateovertime
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '1/$FPS' Prev_Frame/integrateovertime
chblockend
opparm -V 20.5.522 Prev_Frame doppath ( '`stamps("..", "DOPNET", "../..")`' ) objpattern ( '`stamps("..", "OBJID", arg(dopnodeobjs(".."),0))`' ) relpattern ( "" ) donotsim ( on ) folder_geometry ( 0 ) importstyle ( fetch ) spacer ( "" ) pointsquicksetup ( menu ) geodatapath ( '`stamps("..", "DATANAME", chs("../datapath"))`' ) pack ( off ) pivot ( centroid ) viewportlod ( full ) adddopobjectpath ( off ) adddopobjectname ( off ) dopobjectnameattrib ( dopobjectname ) adddopdatapath ( off ) dopdatapathattrib ( dopdatapath ) transferattributes ( "" ) transfergroups ( "" ) folder_xform ( 0 ) doposxform ( on ) dogeoxform ( on ) keepworldspacepos ( on ) pointvels ( none ) integrateovertime ( integrateovertime ) addtoexistingvel ( on )
chlock Prev_Frame -*
chautoscope Prev_Frame -*
opcolor -c 0.56499999761581421 0.49399998784065247 0.86299997568130493 Prev_Frame
opset -d on -r on -h off -f off -y off -t off -l off -s off -u off -F off -c on -e on -b off Prev_Frame
opexprlanguage -s hscript Prev_Frame
opuserdata -n '___Version___' -v '20.5.522' Prev_Frame

# Node OUT (Sop/output)
opadd -e -n output OUT
oplocate -x 3.5 -y -7.1500000000000004 OUT
opspareds "" OUT
opparm -V 20.5.522 OUT outputidx ( 0 )
chlock OUT -*
chautoscope OUT -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off OUT
opexprlanguage -s hscript OUT
opuserdata -n '___Version___' -v '20.5.522' OUT

# Node foodfindseed (Sop/attribwrangle)
opadd -e -n attribwrangle foodfindseed
oplocate -x 3.4969999999999999 -y -3.1509999999999998 foodfindseed
opspareds '    group {         name    "folder1"         label   "Code"          parm {             name    "group"             baseparm             label   "Group"             export  none             bindselector uvselect "Modify Attribs"                 "Select the geometry to affect and press Enter to complete."                 0 1 0xffffffff 0 grouptype 0         }         parm {             name    "grouptype"             baseparm             label   "Group Type"             export  none         }         parm {             name    "class"             baseparm             label   "Run Over"             export  none         }         parm {             name    "vex_numcount"             baseparm             label   "Number Count"             export  none         }         parm {             name    "vex_threadjobsize"             baseparm             label   "Thread Job Size"             export  none         }         parm {             name    "snippet"             baseparm             label   "VEXpression"             export  all         }         parm {             name    "exportlist"             baseparm             label   "Attributes to Create"             export  none         }         parm {             name    "vex_strict"             baseparm             label   "Enforce Prototypes"             export  none         }     }      group {         name    "folder1_1"         label   "Bindings"          parm {             name    "autobind"             baseparm             label   "Autobind by Name"             export  none         }         multiparm {             name    "bindings"             label    "Number of Bindings"             baseparm             default 0             parmtag { "autoscope" "0000000000000000" }             parmtag { "multistartoffset" "1" }              parm {                 name    "bindname#"                 baseparm                 label   "Attribute Name"                 export  none             }             parm {                 name    "bindparm#"                 baseparm                 label   "VEX Parameter"                 export  none             }         }          parm {             name    "groupautobind"             baseparm             label   "Autobind Groups by Name"             export  none         }         multiparm {             name    "groupbindings"             label    "Group Bindings"             baseparm             default 0             parmtag { "autoscope" "0000000000000000" }             parmtag { "multistartoffset" "1" }              parm {                 name    "bindgroupname#"                 baseparm                 label   "Group Name"                 export  none             }             parm {                 name    "bindgroupparm#"                 baseparm                 label   "VEX Parameter"                 export  none             }         }          parm {             name    "vex_cwdpath"             baseparm             label   "Evaluation Node Path"             export  none         }         parm {             name    "vex_outputmask"             baseparm             label   "Export Parameters"             export  none         }         parm {             name    "vex_updatenmls"             baseparm             label   "Update Normals If Displaced"             export  none         }         parm {             name    "vex_matchattrib"             baseparm             label   "Attribute to Match"             export  none         }         parm {             name    "vex_inplace"             baseparm             label   "Compute Results In Place"             export  none         }         parm {             name    "vex_selectiongroup"             baseparm             label   "Output Selection Group"             export  none         }         parm {             name    "vex_precision"             baseparm             label   "VEX Precision"             export  none         }     }      parm {         name    "Distance"         label   "Distance"         type    float         default { "0" }         range   { 0 1 }     } ' foodfindseed
opparm foodfindseed  bindings ( 0 ) groupbindings ( 0 )
chblockbegin
chadd -t 0 0 foodfindseed Distance
chkey -t 0 -v 0.10000000000000001 -m 0 -a 0 -A 0 -T a  -F 'ch("../../../../searchradius")' foodfindseed/Distance
chblockend
opparm foodfindseed folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( point ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( 'i[]@found = array();\n\n// food group finds seed, if found add food to seeds found food\nif ( i@food == 1 ) {\n    int n = nearpoint(0, \'seed\', @P, ch(\'Distance\'));\n    if ( n != -1 ) {\n        setpointattrib(0, \'found\', n, @ptnum, \'append\');\n                   }\n                   }\n                          \n        \n        \n            \n            \n                   \n                   \n    ' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto ) folder1 ( 0 0 ) Distance ( Distance )
chlock foodfindseed -*
chautoscope foodfindseed -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off foodfindseed
opexprlanguage -s hscript foodfindseed
opuserdata -n '___Version___' -v '' foodfindseed

# Node killradius (Sop/attribwrangle)
opadd -e -n attribwrangle killradius
oplocate -x 3.4969999999999999 -y -5.1509999999999998 killradius
opspareds '    group {         name    "folder1"         label   "Code"          parm {             name    "group"             baseparm             label   "Group"             export  none             bindselector uvselect "Modify Attribs"                 "Select the geometry to affect and press Enter to complete."                 0 1 0xffffffff 0 grouptype 0         }         parm {             name    "grouptype"             baseparm             label   "Group Type"             export  none         }         parm {             name    "class"             baseparm             label   "Run Over"             export  none         }         parm {             name    "vex_numcount"             baseparm             label   "Number Count"             export  none         }         parm {             name    "vex_threadjobsize"             baseparm             label   "Thread Job Size"             export  none         }         parm {             name    "snippet"             baseparm             label   "VEXpression"             export  all         }         parm {             name    "exportlist"             baseparm             label   "Attributes to Create"             export  none         }         parm {             name    "vex_strict"             baseparm             label   "Enforce Prototypes"             export  none         }     }      group {         name    "folder1_1"         label   "Bindings"          parm {             name    "autobind"             baseparm             label   "Autobind by Name"             export  none         }         multiparm {             name    "bindings"             label    "Number of Bindings"             baseparm             default 0             parmtag { "autoscope" "0000000000000000" }             parmtag { "multistartoffset" "1" }              parm {                 name    "bindname#"                 baseparm                 label   "Attribute Name"                 export  none             }             parm {                 name    "bindparm#"                 baseparm                 label   "VEX Parameter"                 export  none             }         }          parm {             name    "groupautobind"             baseparm             label   "Autobind Groups by Name"             export  none         }         multiparm {             name    "groupbindings"             label    "Group Bindings"             baseparm             default 0             parmtag { "autoscope" "0000000000000000" }             parmtag { "multistartoffset" "1" }              parm {                 name    "bindgroupname#"                 baseparm                 label   "Group Name"                 export  none             }             parm {                 name    "bindgroupparm#"                 baseparm                 label   "VEX Parameter"                 export  none             }         }          parm {             name    "vex_cwdpath"             baseparm             label   "Evaluation Node Path"             export  none         }         parm {             name    "vex_outputmask"             baseparm             label   "Export Parameters"             export  none         }         parm {             name    "vex_updatenmls"             baseparm             label   "Update Normals If Displaced"             export  none         }         parm {             name    "vex_matchattrib"             baseparm             label   "Attribute to Match"             export  none         }         parm {             name    "vex_inplace"             baseparm             label   "Compute Results In Place"             export  none         }         parm {             name    "vex_selectiongroup"             baseparm             label   "Output Selection Group"             export  none         }         parm {             name    "vex_precision"             baseparm             label   "VEX Precision"             export  none         }     }      parm {         name    "Radius"         label   "Radius"         type    float         default { "0" }         range   { 0 1 }     } ' killradius
opparm killradius  bindings ( 0 ) groupbindings ( 0 )
chblockbegin
chadd -t 0 0 killradius Radius
chkey -t 0 -v 0.01 -m 0 -a 0 -A 0 -T a  -F 'ch("../../../../killradius")' killradius/Radius
chblockend
opparm killradius folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( point ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( 'if ( i@seed == 1 ) {\n    int kill [] = nearpoints(0, @P, ch(\'Radius\'));\n    foreach ( int j; kill) {\n        int isseed = point(0, \'seed\', j);\n        if ( isseed == 0 ) removepoint(0, j);        \n                           }\n                   }' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto ) folder1 ( 0 0 ) Radius ( Radius )
chlock killradius -*
chautoscope killradius -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off killradius
opexprlanguage -s hscript killradius
opuserdata -n '___Version___' -v '' killradius

# Node colonize (Sop/attribwrangle)
opadd -e -n attribwrangle colonize
oplocate -x 3.4969999999999999 -y -4.1509999999999998 colonize
opspareds '    group {         name    "folder1"         label   "Code"          parm {             name    "group"             baseparm             label   "Group"             export  none             bindselector uvselect "Modify Attribs"                 "Select the geometry to affect and press Enter to complete."                 0 1 0xffffffff 0 grouptype 0         }         parm {             name    "grouptype"             baseparm             label   "Group Type"             export  none         }         parm {             name    "class"             baseparm             label   "Run Over"             export  none         }         parm {             name    "vex_numcount"             baseparm             label   "Number Count"             export  none         }         parm {             name    "vex_threadjobsize"             baseparm             label   "Thread Job Size"             export  none         }         parm {             name    "snippet"             baseparm             label   "VEXpression"             export  all         }         parm {             name    "exportlist"             baseparm             label   "Attributes to Create"             export  none         }         parm {             name    "vex_strict"             baseparm             label   "Enforce Prototypes"             export  none         }     }      group {         name    "folder1_1"         label   "Bindings"          parm {             name    "autobind"             baseparm             label   "Autobind by Name"             export  none         }         multiparm {             name    "bindings"             label    "Number of Bindings"             baseparm             default 0             parmtag { "autoscope" "0000000000000000" }             parmtag { "multistartoffset" "1" }              parm {                 name    "bindname#"                 baseparm                 label   "Attribute Name"                 export  none             }             parm {                 name    "bindparm#"                 baseparm                 label   "VEX Parameter"                 export  none             }         }          parm {             name    "groupautobind"             baseparm             label   "Autobind Groups by Name"             export  none         }         multiparm {             name    "groupbindings"             label    "Group Bindings"             baseparm             default 0             parmtag { "autoscope" "0000000000000000" }             parmtag { "multistartoffset" "1" }              parm {                 name    "bindgroupname#"                 baseparm                 label   "Group Name"                 export  none             }             parm {                 name    "bindgroupparm#"                 baseparm                 label   "VEX Parameter"                 export  none             }         }          parm {             name    "vex_cwdpath"             baseparm             label   "Evaluation Node Path"             export  none         }         parm {             name    "vex_outputmask"             baseparm             label   "Export Parameters"             export  none         }         parm {             name    "vex_updatenmls"             baseparm             label   "Update Normals If Displaced"             export  none         }         parm {             name    "vex_matchattrib"             baseparm             label   "Attribute to Match"             export  none         }         parm {             name    "vex_inplace"             baseparm             label   "Compute Results In Place"             export  none         }         parm {             name    "vex_selectiongroup"             baseparm             label   "Output Selection Group"             export  none         }         parm {             name    "vex_precision"             baseparm             label   "VEX Precision"             export  none         }     }      parm {         name    "SeedDiameter"         label   "Seeddiameter"         type    float         default { "0" }         range   { 0 1 }     } ' colonize
opparm colonize  bindings ( 0 ) groupbindings ( 0 )
chblockbegin
chadd -t 0 0 colonize SeedDiameter
chkey -t 0 -v 0.001 -m 0 -a 0 -A 0 -T a  -F 'ch("../../../../seeddiameter")' colonize/SeedDiameter
chblockend
opparm colonize folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( point ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( 'v@N = set(0,0,0); float seeddia = ch(\'SeedDiameter\'); @diameter = seeddia;\n\n// find averge vector of all found food, add point there, ect                   \nif ( i@seed == 1)         {\n    if ( len(i[]@found) > 0 ) {\n        vector sum;\n        foreach ( int i; i[]@found ) {\n            vector p = point(0, \'P\', i);\n            vector d = normalize(p - @P); sum += d;\n                                 }\n        vector disp  = normalize(sum) * seeddia; v@N = disp;\n        int newseed = addpoint(0, @P + disp);\n        setpointgroup(0, \'seed\', newseed, 1, \'set\');\n        setpointattrib(0, \'seed\', newseed, 1, \'set\');\n        \n        int prim = addprim(0, \'polyline\');\n        addvertex(0, prim, @ptnum); addvertex(0, prim, newseed);\n        setprimattrib(0, \'seed\', prim, 1, \'set\');\n                          }\n                          }                       \n                          \n                          \n        \n        \n            \n            \n                   \n                   \n    ' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto ) folder1 ( 0 0 ) SeedDiameter ( SeedDiameter )
chlock colonize -*
chautoscope colonize -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off colonize
opexprlanguage -s hscript colonize
opuserdata -n '___Version___' -v '' colonize
oporder -e Input_5 Input_6 Input_7 Input_8 Prev_Frame1 OUT1 Input_1 Input_2 Input_3 Input_4 Prev_Frame OUT foodfindseed killradius colonize 
opcf ..

# End of editable subnode
opcf ../..


# Node initseed (Sop/attribwrangle)
opadd -e -n attribwrangle initseed
oplocate -x 3.4970000034663822 -y 7.8490000069141388 initseed
opspareds "" initseed
opparm initseed  bindings ( 0 ) groupbindings ( 0 )
opparm initseed folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( point ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( 'i@group_seed = 1; i@seed = 1;' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto )
chlock initseed -*
chautoscope initseed -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off initseed
opexprlanguage -s hscript initseed
opuserdata -n '___Version___' -v '' initseed

# Node merge1 (Sop/merge)
opadd -e -n merge merge1
oplocate -x 4.9628899999999989 -y 6.9451600359058387 merge1
opspareds "" merge1
opparm -V 20.5.522 merge1
chlock merge1 -*
chautoscope merge1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off merge1
opexprlanguage -s hscript merge1
opuserdata -n '___Version___' -v '20.5.522' merge1

# Node blastfood (Sop/attribwrangle)
opadd -e -n attribwrangle blastfood
oplocate -x 4.9628899999999989 -y 4.6861600359058384 blastfood
opspareds "" blastfood
opparm blastfood  bindings ( 0 ) groupbindings ( 0 )
opparm blastfood folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( point ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( 'removepoint(0, i@seed != 1 ? @ptnum : -1);' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto )
chlock blastfood -*
chautoscope blastfood -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off blastfood
opexprlanguage -s hscript blastfood
opuserdata -n '___Version___' -v '' blastfood

# Node switch3 (Sop/switch)
opadd -e -n switch switch3
oplocate -x 6.6572899999999988 -y 3.2554600089764594 switch3
opspareds "" switch3
chblockbegin
chadd -t 0 0 switch3 input
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F 'ch("../framehold")' switch3/input
chblockend
opparm -V 20.5.522 switch3 input ( input )
chlock switch3 -*
chautoscope switch3 -*
opcolor -c 0 0 0 switch3
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F off -c on -e on -b off switch3
opexprlanguage -s hscript switch3
opuserdata -n '___Version___' -v '20.5.522' switch3

# Node timeshift2 (Sop/timeshift)
opadd -e -n timeshift timeshift2
oplocate -x 8.3516899999999978 -y 4.2343600179529197 timeshift2
opspareds "" timeshift2
chblockbegin
chadd -t 0 0 timeshift2 frame
chkey -t 0 -v 64 -m 0 -a 0 -A 0 -T a  -F 'ch("../frame")' timeshift2/frame
chadd -t 0 0 timeshift2 time
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '$T' timeshift2/time
chadd -t 0 0 timeshift2 frange1
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '$FSTART' timeshift2/frange1
chadd -t 0 0 timeshift2 frange2
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '$FEND' timeshift2/frange2
chadd -t 0 0 timeshift2 trange1
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '$TSTART' timeshift2/trange1
chadd -t 0 0 timeshift2 trange2
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '$TEND' timeshift2/trange2
chblockend
opparm -V 20.5.522 timeshift2 method ( byframe ) frame ( frame ) integerframe ( on ) time ( time ) rangeclamp ( none ) frange ( frange1 frange2 ) trange ( trange1 trange2 )
chlock timeshift2 -*
chautoscope timeshift2 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off timeshift2
opexprlanguage -s hscript timeshift2
opuserdata -n '___Version___' -v '20.5.522' timeshift2
oporder -e output0 init vectorfield line switch1 timeshift1 switch2 initfood spacecolony initseed merge1 blastfood switch3 timeshift2 
opcf ..

# Node deformerripple (Sop/subnet)
opadd -e -n subnet deformerripple
oplocate -x 1.5 -y -7.1500000000000004 deformerripple
opspareds '    groupsimple {         name    "Main"         label   "Ripple Deformer"          parm {             name    "amp"             label   "Amplitude"             type    float             default { "0.1" }             range   { 0 10 }             parmtag { "script_callback_language" "python" }         }         parm {             name    "speed"             label   "Speed"             type    float             default { "1" }             range   { 0 10 }             parmtag { "script_callback_language" "python" }         }         parm {             name    "freq"             label   "Frequency"             type    float             default { "10" }             range   { 0 10 }             parmtag { "script_callback_language" "python" }         }         parm {             name    "distance"             label   "Distance"             type    vector2             size    2             default { "0" "1" }             range   { -1 1 }             parmtag { "script_callback_language" "python" }         }         groupsimple {             name    "curvature"             label   "Curvature"              parm {                 name    "range"                 label   "Range"                 type    vector2                 size    2                 default { "0.7" "1" }                 range   { -1 1 }                 parmtag { "script_callback_language" "python" }             }         }      }      parm {         name    "label1"         baseparm         label   "Input #1 Label"         invisible         export  all     }     parm {         name    "label2"         baseparm         label   "Input #2 Label"         invisible         export  all     }     parm {         name    "label3"         baseparm         label   "Input #3 Label"         invisible         export  all     }     parm {         name    "label4"         baseparm         label   "Input #4 Label"         invisible         export  all     } ' deformerripple
opparm -V 20.5.522 deformerripple label1 ( 'Sub-Network Input #1' ) label2 ( 'Sub-Network Input #2' ) label3 ( 'Sub-Network Input #3' ) label4 ( 'Sub-Network Input #4' ) Main ( 0 ) amp ( 0.1 ) speed ( 1 ) freq ( 10 ) distance ( 0 1 ) curvature ( 0 ) range ( 0.7 1 )
chlock deformerripple -*
chautoscope deformerripple -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off deformerripple
opexprlanguage -s hscript deformerripple
opuserdata -n '___Version___' -v '20.5.522' deformerripple
opcf deformerripple

# Node output0 (Sop/output)
opadd -e -n output output0
oplocate -x 3.0802100000000001 -y 2.2764700000000002 output0
opspareds "" output0
opparm -V 20.5.522 output0 outputidx ( 0 )
chlock output0 -*
chautoscope output0 -*
opset -d on -r on -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off output0
opexprlanguage -s hscript output0
opuserdata -n '___Version___' -v '20.5.522' output0

# Node attribwrangle1 (Sop/attribwrangle)
opadd -e -n attribwrangle attribwrangle1
oplocate -x 3.0756100000000002 -y 4.1437099999999996 attribwrangle1
opspareds '    group {         name    "folder1"         label   "Code"          parm {             name    "group"             baseparm             label   "Group"             export  none             bindselector uvselect "Modify Attribs"                 "Select the geometry to affect and press Enter to complete."                 0 1 0xffffffff 0 grouptype 0         }         parm {             name    "grouptype"             baseparm             label   "Group Type"             export  none         }         parm {             name    "class"             baseparm             label   "Run Over"             export  none         }         parm {             name    "vex_numcount"             baseparm             label   "Number Count"             export  none         }         parm {             name    "vex_threadjobsize"             baseparm             label   "Thread Job Size"             export  none         }         parm {             name    "snippet"             baseparm             label   "VEXpression"             export  all         }         parm {             name    "exportlist"             baseparm             label   "Attributes to Create"             export  none         }         parm {             name    "vex_strict"             baseparm             label   "Enforce Prototypes"             export  none         }     }      group {         name    "folder1_1"         label   "Bindings"          parm {             name    "autobind"             baseparm             label   "Autobind by Name"             export  none         }         multiparm {             name    "bindings"             label    "Number of Bindings"             baseparm             default 0             parmtag { "autoscope" "0000000000000000" }             parmtag { "multistartoffset" "1" }              parm {                 name    "bindname#"                 baseparm                 label   "Attribute Name"                 export  none             }             parm {                 name    "bindparm#"                 baseparm                 label   "VEX Parameter"                 export  none             }         }          parm {             name    "groupautobind"             baseparm             label   "Autobind Groups by Name"             export  none         }         multiparm {             name    "groupbindings"             label    "Group Bindings"             baseparm             default 0             parmtag { "autoscope" "0000000000000000" }             parmtag { "multistartoffset" "1" }              parm {                 name    "bindgroupname#"                 baseparm                 label   "Group Name"                 export  none             }             parm {                 name    "bindgroupparm#"                 baseparm                 label   "VEX Parameter"                 export  none             }         }          parm {             name    "vex_cwdpath"             baseparm             label   "Evaluation Node Path"             export  none         }         parm {             name    "vex_outputmask"             baseparm             label   "Export Parameters"             export  none         }         parm {             name    "vex_updatenmls"             baseparm             label   "Update Normals If Displaced"             export  none         }         parm {             name    "vex_matchattrib"             baseparm             label   "Attribute to Match"             export  none         }         parm {             name    "vex_inplace"             baseparm             label   "Compute Results In Place"             export  none         }         parm {             name    "vex_selectiongroup"             baseparm             label   "Output Selection Group"             export  none         }     }      parm {         name    "Amplitude"         label   "Amplitude"         type    float         default { "0" }         range   { 0 1 }     }     parm {         name    "Speed"         label   "Speed"         type    float         default { "0" }         range   { 0 1 }     }     parm {         name    "Minrange"         label   "Minrange"         type    float         default { "0" }         range   { 0 1 }     }     parm {         name    "Maxrange"         label   "Maxrange"         type    float         default { "0" }         range   { 0 1 }     }     parm {         name    "Frequency"         label   "Frequency"         type    float         default { "0" }         range   { 0 1 }     }     parm {         name    "vex_precision"         baseparm         label   "VEX Precision"         export  none     } ' attribwrangle1
opparm attribwrangle1  bindings ( 0 ) groupbindings ( 0 )
chblockbegin
chadd -t 0 0 attribwrangle1 Amplitude
chkey -t 0 -v 0.10000000000000001 -m 0 -a 0 -A 0 -T a  -F 'ch("../amp")' attribwrangle1/Amplitude
chadd -t 0 0 attribwrangle1 Speed
chkey -t 0 -v 10 -m 0 -a 0 -A 0 -T a  -F 'ch("../speed")' attribwrangle1/Speed
chadd -t 0 0 attribwrangle1 Minrange
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F 'ch("../distancex")' attribwrangle1/Minrange
chadd -t 0 0 attribwrangle1 Maxrange
chkey -t 0 -v 1 -m 0 -a 0 -A 0 -T a  -F 'ch("../distancey")' attribwrangle1/Maxrange
chadd -t 0 0 attribwrangle1 Frequency
chkey -t 0 -v 10 -m 0 -a 0 -A 0 -T a  -F 'ch("../freq")' attribwrangle1/Frequency
chblockend
opparm attribwrangle1 folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( point ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( 'float amp       = ch("Amplitude");\nfloat speed     = ch("Speed");\nfloat minrange  = ch("Minrange");\nfloat maxrange  = ch("Maxrange");\nfloat direction = ch("Direction");\nfloat freq      = ch("Frequency");\n\nfloat array[];\n\nfor(int i = 0; i < npoints(1); i++){\n    \n    vector pos = point(1,"P",i);\n    float distance = distance(pos,@P);\n    append(array, distance);\n    \n    }\n    \n    float falloff, phase, sine;  \n    \n    foreach(int i; float d; array){\n      \n    falloff = fit(d,minrange,maxrange,1,0);\n    phase = d * freq + @Time * -1 * speed;\n    sine = sin(phase);\n    @P.y += 1 * sine * falloff * amp;\n    \n    }\n    ' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto ) folder1 ( 0 0 ) Amplitude ( Amplitude ) Speed ( Speed ) Minrange ( Minrange ) Maxrange ( Maxrange ) Frequency ( Frequency )
chlock attribwrangle1 -*
chautoscope attribwrangle1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off attribwrangle1
opexprlanguage -s hscript attribwrangle1
opuserdata -n '___Version___' -v '' attribwrangle1

# Node attribwrangle2 (Sop/attribwrangle)
opadd -e -n attribwrangle attribwrangle2
oplocate -x 3.0756100000000002 -y 3.14371 attribwrangle2
opspareds '    group {         name    "folder1"         label   "Code"          parm {             name    "group"             baseparm             label   "Group"             export  none             bindselector uvselect "Modify Attribs"                 "Select the geometry to affect and press Enter to complete."                 0 1 0xffffffff 0 grouptype 0         }         parm {             name    "grouptype"             baseparm             label   "Group Type"             export  none         }         parm {             name    "class"             baseparm             label   "Run Over"             export  none         }         parm {             name    "vex_numcount"             baseparm             label   "Number Count"             export  none         }         parm {             name    "vex_threadjobsize"             baseparm             label   "Thread Job Size"             export  none         }         parm {             name    "snippet"             baseparm             label   "VEXpression"             export  all         }         parm {             name    "exportlist"             baseparm             label   "Attributes to Create"             export  none         }         parm {             name    "vex_strict"             baseparm             label   "Enforce Prototypes"             export  none         }     }      group {         name    "folder1_1"         label   "Bindings"          parm {             name    "autobind"             baseparm             label   "Autobind by Name"             export  none         }         multiparm {             name    "bindings"             label    "Number of Bindings"             baseparm             default 0             parmtag { "autoscope" "0000000000000000" }             parmtag { "multistartoffset" "1" }              parm {                 name    "bindname#"                 baseparm                 label   "Attribute Name"                 export  none             }             parm {                 name    "bindparm#"                 baseparm                 label   "VEX Parameter"                 export  none             }         }          parm {             name    "groupautobind"             baseparm             label   "Autobind Groups by Name"             export  none         }         multiparm {             name    "groupbindings"             label    "Group Bindings"             baseparm             default 0             parmtag { "autoscope" "0000000000000000" }             parmtag { "multistartoffset" "1" }              parm {                 name    "bindgroupname#"                 baseparm                 label   "Group Name"                 export  none             }             parm {                 name    "bindgroupparm#"                 baseparm                 label   "VEX Parameter"                 export  none             }         }          parm {             name    "vex_cwdpath"             baseparm             label   "Evaluation Node Path"             export  none         }         parm {             name    "vex_outputmask"             baseparm             label   "Export Parameters"             export  none         }         parm {             name    "vex_updatenmls"             baseparm             label   "Update Normals If Displaced"             export  none         }         parm {             name    "vex_matchattrib"             baseparm             label   "Attribute to Match"             export  none         }         parm {             name    "vex_inplace"             baseparm             label   "Compute Results In Place"             export  none         }         parm {             name    "vex_selectiongroup"             baseparm             label   "Output Selection Group"             export  none         }     }      parm {         name    "Min"         label   "Min"         type    float         default { "0" }         range   { 0 1 }     }     parm {         name    "Max"         label   "Max"         type    float         default { "0" }         range   { 0 1 }     }     parm {         name    "vex_precision"         baseparm         label   "VEX Precision"         export  none     } ' attribwrangle2
opparm attribwrangle2  bindings ( 0 ) groupbindings ( 0 )
chblockbegin
chadd -t 0 0 attribwrangle2 Min
chkey -t 0 -v 0.69999999999999996 -m 0 -a 0 -A 0 -T a  -F 'ch("../rangex")' attribwrangle2/Min
chadd -t 0 0 attribwrangle2 Max
chkey -t 0 -v 1 -m 0 -a 0 -A 0 -T a  -F 'ch("../rangey")' attribwrangle2/Max
chblockend
opparm attribwrangle2 folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( point ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( 'vector up = set(0,1,0); float min = ch("Min"); float max = ch("Max");\nfloat dot = dot(up,@N); float threshold = fit(dot,min,max,0,1);\n@Cd *= threshold;' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto ) folder1 ( 0 0 ) Min ( Min ) Max ( Max )
chlock attribwrangle2 -*
chautoscope attribwrangle2 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off attribwrangle2
opexprlanguage -s hscript attribwrangle2
opuserdata -n '___Version___' -v '' attribwrangle2
oporder -e output0 attribwrangle1 attribwrangle2 
opcf ..

# Node solverdecay (Sop/subnet)
opadd -e -n subnet solverdecay
oplocate -x 1.5 -y -5.1500000000000004 solverdecay
opspareds '    groupsimple {         name    "Main"         label   "Decay Solver"          parm {             name    "attribute"             label   "Attribute"             type    string             default { "" }             parmtag { "editor" "0" }             parmtag { "script_callback_language" "python" }         }         parm {             name    "sepparm"             label   "Separator"             type    separator             default { "" }         }         parm {             name    "startframe"             label   "Start Frame"             type    integer             default { "1" }             range   { 0 10 }             parmtag { "script_callback_language" "python" }         }         parm {             name    "percent"             label   "Percent"             type    float             default { "0.9" }             range   { 0 2 }         }     }      parm {         name    "label1"         baseparm         label   "Input #1 Label"         invisible         export  all     }     parm {         name    "label2"         baseparm         label   "Input #2 Label"         invisible         export  all     }     parm {         name    "label3"         baseparm         label   "Input #3 Label"         invisible         export  all     }     parm {         name    "label4"         baseparm         label   "Input #4 Label"         invisible         export  all     } ' solverdecay
opparm -V 20.5.522 solverdecay label1 ( 'Sub-Network Input #1' ) label2 ( 'Sub-Network Input #2' ) label3 ( 'Sub-Network Input #3' ) label4 ( 'Sub-Network Input #4' ) Main ( 0 ) attribute ( "" ) sepparm ( ) startframe ( 1 ) percent ( 0.9 )
chlock solverdecay -*
chautoscope solverdecay -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off solverdecay
opexprlanguage -s hscript solverdecay
opuserdata -n '___Version___' -v '20.5.522' solverdecay
opcf solverdecay

# Node output0 (Sop/output)
opadd -e -n output output0
oplocate -x 0 -y 3.8999999999999999 output0
opspareds "" output0
opparm -V 20.5.522 output0 outputidx ( 0 )
chlock output0 -*
chautoscope output0 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off output0
opexprlanguage -s hscript output0
opuserdata -n '___Version___' -v '20.5.522' output0

# Node solver1 (Sop/solver)
opadd -e -n solver solver1
oplocate -x 1.72567 -y 4.7270599999999998 solver1
opspareds "" solver1
chblockbegin
chadd -t 0 0 solver1 startframe
chkey -t 0 -v 1 -m 0 -a 0 -A 0 -T a  -F 'ch("../startframe")' solver1/startframe
chblockend
opparm solver1 resimulate ( 0 ) useinitialsop ( off ) initialsop ( "" ) startframe ( startframe ) substep ( 1 ) cacheenabled ( on ) cachetodisk ( off ) cachemaxsize ( 5000 )
chlock solver1 -*
chautoscope solver1 -*
opset -d on -r on -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off solver1
opexprlanguage -s hscript solver1
opuserdata -n '___Version___' -v '' solver1

# Editable subnode
opcf solver1/d

# Node s (Dop/sopsolver)
opadd -e -n sopsolver s
oplocate -x 1.88226 -y 0.51761800000000002 s
opspareds "" s
opparm s  numinputs ( 0 ) numoutputs ( 0 ) numstamps ( 0 )
opparm -V 20.5.522 s parmop_usesoppath ( default ) usesoppath ( off ) parmop_soppath ( default ) soppath ( "" ) parmop_datapath ( default ) datapath ( Geometry ) parmop_doinvoke ( default ) doinvoke ( off ) parmop_primaryinputname ( default ) primaryinputname ( data ) parmop_numinputs ( default ) numinputs ( 0 ) parmop_numoutputs ( default ) numoutputs ( 0 ) parmop_transformsopoutput ( default ) transformsopoutput ( on ) parmop_solveinitframe ( default ) solveinitframe ( on ) parmop_numstamps ( default ) numstamps ( 0 ) parmop_usetimestep ( default ) usetimestep ( on ) parmop_timescale ( default ) timescale ( 1 ) defaultparmop ( initial ) addaffectors ( on ) group ( * ) dataname ( '$OS' ) uniquedataname ( on ) solverperobject ( off )
chlock s -*
chautoscope s -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 s
opset -d on -r off -h off -f off -y off -t off -l off -s off -u off -F off -c on -e on -b off s
opexprlanguage -s hscript s
opuserdata -n '___Version___' -v '20.5.522' s
opcf s

# Node OUT (Sop/output)
opadd -e -n output OUT
oplocate -x 2.95383 -y -3.6552199999999999 OUT
opspareds "" OUT
opparm -V 20.5.522 OUT outputidx ( 0 )
chlock OUT -*
chautoscope OUT -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off OUT
opexprlanguage -s hscript OUT
opuserdata -n '___Version___' -v '20.5.522' OUT

# Node Prev_Frame1 (Sop/dopimport)
opadd -e -n dopimport Prev_Frame1
oplocate -x 0 -y 0 Prev_Frame1
opspareds "" Prev_Frame1
chblockbegin
chadd -t 0 0 Prev_Frame1 integrateovertime
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '1/$FPS' Prev_Frame1/integrateovertime
chblockend
opparm -V 20.5.522 Prev_Frame1 doppath ( "" ) objpattern ( * ) singleobject ( off ) importstyle ( xform ) pivot ( centroid ) viewportlod ( full ) importbyname ( on ) objectnames ( dopobject ) geodatapath ( "" ) transferattributes ( "" ) transfergroups ( "" ) inverseop ( off ) doposxform ( on ) doxform ( on ) keepworldspacepos ( on ) centeratpivot ( on ) addname ( off ) adddopobjectname ( on ) adddopobjectid ( off ) addtoexistingvel ( on ) deleteabandoned ( on ) pointvels ( instant ) integrateovertime ( integrateovertime ) donotsim ( off )
chlock Prev_Frame1 -*
chautoscope Prev_Frame1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off Prev_Frame1
opexprlanguage -s hscript Prev_Frame1
opuserdata -n '___Version___' -v '20.5.522' Prev_Frame1

# Node Input_5 (Sop/object_merge)
opadd -e -n object_merge Input_5
oplocate -x 0 -y 0 Input_5
opspareds "" Input_5
opparm Input_5  numobj ( 1 )
opparm -V 20.5.522 Input_5 numobj ( 1 ) _separator ( ) xformtype ( object ) xformpath ( "" ) invertxform ( off ) createptgroups ( off ) ptgroupprefix ( _ptgrp_ ) createprimgroups ( off ) primgroupprefix ( _primgrp_ ) verbosegroups ( off ) suffixfirstgroup ( on ) createptstring ( off ) createprimstring ( off ) pathattrib ( objname ) pack ( off ) pivot ( centroid ) viewportlod ( full ) addpath ( on ) enable1 ( on ) objpath1 ( "" ) group1 ( "" ) expand1 ( off )
chlock Input_5 -*
chautoscope Input_5 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off Input_5
opexprlanguage -s hscript Input_5
opuserdata -n '___Version___' -v '20.5.522' Input_5

# Node Input_6 (Sop/object_merge)
opadd -e -n object_merge Input_6
oplocate -x 0 -y 0 Input_6
opspareds "" Input_6
opparm Input_6  numobj ( 1 )
opparm -V 20.5.522 Input_6 numobj ( 1 ) _separator ( ) xformtype ( object ) xformpath ( "" ) invertxform ( off ) createptgroups ( off ) ptgroupprefix ( _ptgrp_ ) createprimgroups ( off ) primgroupprefix ( _primgrp_ ) verbosegroups ( off ) suffixfirstgroup ( on ) createptstring ( off ) createprimstring ( off ) pathattrib ( objname ) pack ( off ) pivot ( centroid ) viewportlod ( full ) addpath ( on ) enable1 ( on ) objpath1 ( "" ) group1 ( "" ) expand1 ( off )
chlock Input_6 -*
chautoscope Input_6 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off Input_6
opexprlanguage -s hscript Input_6
opuserdata -n '___Version___' -v '20.5.522' Input_6

# Node Input_7 (Sop/object_merge)
opadd -e -n object_merge Input_7
oplocate -x 0 -y 0 Input_7
opspareds "" Input_7
opparm Input_7  numobj ( 1 )
opparm -V 20.5.522 Input_7 numobj ( 1 ) _separator ( ) xformtype ( object ) xformpath ( "" ) invertxform ( off ) createptgroups ( off ) ptgroupprefix ( _ptgrp_ ) createprimgroups ( off ) primgroupprefix ( _primgrp_ ) verbosegroups ( off ) suffixfirstgroup ( on ) createptstring ( off ) createprimstring ( off ) pathattrib ( objname ) pack ( off ) pivot ( centroid ) viewportlod ( full ) addpath ( on ) enable1 ( on ) objpath1 ( "" ) group1 ( "" ) expand1 ( off )
chlock Input_7 -*
chautoscope Input_7 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off Input_7
opexprlanguage -s hscript Input_7
opuserdata -n '___Version___' -v '20.5.522' Input_7

# Node Input_8 (Sop/object_merge)
opadd -e -n object_merge Input_8
oplocate -x 0 -y 0 Input_8
opspareds "" Input_8
opparm Input_8  numobj ( 1 )
opparm -V 20.5.522 Input_8 numobj ( 1 ) _separator ( ) xformtype ( object ) xformpath ( "" ) invertxform ( off ) createptgroups ( off ) ptgroupprefix ( _ptgrp_ ) createprimgroups ( off ) primgroupprefix ( _primgrp_ ) verbosegroups ( off ) suffixfirstgroup ( on ) createptstring ( off ) createprimstring ( off ) pathattrib ( objname ) pack ( off ) pivot ( centroid ) viewportlod ( full ) addpath ( on ) enable1 ( on ) objpath1 ( "" ) group1 ( "" ) expand1 ( off )
chlock Input_8 -*
chautoscope Input_8 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off Input_8
opexprlanguage -s hscript Input_8
opuserdata -n '___Version___' -v '20.5.522' Input_8

# Node Prev_Frame (Sop/dopimport::2.0)
opadd -e -n dopimport::2.0 Prev_Frame
oplocate -x 6.2577400000000001 -y 0.93222499999999997 Prev_Frame
opspareds '    parm {         name    "doppath"         baseparm         label   "DOP Network"         export  none     }     parm {         name    "objpattern"         baseparm         label   "Objects"         export  none     }     parm {         name    "relpattern"         baseparm         label   "Relationships"         export  none     }     parm {         name    "donotsim"         baseparm         label   "Do Not Trigger Simulation"         export  none     }     groupsimple {         name    "folder_geometry2"         label   "Geometry"         grouptag { "group_type" "simple" }         grouptag { "sidefx::switcher" "folder_geometry" }          parm {             name    "importstyle"             baseparm             label   "Import Style"             joinnext             export  none         }         parm {             name    "spacer"             baseparm             label   "Spacer"             nolabel             joinnext             export  none         }         parm {             name    "pointsquicksetup"             baseparm             label   "Quick Setup"             nolabel             export  none         }         parm {             name    "geodatapath"             baseparm             label   "Geometry Data Path"             export  none         }         parm {             name    "pack"             baseparm             label   "Pack Geometry Before Merging"             export  none         }         parm {             name    "pivot"             baseparm             label   "Pivot Location"             export  none         }         parm {             name    "viewportlod"             baseparm             label   "Display As"             export  none         }         parm {             name    "adddopobjectpath"             baseparm             label   "Add DOP Object Path Attribute"             export  none         }         parm {             name    "adddopobjectname"             baseparm             label   "Add DOP Object Name Attribute"             nolabel             joinnext             export  none         }         parm {             name    "dopobjectnameattrib"             baseparm             label   "DOP Object Name Attribute"             export  none         }         parm {             name    "adddopdatapath"             baseparm             label   "Add DOP Data Path Attribute"             nolabel             joinnext             export  none         }         parm {             name    "dopdatapathattrib"             baseparm             label   "DOP Data Path Attribute"             export  none         }         parm {             name    "transferattributes"             baseparm             label   "Transfer Attributes"             export  none         }         parm {             name    "transfergroups"             baseparm             label   "Transfer Groups"             export  none         }     }      groupsimple {         name    "folder_xform2"         label   "Transform"         grouptag { "group_type" "simple" }         grouptag { "sidefx::switcher" "folder_xform" }          parm {             name    "doposxform"             baseparm             label   "Transform Geometry With Position Data"             export  none         }         parm {             name    "dogeoxform"             baseparm             label   "Transform Geometry With Geometry Data"             export  none         }         parm {             name    "keepworldspacepos"             baseparm             label   "Preserve World Space Positions"             export  none         }         parm {             name    "pointvels"             baseparm             label   "Point Velocities"             export  none         }         parm {             name    "integrateovertime"             baseparm             label   "Integrate Over Time"             export  none         }         parm {             name    "addtoexistingvel"             baseparm             label   "Add to Existing Velocity Attributes"             export  none         }     }      parm {         name    "doxform"         label   "doxform"         type    float         default { "0" }         range   { 0 10 }     } ' Prev_Frame
chblockbegin
chadd -t 0 0 Prev_Frame doposxform
chkey -t 0 -v 1 -m 0 -a 0 -A 0 -T a  -F 'ch("../transformsopoutput")' Prev_Frame/doposxform
chadd -t 0 0 Prev_Frame integrateovertime
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '1/$FPS' Prev_Frame/integrateovertime
chadd -t 0 0 Prev_Frame doxform
chkey -t 0 -v 1 -m 0 -a 0 -A 0 -T a  -F 'ch("../transformsopoutput")' Prev_Frame/doxform
chblockend
opparm -V 20.5.522 Prev_Frame doppath ( '`stamps("..", "DOPNET", "../..")`' ) objpattern ( '`stamps("..", "OBJID", arg(dopnodeobjs(".."),0))`' ) relpattern ( "" ) donotsim ( on ) folder_geometry ( 0 ) importstyle ( fetch ) spacer ( "" ) pointsquicksetup ( menu ) geodatapath ( '`stamps("..", "DATANAME", chs("../datapath"))`' ) pack ( off ) pivot ( centroid ) viewportlod ( full ) adddopobjectpath ( off ) adddopobjectname ( off ) dopobjectnameattrib ( dopobjectname ) adddopdatapath ( off ) dopdatapathattrib ( dopdatapath ) transferattributes ( "" ) transfergroups ( "" ) folder_xform ( 0 ) doposxform ( doposxform ) dogeoxform ( on ) keepworldspacepos ( on ) pointvels ( none ) integrateovertime ( integrateovertime ) addtoexistingvel ( on ) folder_geometry2 ( 0 ) folder_xform2 ( 0 ) doxform ( doxform )
chlock Prev_Frame -*
chautoscope Prev_Frame -*
opcolor -c 0.60000002384185791 0.40000000596046448 1 Prev_Frame
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F off -c on -e on -b off Prev_Frame
opexprlanguage -s hscript Prev_Frame
opuserdata -n '___Version___' -v '20.5.522' Prev_Frame

# Node Input_1 (Sop/object_merge)
opadd -e -n object_merge Input_1
oplocate -x 3.56636 -y -0.91110800000000003 Input_1
opspareds "" Input_1
opparm Input_1  numobj ( 1 )
opparm -V 20.5.522 Input_1 numobj ( 1 ) _separator ( ) xformtype ( object ) xformpath ( "" ) invertxform ( off ) createptgroups ( off ) ptgroupprefix ( _ptgrp_ ) createprimgroups ( off ) primgroupprefix ( _primgrp_ ) verbosegroups ( off ) suffixfirstgroup ( on ) createptstring ( off ) createprimstring ( off ) pathattrib ( objname ) pack ( off ) pivot ( centroid ) viewportlod ( full ) addpath ( on ) enable1 ( on ) objpath1 ( '`opinputpath("../..", 0)`' ) group1 ( "" ) expand1 ( off )
chlock Input_1 -*
chautoscope Input_1 -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 Input_1
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F off -c on -e on -b off Input_1
opexprlanguage -s hscript Input_1
opuserdata -n '___Version___' -v '20.5.522' Input_1

# Node Input_2 (Sop/object_merge)
opadd -e -n object_merge Input_2
oplocate -x 4.7192999999999996 -y -0.91110800000000003 Input_2
opspareds "" Input_2
opparm Input_2  numobj ( 1 )
opparm -V 20.5.522 Input_2 numobj ( 1 ) _separator ( ) xformtype ( object ) xformpath ( "" ) invertxform ( off ) createptgroups ( off ) ptgroupprefix ( _ptgrp_ ) createprimgroups ( off ) primgroupprefix ( _primgrp_ ) verbosegroups ( off ) suffixfirstgroup ( on ) createptstring ( off ) createprimstring ( off ) pathattrib ( objname ) pack ( off ) pivot ( centroid ) viewportlod ( full ) addpath ( on ) enable1 ( on ) objpath1 ( '`opinputpath("../..", 1)`' ) group1 ( "" ) expand1 ( off )
chlock Input_2 -*
chautoscope Input_2 -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 Input_2
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F off -c on -e on -b off Input_2
opexprlanguage -s hscript Input_2
opuserdata -n '___Version___' -v '20.5.522' Input_2

# Node Input_3 (Sop/object_merge)
opadd -e -n object_merge Input_3
oplocate -x 4.7192999999999996 -y -0.120501 Input_3
opspareds "" Input_3
opparm Input_3  numobj ( 1 )
opparm -V 20.5.522 Input_3 numobj ( 1 ) _separator ( ) xformtype ( object ) xformpath ( "" ) invertxform ( off ) createptgroups ( off ) ptgroupprefix ( _ptgrp_ ) createprimgroups ( off ) primgroupprefix ( _primgrp_ ) verbosegroups ( off ) suffixfirstgroup ( on ) createptstring ( off ) createprimstring ( off ) pathattrib ( objname ) pack ( off ) pivot ( centroid ) viewportlod ( full ) addpath ( on ) enable1 ( on ) objpath1 ( '`opinputpath("../..", 2)`' ) group1 ( "" ) expand1 ( off )
chlock Input_3 -*
chautoscope Input_3 -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 Input_3
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F off -c on -e on -b off Input_3
opexprlanguage -s hscript Input_3
opuserdata -n '___Version___' -v '20.5.522' Input_3

# Node Input_4 (Sop/object_merge)
opadd -e -n object_merge Input_4
oplocate -x 4.7192999999999996 -y 0.68027400000000005 Input_4
opspareds "" Input_4
opparm Input_4  numobj ( 1 )
opparm -V 20.5.522 Input_4 numobj ( 1 ) _separator ( ) xformtype ( object ) xformpath ( "" ) invertxform ( off ) createptgroups ( off ) ptgroupprefix ( _ptgrp_ ) createprimgroups ( off ) primgroupprefix ( _primgrp_ ) verbosegroups ( off ) suffixfirstgroup ( on ) createptstring ( off ) createprimstring ( off ) pathattrib ( objname ) pack ( off ) pivot ( centroid ) viewportlod ( full ) addpath ( on ) enable1 ( on ) objpath1 ( '`opinputpath("../..", 3)`' ) group1 ( "" ) expand1 ( off )
chlock Input_4 -*
chautoscope Input_4 -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 Input_4
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F off -c on -e on -b off Input_4
opexprlanguage -s hscript Input_4
opuserdata -n '___Version___' -v '20.5.522' Input_4

# Node attribwrangle3 (Sop/attribwrangle)
opadd -e -n attribwrangle attribwrangle3
oplocate -x 4.7175500000000001 -y -1.87547 attribwrangle3
opspareds '    group {         name    "folder1"         label   "Code"          parm {             name    "group"             baseparm             label   "Group"             export  none             bindselector uvselect "Modify Attribs"                 "Select the geometry to affect and press Enter to complete."                 0 1 0xffffffff 0 grouptype 0         }         parm {             name    "grouptype"             baseparm             label   "Group Type"             export  none         }         parm {             name    "class"             baseparm             label   "Run Over"             export  none         }         parm {             name    "vex_numcount"             baseparm             label   "Number Count"             export  none         }         parm {             name    "vex_threadjobsize"             baseparm             label   "Thread Job Size"             export  none         }         parm {             name    "snippet"             baseparm             label   "VEXpression"             export  all         }         parm {             name    "exportlist"             baseparm             label   "Attributes to Create"             export  none         }         parm {             name    "vex_strict"             baseparm             label   "Enforce Prototypes"             export  none         }     }      group {         name    "folder1_1"         label   "Bindings"          parm {             name    "autobind"             baseparm             label   "Autobind by Name"             export  none         }         multiparm {             name    "bindings"             label    "Number of Bindings"             baseparm             default 0             parmtag { "autoscope" "0000000000000000" }             parmtag { "multistartoffset" "1" }              parm {                 name    "bindname#"                 baseparm                 label   "Attribute Name"                 export  none             }             parm {                 name    "bindparm#"                 baseparm                 label   "VEX Parameter"                 export  none             }         }          parm {             name    "groupautobind"             baseparm             label   "Autobind Groups by Name"             export  none         }         multiparm {             name    "groupbindings"             label    "Group Bindings"             baseparm             default 0             parmtag { "autoscope" "0000000000000000" }             parmtag { "multistartoffset" "1" }              parm {                 name    "bindgroupname#"                 baseparm                 label   "Group Name"                 export  none             }             parm {                 name    "bindgroupparm#"                 baseparm                 label   "VEX Parameter"                 export  none             }         }          parm {             name    "vex_cwdpath"             baseparm             label   "Evaluation Node Path"             export  none         }         parm {             name    "vex_outputmask"             baseparm             label   "Export Parameters"             export  none         }         parm {             name    "vex_updatenmls"             baseparm             label   "Update Normals If Displaced"             export  none         }         parm {             name    "vex_matchattrib"             baseparm             label   "Attribute to Match"             export  none         }         parm {             name    "vex_inplace"             baseparm             label   "Compute Results In Place"             export  none         }         parm {             name    "vex_selectiongroup"             baseparm             label   "Output Selection Group"             export  none         }         parm {             name    "vex_precision"             baseparm             label   "VEX Precision"             export  none         }     }      parm {         name    "Percent"         label   "Percent"         type    float         default { "0" }         range   { 0 2 }     }     parm {         name    "Threshold"         label   "Threshold"         type    float         default { "0" }         range   { 0 1 }     }     parm {         name    "Input"         label   "Input"         type    string         default { "" }     } ' attribwrangle3
opparm attribwrangle3  bindings ( 0 ) groupbindings ( 0 )
chblockbegin
chadd -t 0 0 attribwrangle3 Percent
chkey -t 0 -v 1 -m 0 -a 0 -A 0 -T a  -F 'ch("../../../../percent")' attribwrangle3/Percent
chblockend
opparm attribwrangle3 folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( point ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( '//\nstring input = chs(\'Input\');\nfloat inbound = point(0, input,@ptnum);\nfloat last = point(1, input,@ptnum);\nfloat this = max(inbound,last);\n\n//\nfloat a = ch(\'Percent\');\nthis *= a;\n\n//\n//if (dumc < ch(\'Threshold\')) dumc = 0;\nsetpointattrib(0, input, @ptnum, this,\'set\');\n' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto ) folder1 ( 0 0 ) Percent ( Percent ) Threshold ( 0.01 ) Input ( '`chs("../../../../attribute")`' )
chlock attribwrangle3 -*
chautoscope attribwrangle3 -*
opset -d on -r on -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off attribwrangle3
opexprlanguage -s hscript attribwrangle3
opuserdata -n '___Version___' -v '' attribwrangle3

# Node output0 (Sop/output)
opadd -e -n output output0
oplocate -x 4.7205500000000002 -y -3.8942199999999998 output0
opspareds "" output0
opparm -V 20.5.522 output0 outputidx ( 0 )
chlock output0 -*
chautoscope output0 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off output0
opexprlanguage -s hscript output0
opuserdata -n '___Version___' -v '20.5.522' output0
oporder -e OUT Prev_Frame1 Input_5 Input_6 Input_7 Input_8 Prev_Frame Input_1 Input_2 Input_3 Input_4 attribwrangle3 output0 
opcf ..

# End of editable subnode
opcf ../..

oporder -e output0 solver1 
opcf ..

# Node isolatecorners (Sop/subnet)
opadd -e -n subnet isolatecorners
oplocate -x 9.5 -y -3.1499999999999999 isolatecorners
opspareds '    groupsimple {         name    "Main"         label   "Isolate Corners"          parm {             name    "counts"             label   "Count"             type    integer             default { "4" }             help    "Corners can not be connected to more then or equal to this many other points."             range   { 0 10 }             parmtag { "script_callback_language" "python" }         }         parm {             name    "degrees"             label   "Degrees"             type    float             default { "179" }             help    "The angle between any pair of edge vectors can not be equal to or greater then this amount."             range   { 0 10 }             parmtag { "script_callback_language" "python" }         }     }      parm {         name    "label1"         baseparm         label   "Input #1 Label"         invisible         export  all     }     parm {         name    "label2"         baseparm         label   "Input #2 Label"         invisible         export  all     }     parm {         name    "label3"         baseparm         label   "Input #3 Label"         invisible         export  all     }     parm {         name    "label4"         baseparm         label   "Input #4 Label"         invisible         export  all     } ' isolatecorners
opparm -V 20.5.522 isolatecorners label1 ( 'Sub-Network Input #1' ) label2 ( 'Sub-Network Input #2' ) label3 ( 'Sub-Network Input #3' ) label4 ( 'Sub-Network Input #4' ) Main ( 0 ) counts ( 4 ) degrees ( 179 )
chlock isolatecorners -*
chautoscope isolatecorners -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off isolatecorners
opexprlanguage -s hscript isolatecorners
opuserdata -n '___Version___' -v '20.5.522' isolatecorners
opcf isolatecorners

# Node output0 (Sop/output)
opadd -e -n output output0
oplocate -x 0 -y 3.8999999999999999 output0
opspareds "" output0
opparm -V 20.5.522 output0 outputidx ( 0 )
chlock output0 -*
chautoscope output0 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off output0
opexprlanguage -s hscript output0
opuserdata -n '___Version___' -v '20.5.522' output0

# Node isolate_corners (Sop/attribwrangle)
opadd -e -n attribwrangle isolate_corners
oplocate -x 1.5814900000000001 -y 4.9142900000000003 isolate_corners
opspareds '    group {         name    "folder1"         label   "Code"          parm {             name    "group"             baseparm             label   "Group"             export  none             bindselector uvselect "Modify Attribs"                 "Select the geometry to affect and press Enter to complete."                 0 1 0xffffffff 0 grouptype 0         }         parm {             name    "grouptype"             baseparm             label   "Group Type"             export  none         }         parm {             name    "class"             baseparm             label   "Run Over"             export  none         }         parm {             name    "vex_numcount"             baseparm             label   "Number Count"             export  none         }         parm {             name    "vex_threadjobsize"             baseparm             label   "Thread Job Size"             export  none         }         groupsimple {             name    "folder_generatedparms_snippet"             label   "Generated Channel Parameters"             grouptag { "sidefx::look" "blank" }              parm {                 name    "CountThreshold"                 label   "Countthreshold"                 type    integer                 default { "0" }                 range   { 0 10 }             }             parm {                 name    "Degrees"                 label   "Degrees"                 type    float                 default { "0" }                 range   { 0 1 }             }         }          parm {             name    "snippet"             baseparm             label   "VEXpression"             export  all         }         parm {             name    "exportlist"             baseparm             label   "Attributes to Create"             export  none         }         parm {             name    "vex_strict"             baseparm             label   "Enforce Prototypes"             export  none         }     }      group {         name    "folder1_1"         label   "Bindings"          parm {             name    "autobind"             baseparm             label   "Autobind by Name"             export  none         }         multiparm {             name    "bindings"             label    "Number of Bindings"             baseparm             default 0             parmtag { "autoscope" "0000000000000000" }             parmtag { "multistartoffset" "1" }              parm {                 name    "bindname#"                 baseparm                 label   "Attribute Name"                 export  none             }             parm {                 name    "bindparm#"                 baseparm                 label   "VEX Parameter"                 export  none             }         }          parm {             name    "groupautobind"             baseparm             label   "Autobind Groups by Name"             export  none         }         multiparm {             name    "groupbindings"             label    "Group Bindings"             baseparm             default 0             parmtag { "autoscope" "0000000000000000" }             parmtag { "multistartoffset" "1" }              parm {                 name    "bindgroupname#"                 baseparm                 label   "Group Name"                 export  none             }             parm {                 name    "bindgroupparm#"                 baseparm                 label   "VEX Parameter"                 export  none             }         }          parm {             name    "vex_cwdpath"             baseparm             label   "Evaluation Node Path"             export  none         }         parm {             name    "vex_outputmask"             baseparm             label   "Export Parameters"             export  none         }         parm {             name    "vex_updatenmls"             baseparm             label   "Update Normals If Displaced"             export  none         }         parm {             name    "vex_matchattrib"             baseparm             label   "Attribute to Match"             export  none         }         parm {             name    "vex_inplace"             baseparm             label   "Compute Results In Place"             export  none         }         parm {             name    "vex_selectiongroup"             baseparm             label   "Output Selection Group"             export  none         }         parm {             name    "vex_precision"             baseparm             label   "VEX Precision"             export  none         }     }  ' isolate_corners
opparm isolate_corners  bindings ( 0 ) groupbindings ( 0 )
chblockbegin
chadd -t 0 0 isolate_corners CountThreshold
chkey -t 0 -v 5 -m 0 -a 0 -A 0 -T a  -F 'ch("../counts")' isolate_corners/CountThreshold
chadd -t 0 0 isolate_corners Degrees
chkey -t 0 -v 125 -m 0 -a 0 -A 0 -T a  -F 'ch("../degrees")' isolate_corners/Degrees
chblockend
opparm isolate_corners folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( point ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( '// initialize all points as corners\ni@corner = 1;\n\n// number of chums, list of chum ptnum\nint count = neighbourcount(0, @ptnum); int chums [] = neighbours(0, @ptnum);\n\n// count threshold, curvature threshold\nint t = chi(\'CountThreshold\'); float alpha = ch(\'Degrees\');\n\n// make array of edge vectors\nvector edges [] = array();\nforeach ( int i; chums ) {\n    vector q = point(0, \'P\', i);\n    vector w = normalize(q - @P); append(edges, w);\n                         }\n                         \n// chum count condition\ncount >= t ? @corner = 0 : -1; int stop = 0;\n\n// curvature condition\nif ( @corner == 1 ) {\n\n    for( int u; u < len(edges) - 1; u++ ) {\n        vector e = getcomp(edges, u);\n        \n        for( int j = 1; j < len(edges) - u; j++ ) {\n            vector r    = getcomp(edges, u + j);\n            float  beta = degrees(acos(dot(e, r)));\n            \n            if ( beta >= alpha ) {\n                @corner = 0;\n                stop    = 1;\n                                 }\n                                 \n            if ( stop == 1 ) break; \n                                              }\n            if ( stop == 1 ) break;                \n                                          }\n\n                    }\n' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto ) folder1 ( 0 0 ) folder_generatedparms_snippet ( 0 ) CountThreshold ( CountThreshold ) Degrees ( Degrees )
chlock isolate_corners -*
chautoscope isolate_corners -*
opset -d on -r on -h off -f off -y off -t on -l off -s off -u off -F on -c on -e on -b off isolate_corners
opexprlanguage -s hscript isolate_corners
opuserdata -n '___Version___' -v '' isolate_corners
oporder -e output0 isolate_corners 
opcf ..

# Node matrixconstruct (Sop/subnet)
opadd -e -n subnet matrixconstruct
oplocate -x 9.5 -y 1.8500000000000001 matrixconstruct
opspareds '    groupsimple {         name    "Main"         label   "Matrix Construct"          parm {             name    "type"             label   "Geometry Type"             type    ordinal             default { "2" }             menu {                 "0" "Curve"                 "1" "Plane"                 "2" "Object"             }             parmtag { "script_callback_language" "python" }         }         parm {             name    "sepparm"             label   "Separator"             type    separator             default { "" }         }         groupsimple {             name    "curvefolder"             label   "Curve"             hidewhen "{ type != 0 }"              parm {                 name    "curvemode"                 label   "Mode"                 type    ordinal                 joinnext                 default { "0" }                 menu {                     "0" "Orthogonal"                     "1" "Parallel Transport"                 }                 parmtag { "script_callback_language" "python" }             }             parm {                 name    "curveup"                 label   "Up"                 type    vector                 size    3                 default { "0" "1" "0" }                 range   { -1 1 }                 parmtag { "script_callback_language" "python" }             }         }          groupsimple {             name    "plane"             label   "Plane"             hidewhen "{ type != 1 }"          }          groupsimple {             name    "object"             label   "Object"             hidewhen "{ type != 2 }"              parm {                 name    "holdframe"                 label   "Hold Frame"                 type    integer                 default { "1" }                 range   { 1 10 }                 parmtag { "script_callback_language" "python" }             }             parm {                 name    "sepparm2"                 label   "Separator"                 type    separator                 default { "" }             }             parm {                 name    "x"                 label   "X"                 type    integer                 joinnext                 default { "2" }                 range   { 0 2 }                 parmtag { "script_callback_language" "python" }             }             parm {                 name    "newparameter4"                 label   "Invert X"                 type    toggle                 nolabel                 default { "off" }                 parmtag { "script_callback_language" "python" }             }             parm {                 name    "y"                 label   "Y"                 type    integer                 joinnext                 default { "1" }                 range   { 0 2 }                 parmtag { "script_callback_language" "python" }             }             parm {                 name    "newparameter5"                 label   "Invert Y"                 type    toggle                 nolabel                 default { "on" }                 parmtag { "script_callback_language" "python" }             }             parm {                 name    "z"                 label   "Z"                 type    integer                 joinnext                 default { "0" }                 range   { 0 2 }                 parmtag { "script_callback_language" "python" }             }             parm {                 name    "newparameter6"                 label   "Invert Z"                 type    toggle                 nolabel                 default { "off" }                 parmtag { "script_callback_language" "python" }             }             parm {                 name    "sepparm3"                 label   "Separator"                 type    separator                 default { "" }             }             parm {                 name    "hold"                 label   "Hold"                 type    toggle                 joinnext                 default { "on" }                 parmtag { "script_callback_language" "python" }             }             parm {                 name    "invert_hold"                 label   "Invert Hold"                 type    toggle                 joinnext                 default { "on" }                 parmtag { "script_callback_language" "python" }             }             parm {                 name    "newparameter"                 label   "Visualize"                 type    toggle                 default { "off" }                 parmtag { "script_callback_language" "python" }             }         }      }      parm {         name    "label1"         baseparm         label   "Input #1 Label"         invisible         export  all     }     parm {         name    "label2"         baseparm         label   "Input #2 Label"         invisible         export  all     }     parm {         name    "label3"         baseparm         label   "Input #3 Label"         invisible         export  all     }     parm {         name    "label4"         baseparm         label   "Input #4 Label"         invisible         export  all     } ' matrixconstruct
opparm -V 20.5.522 matrixconstruct label1 ( 'Sub-Network Input #1' ) label2 ( 'Sub-Network Input #2' ) label3 ( 'Sub-Network Input #3' ) label4 ( 'Sub-Network Input #4' ) Main ( 0 ) type ( 2 ) sepparm ( ) curvefolder ( 0 ) curvemode ( 0 ) curveup ( 0 1 0 ) plane ( 0 ) object ( 0 ) holdframe ( 1 ) sepparm2 ( ) x ( 2 ) newparameter4 ( off ) y ( 1 ) newparameter5 ( on ) z ( 0 ) newparameter6 ( off ) sepparm3 ( ) hold ( on ) invert_hold ( on ) newparameter ( off )
chlock matrixconstruct -*
chautoscope matrixconstruct -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off matrixconstruct
opexprlanguage -s hscript matrixconstruct
opuserdata -n '___Version___' -v '20.5.522' matrixconstruct
opcf matrixconstruct

# Node output0 (Sop/output)
opadd -e -n output output0
oplocate -x 3.5015999999999998 -y 3.15882 output0
opspareds "" output0
opparm -V 20.5.522 output0 outputidx ( 0 )
chlock output0 -*
chautoscope output0 -*
opset -d on -r on -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off output0
opexprlanguage -s hscript output0
opuserdata -n '___Version___' -v '20.5.522' output0

# Node plane (Sop/subnet)
opadd -e -n subnet plane
oplocate -x 3.40802 -y 5.1180899999999996 plane
opspareds "" plane
opparm -V 20.5.522 plane label1 ( 'Sub-Network Input #1' ) label2 ( 'Sub-Network Input #2' ) label3 ( 'Sub-Network Input #3' ) label4 ( 'Sub-Network Input #4' )
chlock plane -*
chautoscope plane -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off plane
opexprlanguage -s hscript plane
opuserdata -n '___Version___' -v '20.5.522' plane
opcf plane

# Node output0 (Sop/output)
opadd -e -n output output0
oplocate -x -2.5 -y -0.14999999999999999 output0
opspareds "" output0
opparm -V 20.5.522 output0 outputidx ( 0 )
chlock output0 -*
chautoscope output0 -*
opset -d on -r on -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off output0
opexprlanguage -s hscript output0
opuserdata -n '___Version___' -v '20.5.522' output0

# Node computecom (Sop/extractcentroid)
opadd -e -n extractcentroid computecom
oplocate -x -2.5 -y 6.8499999999999996 computecom
opspareds "" computecom
opparm -V 20.5.522 computecom partitiontype ( detail ) pieceattrib ( name ) class ( prim ) method ( com ) output ( attrib ) centroidattrib ( com ) transferattributes ( "" ) transfergroups ( "" )
chlock computecom -*
chautoscope computecom -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off computecom
opexprlanguage -s hscript computecom
opuserdata -n '___Version___' -v '20.5.522' computecom

# Node promotecom (Sop/attribwrangle)
opadd -e -n attribwrangle promotecom
oplocate -x -2.5030000000000001 -y 5.8490000000000002 promotecom
opspareds "" promotecom
opparm promotecom  bindings ( 0 ) groupbindings ( 0 )
opparm promotecom folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( point ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( 'v@com = detail(0, \'com\'); removedetailattrib(0, \'com\');' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto )
chlock promotecom -*
chautoscope promotecom -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off promotecom
opexprlanguage -s hscript promotecom
opuserdata -n '___Version___' -v '' promotecom

# Node z (Sop/attribwrangle)
opadd -e -n attribwrangle z
oplocate -x -2.5030000000000001 -y 4.8490000000000002 z
opspareds '    group {         name    "folder1"         label   "Code"          parm {             name    "group"             baseparm             label   "Group"             export  none             bindselector uvselect "Modify Attribs"                 "Select the geometry to affect and press Enter to complete."                 0 1 0xffffffff 0 grouptype 0         }         parm {             name    "grouptype"             baseparm             label   "Group Type"             export  none         }         parm {             name    "class"             baseparm             label   "Run Over"             export  none         }         parm {             name    "vex_numcount"             baseparm             label   "Number Count"             export  none         }         parm {             name    "vex_threadjobsize"             baseparm             label   "Thread Job Size"             export  none         }         groupsimple {             name    "folder_generatedparms_snippet"             label   "Generated Channel Parameters"             grouptag { "sidefx::look" "blank" }          }          parm {             name    "snippet"             baseparm             label   "VEXpression"             export  all         }         parm {             name    "exportlist"             baseparm             label   "Attributes to Create"             export  none         }         parm {             name    "vex_strict"             baseparm             label   "Enforce Prototypes"             export  none         }     }      group {         name    "folder1_1"         label   "Bindings"          parm {             name    "autobind"             baseparm             label   "Autobind by Name"             export  none         }         multiparm {             name    "bindings"             label    "Number of Bindings"             baseparm             default 0             parmtag { "autoscope" "0000000000000000" }             parmtag { "multistartoffset" "1" }              parm {                 name    "bindname#"                 baseparm                 label   "Attribute Name"                 export  none             }             parm {                 name    "bindparm#"                 baseparm                 label   "VEX Parameter"                 export  none             }         }          parm {             name    "groupautobind"             baseparm             label   "Autobind Groups by Name"             export  none         }         multiparm {             name    "groupbindings"             label    "Group Bindings"             baseparm             default 0             parmtag { "autoscope" "0000000000000000" }             parmtag { "multistartoffset" "1" }              parm {                 name    "bindgroupname#"                 baseparm                 label   "Group Name"                 export  none             }             parm {                 name    "bindgroupparm#"                 baseparm                 label   "VEX Parameter"                 export  none             }         }          parm {             name    "vex_cwdpath"             baseparm             label   "Evaluation Node Path"             export  none         }         parm {             name    "vex_outputmask"             baseparm             label   "Export Parameters"             export  none         }         parm {             name    "vex_updatenmls"             baseparm             label   "Update Normals If Displaced"             export  none         }         parm {             name    "vex_matchattrib"             baseparm             label   "Attribute to Match"             export  none         }         parm {             name    "vex_inplace"             baseparm             label   "Compute Results In Place"             export  none         }         parm {             name    "vex_selectiongroup"             baseparm             label   "Output Selection Group"             export  none         }         parm {             name    "vex_precision"             baseparm             label   "VEX Precision"             export  none         }     }  ' z
opparm z  bindings ( 0 ) groupbindings ( 0 )
opparm z folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( point ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( '// assumes logical winding\nint set = npoints(0); int next = @ptnum + 1; v@z;\n\n// if the last point, use difference from first\nif ( @ptnum != set - 1 ) @z = normalize(point(0, \'P\', next) - @P);\nelse @z = normalize(point(0, \'P\', 0) - @P);' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto ) folder1 ( 0 0 ) folder_generatedparms_snippet ( 0 )
chlock z -*
chautoscope z -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off z
opexprlanguage -s hscript z
opuserdata -n '___Version___' -v '' z

# Node y_init (Sop/attribwrangle)
opadd -e -n attribwrangle y_init
oplocate -x -2.5030000000000001 -y 3.8490000000000002 y_init
opspareds "" y_init
opparm y_init  bindings ( 0 ) groupbindings ( 0 )
opparm y_init folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( point ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( '// initialize y as difference from center of mass\nv@y = normalize(v@com - @P);\n\n' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto )
chlock y_init -*
chautoscope y_init -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off y_init
opexprlanguage -s hscript y_init
opuserdata -n '___Version___' -v '' y_init

# Node x (Sop/attribwrangle)
opadd -e -n attribwrangle x
oplocate -x -2.5059999999999998 -y 1.9201999999999999 x
opspareds "" x
opparm x  bindings ( 0 ) groupbindings ( 0 )
opparm x folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( point ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( 'v@x = normalize(cross(v@z, v@y));' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto )
chlock x -*
chautoscope x -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off x
opexprlanguage -s hscript x
opuserdata -n '___Version___' -v '' x

# Node construct_matrix (Sop/attribwrangle)
opadd -e -n attribwrangle construct_matrix
oplocate -x -2.5059999999999998 -y 0.92020000000000002 construct_matrix
opspareds "" construct_matrix
opparm construct_matrix  bindings ( 0 ) groupbindings ( 0 )
opparm construct_matrix folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( point ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( '3@xform = set(v@x, v@y, v@z); removepointattrib(0, \'com\');' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto )
chlock construct_matrix -*
chautoscope construct_matrix -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off construct_matrix
opexprlanguage -s hscript construct_matrix
opuserdata -n '___Version___' -v '' construct_matrix

# Node project_to_tangent_plane (Sop/attribwrangle)
opadd -e -n attribwrangle project_to_tangent_plane
oplocate -x -2.5059999999999998 -y 2.9201999999999999 project_to_tangent_plane
opspareds '    group {         name    "folder1"         label   "Code"          parm {             name    "group"             baseparm             label   "Group"             export  none             bindselector uvselect "Modify Attribs"                 "Select the geometry to affect and press Enter to complete."                 0 1 0xffffffff 0 grouptype 0         }         parm {             name    "grouptype"             baseparm             label   "Group Type"             export  none         }         parm {             name    "class"             baseparm             label   "Run Over"             export  none         }         parm {             name    "vex_numcount"             baseparm             label   "Number Count"             export  none         }         parm {             name    "vex_threadjobsize"             baseparm             label   "Thread Job Size"             export  none         }         groupsimple {             name    "folder_generatedparms_snippet"             label   "Generated Channel Parameters"             grouptag { "sidefx::look" "blank" }              parm {                 name    "A"                 label   "A"                 type    string                 default { "" }             }             parm {                 name    "B"                 label   "B"                 type    string                 default { "" }             }         }          parm {             name    "snippet"             baseparm             label   "VEXpression"             export  all         }         parm {             name    "exportlist"             baseparm             label   "Attributes to Create"             export  none         }         parm {             name    "vex_strict"             baseparm             label   "Enforce Prototypes"             export  none         }     }      group {         name    "folder1_1"         label   "Bindings"          parm {             name    "autobind"             baseparm             label   "Autobind by Name"             export  none         }         multiparm {             name    "bindings"             label    "Number of Bindings"             baseparm             default 0             parmtag { "autoscope" "0000000000000000" }             parmtag { "multistartoffset" "1" }              parm {                 name    "bindname#"                 baseparm                 label   "Attribute Name"                 export  none             }             parm {                 name    "bindparm#"                 baseparm                 label   "VEX Parameter"                 export  none             }         }          parm {             name    "groupautobind"             baseparm             label   "Autobind Groups by Name"             export  none         }         multiparm {             name    "groupbindings"             label    "Group Bindings"             baseparm             default 0             parmtag { "autoscope" "0000000000000000" }             parmtag { "multistartoffset" "1" }              parm {                 name    "bindgroupname#"                 baseparm                 label   "Group Name"                 export  none             }             parm {                 name    "bindgroupparm#"                 baseparm                 label   "VEX Parameter"                 export  none             }         }          parm {             name    "vex_cwdpath"             baseparm             label   "Evaluation Node Path"             export  none         }         parm {             name    "vex_outputmask"             baseparm             label   "Export Parameters"             export  none         }         parm {             name    "vex_updatenmls"             baseparm             label   "Update Normals If Displaced"             export  none         }         parm {             name    "vex_matchattrib"             baseparm             label   "Attribute to Match"             export  none         }         parm {             name    "vex_inplace"             baseparm             label   "Compute Results In Place"             export  none         }         parm {             name    "vex_selectiongroup"             baseparm             label   "Output Selection Group"             export  none         }         parm {             name    "vex_precision"             baseparm             label   "VEX Precision"             export  none         }     }  ' project_to_tangent_plane
opparm project_to_tangent_plane  bindings ( 0 ) groupbindings ( 0 )
opparm project_to_tangent_plane folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( point ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( '//\nstring aname = chs(\'A\'); string bname = chs(\'B\');\n// error handle\nint hasa = haspointattrib(0, aname); int hasb = haspointattrib(0, bname);\nif ( hasa == 0 ) error(\'Input does not have the vector A\');\nif ( hasb == 0 ) error(\'Input does not have the vector B\');\n\n//\nvector a = normalize(point(0, aname, @ptnum)); vector b = normalize(point(0, bname, @ptnum));\nvector c = normalize(b - ((dot(b, a)) * a));\n\nsetpointattrib(0, bname, @ptnum, c, \'set\');\n   ' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto ) folder1 ( 0 0 ) folder_generatedparms_snippet ( 0 ) A ( z ) B ( y )
chlock project_to_tangent_plane -*
chautoscope project_to_tangent_plane -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off project_to_tangent_plane
opexprlanguage -s hscript project_to_tangent_plane
opuserdata -n '___Version___' -v '' project_to_tangent_plane
oporder -e output0 computecom promotecom z y_init x construct_matrix project_to_tangent_plane 
opcf ..

# Node object (Sop/subnet)
opadd -e -n subnet object
oplocate -x 5.4080199999999996 -y 5.1180899999999996 object
opspareds "" object
opparm -V 20.5.522 object label1 ( 'Sub-Network Input #1' ) label2 ( 'Sub-Network Input #2' ) label3 ( 'Sub-Network Input #3' ) label4 ( 'Sub-Network Input #4' )
chlock object -*
chautoscope object -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off object
opexprlanguage -s hscript object
opuserdata -n '___Version___' -v '20.5.522' object
opuserdata -n 'wirestyle' -v 'rounded' object
opcf object

# Node output0 (Sop/output)
opadd -e -n output output0
oplocate -x 7.5 -y -1.1499999999999999 output0
opspareds "" output0
opparm -V 20.5.522 output0 outputidx ( 0 )
chlock output0 -*
chautoscope output0 -*
opset -d on -r on -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off output0
opexprlanguage -s hscript output0
opuserdata -n '___Version___' -v '20.5.522' output0

# Node timeshift1 (Sop/timeshift)
opadd -e -n timeshift timeshift1
oplocate -x 7.5 -y 5.8499999999999996 timeshift1
opspareds "" timeshift1
chblockbegin
chadd -t 0 0 timeshift1 frame
chkey -t 0 -v 1 -m 0 -a 0 -A 0 -T a  -F 'ch("../../holdframe")' timeshift1/frame
chadd -t 0 0 timeshift1 time
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '$T' timeshift1/time
chadd -t 0 0 timeshift1 frange1
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '$FSTART' timeshift1/frange1
chadd -t 0 0 timeshift1 frange2
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '$FEND' timeshift1/frange2
chadd -t 0 0 timeshift1 trange1
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '$TSTART' timeshift1/trange1
chadd -t 0 0 timeshift1 trange2
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '$TEND' timeshift1/trange2
chblockend
opparm -V 20.5.522 timeshift1 method ( byframe ) frame ( frame ) integerframe ( on ) time ( time ) rangeclamp ( none ) frange ( frange1 frange2 ) trange ( trange1 trange2 )
chlock timeshift1 -*
chautoscope timeshift1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off timeshift1
opexprlanguage -s hscript timeshift1
opuserdata -n '___Version___' -v '20.5.522' timeshift1

# Node extracttransform1 (Sop/extracttransform)
opadd -e -n extracttransform extracttransform1
oplocate -x 9.5 -y 2.8500000000000001 extracttransform1
opspareds "" extracttransform1
opparm -V 20.5.522 extracttransform1 usepieceattrib ( off ) pieceattrib ( name ) pieceattribclass ( primitive ) extractionmethod ( full ) outputattribs ( matrix4 ) computedistortion ( off ) distortionattrib ( distortion )
chlock extracttransform1 -*
chautoscope extracttransform1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off extracttransform1
opexprlanguage -s hscript extracttransform1
opuserdata -n '___Version___' -v '20.5.522' extracttransform1

# Node fetch_transforms (Sop/attribwrangle)
opadd -e -n attribwrangle fetch_transforms
oplocate -x 7.4969999999999999 -y 1.849 fetch_transforms
opspareds '    group {         name    "folder1"         label   "Code"          parm {             name    "group"             baseparm             label   "Group"             export  none             bindselector uvselect "Modify Attribs"                 "Select the geometry to affect and press Enter to complete."                 0 1 0xffffffff 0 grouptype 0         }         parm {             name    "grouptype"             baseparm             label   "Group Type"             export  none         }         parm {             name    "class"             baseparm             label   "Run Over"             export  none         }         parm {             name    "vex_numcount"             baseparm             label   "Number Count"             export  none         }         parm {             name    "vex_threadjobsize"             baseparm             label   "Thread Job Size"             export  none         }         groupsimple {             name    "folder_generatedparms_snippet"             label   "Generated Channel Parameters"             grouptag { "group_type" "simple" }             grouptag { "sidefx::look" "blank" }              parm {                 name    "ApplyInverseAnim"                 label   "Applyinverseanim"                 type    integer                 default { "0" }                 range   { 0 10 }             }             parm {                 name    "ApplyInverseHold"                 label   "Applyinversehold"                 type    integer                 default { "0" }                 range   { 0 10 }             }         }          parm {             name    "snippet"             baseparm             label   "VEXpression"             export  all         }         parm {             name    "exportlist"             baseparm             label   "Attributes to Create"             export  none         }         parm {             name    "vex_strict"             baseparm             label   "Enforce Prototypes"             export  none         }     }      group {         name    "folder1_1"         label   "Bindings"          parm {             name    "autobind"             baseparm             label   "Autobind by Name"             export  none         }         multiparm {             name    "bindings"             label    "Number of Bindings"             baseparm             default 0             parmtag { "autoscope" "0000000000000000" }             parmtag { "multistartoffset" "1" }              parm {                 name    "bindname#"                 baseparm                 label   "Attribute Name"                 export  none             }             parm {                 name    "bindparm#"                 baseparm                 label   "VEX Parameter"                 export  none             }         }          parm {             name    "groupautobind"             baseparm             label   "Autobind Groups by Name"             export  none         }         multiparm {             name    "groupbindings"             label    "Group Bindings"             baseparm             default 0             parmtag { "autoscope" "0000000000000000" }             parmtag { "multistartoffset" "1" }              parm {                 name    "bindgroupname#"                 baseparm                 label   "Group Name"                 export  none             }             parm {                 name    "bindgroupparm#"                 baseparm                 label   "VEX Parameter"                 export  none             }         }          parm {             name    "vex_cwdpath"             baseparm             label   "Evaluation Node Path"             export  none         }         parm {             name    "vex_outputmask"             baseparm             label   "Export Parameters"             export  none         }         parm {             name    "vex_updatenmls"             baseparm             label   "Update Normals If Displaced"             export  none         }         parm {             name    "vex_matchattrib"             baseparm             label   "Attribute to Match"             export  none         }         parm {             name    "vex_inplace"             baseparm             label   "Compute Results In Place"             export  none         }         parm {             name    "vex_selectiongroup"             baseparm             label   "Output Selection Group"             export  none         }         parm {             name    "vex_precision"             baseparm             label   "VEX Precision"             export  none         }     }  ' fetch_transforms
opparm fetch_transforms  bindings ( 0 ) groupbindings ( 0 )
chblockbegin
chadd -t 0 0 fetch_transforms ApplyInverseAnim
chkey -t 0 -v 1 -m 0 -a 0 -A 0 -T a  -F 'ch("../../hold")' fetch_transforms/ApplyInverseAnim
chadd -t 0 0 fetch_transforms ApplyInverseHold
chkey -t 0 -v 1 -m 0 -a 0 -A 0 -T a  -F 'ch("../../invert_hold")' fetch_transforms/ApplyInverseHold
chblockend
opparm fetch_transforms folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( point ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( '4@holdxf = point(1, \'holdxf\', 0);\n4@animxf = point(2, \'transform\', 0);\n\n\nchi(\'ApplyInverseAnim\') == 1 ? @P *= invert(4@animxf) : -1;\nchi(\'ApplyInverseHold\') == 1 ? @P *= invert(4@holdxf) : -1;' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto ) folder1 ( 0 0 ) folder_generatedparms_snippet ( 0 ) ApplyInverseAnim ( ApplyInverseAnim ) ApplyInverseHold ( ApplyInverseHold )
chlock fetch_transforms -*
chautoscope fetch_transforms -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off fetch_transforms
opexprlanguage -s hscript fetch_transforms
opuserdata -n '___Version___' -v '' fetch_transforms

# Node bound1 (Sop/bound)
opadd -e -n bound bound1
oplocate -x 7.5 -y 4.8499999999999996 bound1
opspareds "" bound1
opparm -V 20.5.522 bound1 group ( "" ) grouptype ( guess ) keepOriginal ( off ) createboundinggeo ( on ) createempty ( on ) separator ( ) boundtype ( off ) orientedbbox ( on ) refinementiterations ( 6 ) dodivs ( off ) divs ( 3 3 3 ) rebar ( off ) minsize ( 0 0 0 ) orient ( y ) accurate ( off ) minradius ( 0 ) orientedbrect ( off ) origin ( 0 0 0 ) dist ( 0 ) dir ( 0 1 0 ) minpad ( 0 0 0 ) maxpad ( 0 0 0 ) addboundsgroup ( off ) boundsgroup ( bounds ) addxformattrib ( off ) xformattrib ( xform ) addradiiattrib ( off ) radiiattrib ( radii )
chlock bound1 -*
chautoscope bound1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off bound1
opexprlanguage -s hscript bound1
opuserdata -n '___Version___' -v '20.5.522' bound1

# Node hold_transform (Sop/attribwrangle)
opadd -e -n attribwrangle hold_transform
oplocate -x 7.4969999999999999 -y 3.8490000000000002 hold_transform
opspareds '    group {         name    "folder1"         label   "Code"          parm {             name    "group"             baseparm             label   "Group"             export  none             bindselector uvselect "Modify Attribs"                 "Select the geometry to affect and press Enter to complete."                 0 1 0xffffffff 0 grouptype 0         }         parm {             name    "grouptype"             baseparm             label   "Group Type"             export  none         }         parm {             name    "class"             baseparm             label   "Run Over"             export  none         }         parm {             name    "vex_numcount"             baseparm             label   "Number Count"             export  none         }         parm {             name    "vex_threadjobsize"             baseparm             label   "Thread Job Size"             export  none         }         groupsimple {             name    "folder_generatedparms_snippet"             label   "Generated Channel Parameters"             grouptag { "sidefx::look" "blank" }              parm {                 name    "X"                 label   "X"                 type    integer                 default { "0" }                 range   { 0 10 }             }             parm {                 name    "Y"                 label   "Y"                 type    integer                 default { "0" }                 range   { 0 10 }             }             parm {                 name    "Z"                 label   "Z"                 type    integer                 default { "0" }                 range   { 0 10 }             }             parm {                 name    "InvertX"                 label   "Invertx"                 type    integer                 default { "0" }                 range   { 0 10 }             }             parm {                 name    "InvertY"                 label   "Inverty"                 type    integer                 default { "0" }                 range   { 0 10 }             }             parm {                 name    "InvertZ"                 label   "Invertz"                 type    integer                 default { "0" }                 range   { 0 10 }             }         }          parm {             name    "snippet"             baseparm             label   "VEXpression"             export  all         }         parm {             name    "exportlist"             baseparm             label   "Attributes to Create"             export  none         }         parm {             name    "vex_strict"             baseparm             label   "Enforce Prototypes"             export  none         }     }      group {         name    "folder1_1"         label   "Bindings"          parm {             name    "autobind"             baseparm             label   "Autobind by Name"             export  none         }         multiparm {             name    "bindings"             label    "Number of Bindings"             baseparm             default 0             parmtag { "autoscope" "0000000000000000" }             parmtag { "multistartoffset" "1" }              parm {                 name    "bindname#"                 baseparm                 label   "Attribute Name"                 export  none             }             parm {                 name    "bindparm#"                 baseparm                 label   "VEX Parameter"                 export  none             }         }          parm {             name    "groupautobind"             baseparm             label   "Autobind Groups by Name"             export  none         }         multiparm {             name    "groupbindings"             label    "Group Bindings"             baseparm             default 0             parmtag { "autoscope" "0000000000000000" }             parmtag { "multistartoffset" "1" }              parm {                 name    "bindgroupname#"                 baseparm                 label   "Group Name"                 export  none             }             parm {                 name    "bindgroupparm#"                 baseparm                 label   "VEX Parameter"                 export  none             }         }          parm {             name    "vex_cwdpath"             baseparm             label   "Evaluation Node Path"             export  none         }         parm {             name    "vex_outputmask"             baseparm             label   "Export Parameters"             export  none         }         parm {             name    "vex_updatenmls"             baseparm             label   "Update Normals If Displaced"             export  none         }         parm {             name    "vex_matchattrib"             baseparm             label   "Attribute to Match"             export  none         }         parm {             name    "vex_inplace"             baseparm             label   "Compute Results In Place"             export  none         }         parm {             name    "vex_selectiongroup"             baseparm             label   "Output Selection Group"             export  none         }         parm {             name    "vex_precision"             baseparm             label   "VEX Precision"             export  none         }     }  ' hold_transform
opparm hold_transform  bindings ( 0 ) groupbindings ( 0 )
chblockbegin
chadd -t 0 0 hold_transform X
chkey -t 0 -v 2 -m 0 -a 0 -A 0 -T a  -F 'ch("../../x")' hold_transform/X
chadd -t 0 0 hold_transform Y
chkey -t 0 -v 1 -m 0 -a 0 -A 0 -T a  -F 'ch("../../y")' hold_transform/Y
chadd -t 0 0 hold_transform Z
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F 'ch("../../z")' hold_transform/Z
chadd -t 0 0 hold_transform InvertX
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F 'ch("../../newparameter4")' hold_transform/InvertX
chadd -t 0 0 hold_transform InvertY
chkey -t 0 -v 1 -m 0 -a 0 -A 0 -T a  -F 'ch("../../newparameter5")' hold_transform/InvertY
chadd -t 0 0 hold_transform InvertZ
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F 'ch("../../newparameter6")' hold_transform/InvertZ
chblockend
opparm hold_transform folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( detail ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( '// starting points, neighbours\nvector a = point(0, \'P\', 0); int chums [] = neighbours(0, 0);\n\n// array of edge vectors\nvector q [] = array();\nforeach( int u; chums ) {\n    vector b = point(0, \'P\', u);\n    vector c = normalize(b - a); append(q, c);\n                        }\n\n// set matrix axis as components of edge vector arrays\nvector x = getcomp(q, chi(\'X\'));\nvector y = getcomp(q, chi(\'Y\'));\nvector z = getcomp(q, chi(\'Z\'));\n\n// optional axis inversion\nint ix = chi(\'InvertX\'); ix == 1 ? x *= -1 : -1;\nint iy = chi(\'InvertY\'); iy == 1 ? y *= -1 : -1;\nint iz = chi(\'InvertZ\'); iz == 1 ? z *= -1 : -1;\n\n// set matrix\nvector e = getbbox_center(0);\n4@holdxf = set(\n           x.x, x.y, x.z, 0,\n           y.x, y.y, y.z, 0,\n           z.x, z.y, z.z, 0,\n           e.x, e.y, e.z, 1\n           );\n           \n\n\n' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto ) folder1 ( 0 0 ) folder_generatedparms_snippet ( 0 ) X ( X ) Y ( Y ) Z ( Z ) InvertX ( InvertX ) InvertY ( InvertY ) InvertZ ( InvertZ )
chlock hold_transform -*
chautoscope hold_transform -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off hold_transform
opexprlanguage -s hscript hold_transform
opuserdata -n '___Version___' -v '' hold_transform

# Node visualize1 (Sop/visualize)
opadd -e -n visualize visualize1
oplocate -x 9.5 -y 0.84999999999999998 visualize1
opspareds '    parm {         name    "setvisualizers"         baseparm         label   "Update Visualizers"         export  none     }     parm {         name    "clearvisualizers"         baseparm         label   "Clear Incoming Visualizers"         export  none     }     parm {         name    "wireframe"         baseparm         label   "Wireframe"         export  none     }     parm {         name    "lit"         baseparm         label   "Lighting"         export  none     }     parm {         name    "xray"         baseparm         label   "X-Ray"         export  none     }     parm {         name    "setcuspangle"         baseparm         label   "Set Cusp Angle"         nolabel         joinnext         export  none     }     parm {         name    "cuspangle"         baseparm         label   "Cusp Angle"         export  none     }     parm {         name    "showpoints"         baseparm         label   "Show Points"         export  none     }     parm {         name    "spherepoints"         baseparm         label   "Points as Spheres"         export  none     }     parm {         name    "spriteblend"         baseparm         label   "Sprite Blending"         export  none     }     parm {         name    "setspritecutoff"         baseparm         label   "Set Sprite Cutoff"         nolabel         joinnext         export  none     }     parm {         name    "spritecutoff"         baseparm         label   "Sprite Cutoff"         export  none     }     parm {         name    "node_vis_enabled"         label   "Visualization Enabled"         type    toggle         invisible         default { "1" }     }     multiparm {         name    "num_visualizers"         label    "Visualizers"         invisible         default 0         parmtag { "multistartoffset" "0" }          parm {             name    "vis_active#"             label   "Active #"             type    toggle             invisible             default { "0" }         }         parm {             name    "vis_data#"             label   "Raw Data #"             type    string             invisible             nolabel             default { "" }             parmtag { "editor" "1" }         }     }      parm {         name    "shadeopencurves"         baseparm         label   "Shade Open Curves"         export  none     } ' visualize1
opparm visualize1  num_visualizers ( 1 )
opparm visualize1 setvisualizers ( on ) clearvisualizers ( off ) wireframe ( nochange ) shadeopencurves ( nochange ) lit ( nochange ) xray ( nochange ) setcuspangle ( off ) cuspangle ( 60 ) showpoints ( nochange ) spherepoints ( nochange ) spriteblend ( nochange ) setspritecutoff ( off ) spritecutoff ( 0.5 ) node_vis_enabled ( on ) num_visualizers ( 1 ) vis_active0 ( on ) vis_data0 ( '{\n	"flags":{\n		"type":"int",\n		"value":27\n	},\n	"icon":{\n		"type":"string",\n		"value":"VIEW_visualization_color"\n	},\n	"label":{\n		"type":"string",\n		"value":"Color 1"\n	},\n	"name":{\n		"type":"string",\n		"value":"vis_color_1"\n	},\n	"parameters":{\n		"type":"string",\n		"value":"{\\nversion 0.8\\nstyle\\t[ 0\\tlocks=0 ]\\t(\\t\\"axes\\"\\t)\\nclass\\t[ 0\\tlocks=0 ]\\t(\\t\\"auto\\"\\t)\\nattrib\\t[ 0\\tlocks=0 ]\\t(\\tholdxf\\t)\\nvisibility\\t[ 0\\tlocks=0 ]\\t(\\t\\"always\\"\\t)\\ndecorradius\\t[ 0\\tlocks=0 ]\\t(\\t0.5\\t)\\ngroup\\t[ 0\\tlocks=0 ]\\t(\\t\\"\\"\\t)\\npointsize\\t[ 0\\tlocks=0 ]\\t(\\t3\\t)\\nlengthscale\\t[ 0\\tlocks=0 ]\\t(\\t0.361\\t)\\nunitlength\\t[ 0\\tlocks=0 ]\\t(\\t1\\t)\\nnormalize\\t[ 0\\tlocks=0 ]\\t(\\t\\"off\\"\\t)\\narrowheads\\t[ 0\\tlocks=0 ]\\t(\\t\\"off\\"\\t)\\nvectorcoloring\\t[ 0\\tlocks=0 ]\\t(\\t\\"fixed\\"\\t)\\ncolorattrib\\t[ 0\\tlocks=0 ]\\t(\\tCd\\t)\\nramptype\\t[ 0\\tlocks=0 ]\\t(\\t\\"false\\"\\t)\\ncolorramp\\t[ 0\\tlocks=0 ]\\t(\\t5\\t)\\nrangespec\\t[ 0\\tlocks=0 ]\\t(\\t\\"center-width\\"\\t)\\nminscalar\\t[ 0\\tlocks=0 ]\\t(\\t0\\t)\\nmaxscalar\\t[ 0\\tlocks=0 ]\\t(\\t10\\t)\\ncenterscalar\\t[ 0\\tlocks=0 ]\\t(\\t0\\t)\\nwidthscalar\\t[ 0\\tlocks=0 ]\\t(\\t2\\t)\\nclamptype\\t[ 0\\tlocks=0 ]\\t(\\t\\"edge\\"\\t)\\ntreatasscalar\\t[ 0\\tlocks=0 ]\\t(\\t\\"on\\"\\t)\\nusing\\t[ 0\\tlocks=0 ]\\t(\\t\\"length\\"\\t)\\ncomponent\\t[ 0\\tlocks=0 ]\\t(\\t0\\t)\\nrefvec\\t[ 0\\tlocks=0 ]\\t(\\t0\\t1\\t0\\t)\\nmarkercolor\\t[ 0\\tlocks=0 ]\\t(\\t1\\t1\\t0\\t1\\t)\\ntrail\\t[ 0\\tlocks=0 ]\\t(\\t1\\t1\\t0\\t0.5\\t)\\ntextcolor\\t[ 0\\tlocks=0 ]\\t(\\t0.25\\t0.75\\t0.75\\t)\\nfontsize\\t[ 0\\tlocks=0 ]\\t(\\t\\"guidefont\\"\\t)\\nxcolor\\t[ 0\\tlocks=0 ]\\t(\\t1\\t0\\t0\\t1\\t)\\nycolor\\t[ 0\\tlocks=0 ]\\t(\\t0\\t1\\t0\\t1\\t)\\nzcolor\\t[ 0\\tlocks=0 ]\\t(\\t0\\t0\\t1\\t1\\t)\\ncolorramp1pos\\t[ 0\\tlocks=0 ]\\t(\\t0\\t)\\ncolorramp1c\\t[ 0\\tlocks=0 ]\\t(\\t0.20000000298023224\\t0\\t1\\t)\\ncolorramp1interp\\t[ 0\\tlocks=0 ]\\t(\\t\\"linear\\"\\t)\\ncolorramp2pos\\t[ 0\\tlocks=0 ]\\t(\\t0.25\\t)\\ncolorramp2c\\t[ 0\\tlocks=0 ]\\t(\\t0\\t0.8500000238418579\\t1\\t)\\ncolorramp2interp\\t[ 0\\tlocks=0 ]\\t(\\t\\"linear\\"\\t)\\ncolorramp3pos\\t[ 0\\tlocks=0 ]\\t(\\t0.5\\t)\\ncolorramp3c\\t[ 0\\tlocks=0 ]\\t(\\t0\\t1\\t0.10000000149011612\\t)\\ncolorramp3interp\\t[ 0\\tlocks=0 ]\\t(\\t\\"linear\\"\\t)\\ncolorramp4pos\\t[ 0\\tlocks=0 ]\\t(\\t0.75\\t)\\ncolorramp4c\\t[ 0\\tlocks=0 ]\\t(\\t0.949999988079071\\t1\\t0\\t)\\ncolorramp4interp\\t[ 0\\tlocks=0 ]\\t(\\t\\"linear\\"\\t)\\ncolorramp5pos\\t[ 0\\tlocks=0 ]\\t(\\t1\\t)\\ncolorramp5c\\t[ 0\\tlocks=0 ]\\t(\\t1\\t0\\t0\\t)\\ncolorramp5interp\\t[ 0\\tlocks=0 ]\\t(\\t\\"linear\\"\\t)\\n}\\n"\n	},\n	"scope":{\n		"type":"int",\n		"value":2\n	},\n	"type":{\n		"type":"string",\n		"value":"vis_marker"\n	}\n}\n' )
chlock visualize1 -*
chautoscope visualize1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off visualize1
opexprlanguage -s hscript visualize1
opuserdata -n '___Version___' -v '' visualize1

# Node promo (Sop/attribpromote)
opadd -e -n attribpromote promo
oplocate -x 7.49655 -y 2.8500000000000001 promo
opspareds "" promo
opparm -V 20.5.522 promo inname ( holdxf ) inclass ( detail ) outclass ( point ) usepieceattrib ( off ) pieceattrib ( name ) method ( mean ) useoutname ( off ) outname ( "" ) deletein ( on )
chlock promo -*
chautoscope promo -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off promo
opexprlanguage -s hscript promo
opuserdata -n '___Version___' -v '20.5.522' promo

# Node switch1 (Sop/switch)
opadd -e -n switch switch1
oplocate -x 7.5 -y -0.14999999999999999 switch1
opspareds "" switch1
chblockbegin
chadd -t 0 0 switch1 input
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F 'ch("../../newparameter")' switch1/input
chblockend
opparm -V 20.5.522 switch1 input ( input )
chlock switch1 -*
chautoscope switch1 -*
opcolor -c 0 0 0 switch1
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F off -c on -e on -b off switch1
opexprlanguage -s hscript switch1
opuserdata -n '___Version___' -v '20.5.522' switch1
opuserdata -n 'nodeshape' -v 'rect' switch1
oporder -e output0 timeshift1 extracttransform1 fetch_transforms bound1 hold_transform visualize1 promo switch1 
opcf ..

# Node switch1 (Sop/switch)
opadd -e -n switch switch1
oplocate -x 3.4130199999999999 -y 4.1130899999999997 switch1
opspareds "" switch1
chblockbegin
chadd -t 0 0 switch1 input
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F 'ch("../type")' switch1/input
chblockend
opparm -V 20.5.522 switch1 input ( input )
chlock switch1 -*
chautoscope switch1 -*
opcolor -c 0 0 0 switch1
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F off -c on -e on -b off switch1
opexprlanguage -s hscript switch1
opuserdata -n '___Version___' -v '20.5.522' switch1
opuserdata -n 'nodeshape' -v 'circle' switch1
oporder -e output0 plane object switch1 
opcf ..

# Node matrixtangentspace (Sop/subnet)
opadd -e -n subnet matrixtangentspace
oplocate -x 9.5 -y 0.84999999999999998 matrixtangentspace
opspareds '    groupsimple {         name    "Main"         label   "Matrix Tangent Space"          parm {             name    "mode"             label   "Tangent Mode"             type    ordinal             default { "0" }             menu {                 "0" "Center Of Mass"                 "1" "Centered Position"             }             parmtag { "script_callback_language" "python" }         }         groupsimple {             name    "inv"             label   "Inversion"              parm {                 name    "newparameter"                 label   "Normal"                 type    toggle                 joinnext                 default { "0" }                 parmtag { "script_callback_language" "python" }             }             parm {                 name    "newparameter2"                 label   "Tangent"                 type    toggle                 joinnext                 default { "0" }                 parmtag { "script_callback_language" "python" }             }             parm {                 name    "newparameter3"                 label   "Bitangent"                 type    toggle                 default { "0" }                 parmtag { "script_callback_language" "python" }             }         }      }      parm {         name    "label1"         baseparm         label   "Input #1 Label"         invisible         export  all     }     parm {         name    "label2"         baseparm         label   "Input #2 Label"         invisible         export  all     }     parm {         name    "label3"         baseparm         label   "Input #3 Label"         invisible         export  all     }     parm {         name    "label4"         baseparm         label   "Input #4 Label"         invisible         export  all     } ' matrixtangentspace
opparm -V 20.5.522 matrixtangentspace label1 ( 'Sub-Network Input #1' ) label2 ( 'Sub-Network Input #2' ) label3 ( 'Sub-Network Input #3' ) label4 ( 'Sub-Network Input #4' ) Main ( 0 ) mode ( 0 ) inv ( 0 ) newparameter ( off ) newparameter2 ( off ) newparameter3 ( off )
chlock matrixtangentspace -*
chautoscope matrixtangentspace -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off matrixtangentspace
opexprlanguage -s hscript matrixtangentspace
opuserdata -n '___Version___' -v '20.5.522' matrixtangentspace
opcf matrixtangentspace

# Node output0 (Sop/output)
opadd -e -n output output0
oplocate -x 2.7625600000000001 -y 2.6764700000000001 output0
opspareds "" output0
opparm -V 20.5.522 output0 outputidx ( 0 )
chlock output0 -*
chautoscope output0 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off output0
opexprlanguage -s hscript output0
opuserdata -n '___Version___' -v '20.5.522' output0

# Node tangent_space (Sop/attribwrangle)
opadd -e -n attribwrangle tangent_space
oplocate -x 2.7579600000000002 -y 3.64371 tangent_space
opspareds '    group {         name    "folder1"         label   "Code"          parm {             name    "group"             baseparm             label   "Group"             export  none             bindselector uvselect "Modify Attribs"                 "Select the geometry to affect and press Enter to complete."                 0 1 0xffffffff 0 grouptype 0         }         parm {             name    "grouptype"             baseparm             label   "Group Type"             export  none         }         parm {             name    "class"             baseparm             label   "Run Over"             export  none         }         parm {             name    "vex_numcount"             baseparm             label   "Number Count"             export  none         }         parm {             name    "vex_threadjobsize"             baseparm             label   "Thread Job Size"             export  none         }         groupsimple {             name    "folder_generatedparms_snippet"             label   "Generated Channel Parameters"             grouptag { "group_type" "simple" }             grouptag { "sidefx::look" "blank" }              parm {                 name    "TangentMode"                 label   "Tangentmode"                 type    integer                 default { "0" }                 range   { 0 10 }             }             parm {                 name    "InvertN"                 label   "Invertn"                 type    integer                 default { "0" }                 range   { 0 10 }             }             parm {                 name    "InvertT"                 label   "Invertt"                 type    integer                 default { "0" }                 range   { 0 10 }             }             parm {                 name    "InvertB"                 label   "Invertb"                 type    integer                 default { "0" }                 range   { 0 10 }             }         }          parm {             name    "snippet"             baseparm             label   "VEXpression"             export  all         }         parm {             name    "exportlist"             baseparm             label   "Attributes to Create"             export  none         }         parm {             name    "vex_strict"             baseparm             label   "Enforce Prototypes"             export  none         }     }      group {         name    "folder1_1"         label   "Bindings"          parm {             name    "autobind"             baseparm             label   "Autobind by Name"             export  none         }         multiparm {             name    "bindings"             label    "Number of Bindings"             baseparm             default 0             parmtag { "autoscope" "0000000000000000" }             parmtag { "multistartoffset" "1" }              parm {                 name    "bindname#"                 baseparm                 label   "Attribute Name"                 export  none             }             parm {                 name    "bindparm#"                 baseparm                 label   "VEX Parameter"                 export  none             }         }          parm {             name    "groupautobind"             baseparm             label   "Autobind Groups by Name"             export  none         }         multiparm {             name    "groupbindings"             label    "Group Bindings"             baseparm             default 0             parmtag { "autoscope" "0000000000000000" }             parmtag { "multistartoffset" "1" }              parm {                 name    "bindgroupname#"                 baseparm                 label   "Group Name"                 export  none             }             parm {                 name    "bindgroupparm#"                 baseparm                 label   "VEX Parameter"                 export  none             }         }          parm {             name    "vex_cwdpath"             baseparm             label   "Evaluation Node Path"             export  none         }         parm {             name    "vex_outputmask"             baseparm             label   "Export Parameters"             export  none         }         parm {             name    "vex_updatenmls"             baseparm             label   "Update Normals If Displaced"             export  none         }         parm {             name    "vex_matchattrib"             baseparm             label   "Attribute to Match"             export  none         }         parm {             name    "vex_inplace"             baseparm             label   "Compute Results In Place"             export  none         }         parm {             name    "vex_selectiongroup"             baseparm             label   "Output Selection Group"             export  none         }         parm {             name    "vex_precision"             baseparm             label   "VEX Precision"             export  none         }     }  ' tangent_space
opparm tangent_space  bindings ( 0 ) groupbindings ( 0 )
chblockbegin
chadd -t 0 0 tangent_space TangentMode
chkey -t 0 -v 1 -m 0 -a 0 -A 0 -T a  -F 'ch("../mode")' tangent_space/TangentMode
chadd -t 0 0 tangent_space InvertN
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F 'ch("../newparameter")' tangent_space/InvertN
chadd -t 0 0 tangent_space InvertT
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F 'ch("../newparameter2")' tangent_space/InvertT
chadd -t 0 0 tangent_space InvertB
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F 'ch("../newparameter3")' tangent_space/InvertB
chblockend
opparm tangent_space folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( point ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( 'vector tan, bit; \n \n// tangent modes\nint tmode = chi(\'TangentMode\'); vector c;\n// center of mass\nif ( tmode == 0 ) c = v@com;\n// centered position\nif ( tmode == 1 ) c = normalize(v@com - @P);\n                     \n// \ntan = normalize(cross(@N, c));\nbit = normalize(cross(@N,tan));\n\n// inversions\nif ( chi(\'InvertN\') == 1 ) @N  *= -1;\nif ( chi(\'InvertT\') == 1 ) tan *= -1;\nif ( chi(\'InvertB\') == 1 ) bit *= -1;\n\n// explicit casts\nv@tangent = tan; v@bitangent = bit; 3@tangentxf = set(bit, @N, tan);\n\n//\nremovepointattrib(0, \'com\');' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto ) folder1 ( 0 0 ) folder_generatedparms_snippet ( 0 ) TangentMode ( TangentMode ) InvertN ( InvertN ) InvertT ( InvertT ) InvertB ( InvertB )
chlock tangent_space -*
chautoscope tangent_space -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off tangent_space
opexprlanguage -s hscript tangent_space
opuserdata -n '___Version___' -v '' tangent_space

# Node extractcentroid1 (Sop/extractcentroid)
opadd -e -n extractcentroid extractcentroid1
oplocate -x 2.7609599999999999 -y 4.6447099999999999 extractcentroid1
opspareds "" extractcentroid1
opparm -V 20.5.522 extractcentroid1 partitiontype ( detail ) pieceattrib ( name ) class ( prim ) method ( com ) output ( attrib ) centroidattrib ( com ) transferattributes ( "" ) transfergroups ( "" )
chlock extractcentroid1 -*
chautoscope extractcentroid1 -*
opset -d on -r on -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off extractcentroid1
opexprlanguage -s hscript extractcentroid1
opuserdata -n '___Version___' -v '20.5.522' extractcentroid1

# Node attribwrangle1 (Sop/attribwrangle)
opadd -e -n attribwrangle attribwrangle1
oplocate -x 2.7579600000000002 -y 5.6437099999999996 attribwrangle1
opspareds "" attribwrangle1
opparm attribwrangle1  bindings ( 0 ) groupbindings ( 0 )
opparm attribwrangle1 folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( point ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( 'int has = haspointattrib(0, \'N\');\nif ( has == 0 ) error(\'Input does not have a @N attribute.\');' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto )
chlock attribwrangle1 -*
chautoscope attribwrangle1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off attribwrangle1
opexprlanguage -s hscript attribwrangle1
opuserdata -n '___Version___' -v '' attribwrangle1
oporder -e output0 tangent_space extractcentroid1 attribwrangle1 
opcf ..

# Node meshcage (Sop/subnet)
opadd -e -n subnet meshcage
oplocate -x 9.5 -y -4.1500000000000004 meshcage
opspareds '    groupsimple {         name    "Main"         label   "Mesh Cage"          parm {             name    "percent"             label   "Percent"             type    float             default { "10" }             help    "Reduction percent."             range   { 0 10 }             parmtag { "script_callback_language" "python" }         }         parm {             name    "degrees"             label   "Degrees"             type    float             default { "22.5" }             help    "Primitive partitioning threshold."             range   { 0 10 }             parmtag { "script_callback_language" "python" }         }     }      parm {         name    "label1"         baseparm         label   "Input #1 Label"         invisible         export  all     }     parm {         name    "label2"         baseparm         label   "Input #2 Label"         invisible         export  all     }     parm {         name    "label3"         baseparm         label   "Input #3 Label"         invisible         export  all     }     parm {         name    "label4"         baseparm         label   "Input #4 Label"         invisible         export  all     } ' meshcage
opparm -V 20.5.522 meshcage label1 ( 'Sub-Network Input #1' ) label2 ( 'Sub-Network Input #2' ) label3 ( 'Sub-Network Input #3' ) label4 ( 'Sub-Network Input #4' ) Main ( 0 ) percent ( 10 ) degrees ( 22.5 )
chlock meshcage -*
chautoscope meshcage -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off meshcage
opexprlanguage -s hscript meshcage
opuserdata -n '___Version___' -v '20.5.522' meshcage
opcf meshcage

# Node output0 (Sop/output)
opadd -e -n output output0
oplocate -x 3.44434 -y -4.5470600000000001 output0
opspareds "" output0
opparm -V 20.5.522 output0 outputidx ( 0 )
chlock output0 -*
chautoscope output0 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off output0
opexprlanguage -s hscript output0
opuserdata -n '___Version___' -v '20.5.522' output0

# Node N (Sop/attribwrangle)
opadd -e -n attribwrangle N
oplocate -x 3.43974 -y 5.3789999999999996 N
opspareds "" N
opparm N  bindings ( 0 ) groupbindings ( 0 )
opparm N folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( primitive ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( '@N = @N;' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto )
chlock N -*
chautoscope N -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off N
opexprlanguage -s hscript N
opuserdata -n '___Version___' -v '' N

# Node prim_partition (Sop/attribwrangle)
opadd -e -n attribwrangle prim_partition
oplocate -x 3.43974 -y 4.3789999999999996 prim_partition
opspareds '    group {         name    "folder1"         label   "Code"          parm {             name    "group"             baseparm             label   "Group"             export  none             bindselector uvselect "Modify Attribs"                 "Select the geometry to affect and press Enter to complete."                 0 1 0xffffffff 0 grouptype 0         }         parm {             name    "grouptype"             baseparm             label   "Group Type"             export  none         }         parm {             name    "class"             baseparm             label   "Run Over"             export  none         }         parm {             name    "vex_numcount"             baseparm             label   "Number Count"             export  none         }         parm {             name    "vex_threadjobsize"             baseparm             label   "Thread Job Size"             export  none         }         groupsimple {             name    "folder_generatedparms_snippet"             label   "Generated Channel Parameters"             grouptag { "sidefx::look" "blank" }              parm {                 name    "Threshold"                 label   "Threshold"                 type    float                 default { "0" }                 range   { 0 1 }             }         }          parm {             name    "snippet"             baseparm             label   "VEXpression"             export  all         }         parm {             name    "exportlist"             baseparm             label   "Attributes to Create"             export  none         }         parm {             name    "vex_strict"             baseparm             label   "Enforce Prototypes"             export  none         }     }      group {         name    "folder1_1"         label   "Bindings"          parm {             name    "autobind"             baseparm             label   "Autobind by Name"             export  none         }         multiparm {             name    "bindings"             label    "Number of Bindings"             baseparm             default 0             parmtag { "autoscope" "0000000000000000" }             parmtag { "multistartoffset" "1" }              parm {                 name    "bindname#"                 baseparm                 label   "Attribute Name"                 export  none             }             parm {                 name    "bindparm#"                 baseparm                 label   "VEX Parameter"                 export  none             }         }          parm {             name    "groupautobind"             baseparm             label   "Autobind Groups by Name"             export  none         }         multiparm {             name    "groupbindings"             label    "Group Bindings"             baseparm             default 0             parmtag { "autoscope" "0000000000000000" }             parmtag { "multistartoffset" "1" }              parm {                 name    "bindgroupname#"                 baseparm                 label   "Group Name"                 export  none             }             parm {                 name    "bindgroupparm#"                 baseparm                 label   "VEX Parameter"                 export  none             }         }          parm {             name    "vex_cwdpath"             baseparm             label   "Evaluation Node Path"             export  none         }         parm {             name    "vex_outputmask"             baseparm             label   "Export Parameters"             export  none         }         parm {             name    "vex_updatenmls"             baseparm             label   "Update Normals If Displaced"             export  none         }         parm {             name    "vex_matchattrib"             baseparm             label   "Attribute to Match"             export  none         }         parm {             name    "vex_inplace"             baseparm             label   "Compute Results In Place"             export  none         }         parm {             name    "vex_selectiongroup"             baseparm             label   "Output Selection Group"             export  none         }         parm {             name    "vex_precision"             baseparm             label   "VEX Precision"             export  none         }     }  ' prim_partition
opparm prim_partition  bindings ( 0 ) groupbindings ( 0 )
chblockbegin
chadd -t 0 0 prim_partition Threshold
chkey -t 0 -v 17 -m 0 -a 0 -A 0 -T a  -F 'ch("../degrees")' prim_partition/Threshold
chblockend
opparm prim_partition folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( primitive ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( '// assign same integer to primitives whose normals are less then theta\n\nint np = nprimitives(0); float theta = ch(\'Threshold\'); i@_id = @primnum + 1; i[]@partition = array(@primnum);\n\nfor ( int i; i < np; i++ ) {\n    if ( @primnum != i )   {\n        vector _N = prim(0, \'N\', i);\n        float phi = degrees(acos(dot(@N, _N)));\n        if ( phi < theta ) {\n        i@_id += (i + np); append(@partition, i);\n                           }\n                           }\n                           }\n            \n            \n        ' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto ) folder1 ( 0 0 ) folder_generatedparms_snippet ( 0 ) Threshold ( Threshold )
chlock prim_partition -*
chautoscope prim_partition -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off prim_partition
opexprlanguage -s hscript prim_partition
opuserdata -n '___Version___' -v '' prim_partition

# Node foreach_end3 (Sop/block_end)
opadd -e -n block_end foreach_end3
oplocate -x 1.44434 -y -0.62355000000000005 foreach_end3
opspareds "" foreach_end3
opparm -V 20.5.522 foreach_end3 itermethod ( pieces ) method ( merge ) iterations ( 10 ) startvalue ( 1 ) increment ( 1 ) class ( primitive ) useattrib ( on ) attrib ( _id ) usemaxiter ( off ) maxiter ( 10 ) blockpath ( ../foreach_begin3 ) templatepath ( ../foreach_begin3 ) resetcookpass ( 0 ) dosinglepass ( off ) singlepass ( 6 ) stopcondition ( 0 ) multithread ( off )
chlock foreach_end3 -*
chautoscope foreach_end3 -*
opcolor -c 0.75 0.40000000596046448 0 foreach_end3
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F off -c on -e on -b off foreach_end3
opexprlanguage -s hscript foreach_end3
opuserdata -n '___Version___' -v '20.5.522' foreach_end3

# Node foreach_begin3 (Sop/block_begin)
opadd -e -n block_begin foreach_begin3
oplocate -x 1.44434 -y 1.3771500000000001 foreach_begin3
opspareds "" foreach_begin3
opparm -V 20.5.522 foreach_begin3 method ( piece ) blockpath ( ../foreach_end3 ) resetcookpass ( 0 ) createmetablock ( 0 ) label1 ( 'iteration, numiterations, value, ivalue' )
chlock foreach_begin3 -*
chautoscope foreach_begin3 -*
opcolor -c 0.75 0.40000000596046448 0 foreach_begin3
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F off -c on -e on -b off foreach_begin3
opexprlanguage -s hscript foreach_begin3
opuserdata -n '___Version___' -v '20.5.522' foreach_begin3

# Node prim_reconstruct1 (Sop/subnet)
opadd -e -n subnet prim_reconstruct1
oplocate -x 1.4427399999999999 -y 0.38 prim_reconstruct1
opspareds "" prim_reconstruct1
opparm -V 20.5.522 prim_reconstruct1 label1 ( 'Sub-Network Input #1' ) label2 ( 'Sub-Network Input #2' ) label3 ( 'Sub-Network Input #3' ) label4 ( 'Sub-Network Input #4' )
chlock prim_reconstruct1 -*
chautoscope prim_reconstruct1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off prim_reconstruct1
opexprlanguage -s hscript prim_reconstruct1
opuserdata -n '___Version___' -v '20.5.522' prim_reconstruct1
opcf prim_reconstruct1

# Node wind_and_edgevectors (Sop/attribwrangle)
opadd -e -n attribwrangle wind_and_edgevectors
oplocate -x 0 -y 2.2176 wind_and_edgevectors
opspareds '    group {         name    "folder1"         label   "Code"          parm {             name    "group"             baseparm             label   "Group"             export  none             bindselector uvselect "Modify Attribs"                 "Select the geometry to affect and press Enter to complete."                 0 1 0xffffffff 0 grouptype 0         }         parm {             name    "grouptype"             baseparm             label   "Group Type"             export  none         }         parm {             name    "class"             baseparm             label   "Run Over"             export  none         }         parm {             name    "vex_numcount"             baseparm             label   "Number Count"             export  none         }         parm {             name    "vex_threadjobsize"             baseparm             label   "Thread Job Size"             export  none         }         groupsimple {             name    "folder_generatedparms_snippet"             label   "Generated Channel Parameters"             grouptag { "sidefx::look" "blank" }          }          parm {             name    "snippet"             baseparm             label   "VEXpression"             export  all         }         parm {             name    "exportlist"             baseparm             label   "Attributes to Create"             export  none         }         parm {             name    "vex_strict"             baseparm             label   "Enforce Prototypes"             export  none         }     }      group {         name    "folder1_1"         label   "Bindings"          parm {             name    "autobind"             baseparm             label   "Autobind by Name"             export  none         }         multiparm {             name    "bindings"             label    "Number of Bindings"             baseparm             default 0             parmtag { "autoscope" "0000000000000000" }             parmtag { "multistartoffset" "1" }              parm {                 name    "bindname#"                 baseparm                 label   "Attribute Name"                 export  none             }             parm {                 name    "bindparm#"                 baseparm                 label   "VEX Parameter"                 export  none             }         }          parm {             name    "groupautobind"             baseparm             label   "Autobind Groups by Name"             export  none         }         multiparm {             name    "groupbindings"             label    "Group Bindings"             baseparm             default 0             parmtag { "autoscope" "0000000000000000" }             parmtag { "multistartoffset" "1" }              parm {                 name    "bindgroupname#"                 baseparm                 label   "Group Name"                 export  none             }             parm {                 name    "bindgroupparm#"                 baseparm                 label   "VEX Parameter"                 export  none             }         }          parm {             name    "vex_cwdpath"             baseparm             label   "Evaluation Node Path"             export  none         }         parm {             name    "vex_outputmask"             baseparm             label   "Export Parameters"             export  none         }         parm {             name    "vex_updatenmls"             baseparm             label   "Update Normals If Displaced"             export  none         }         parm {             name    "vex_matchattrib"             baseparm             label   "Attribute to Match"             export  none         }         parm {             name    "vex_inplace"             baseparm             label   "Compute Results In Place"             export  none         }         parm {             name    "vex_selectiongroup"             baseparm             label   "Output Selection Group"             export  none         }         parm {             name    "vex_precision"             baseparm             label   "VEX Precision"             export  none         }     }  ' wind_and_edgevectors
opparm wind_and_edgevectors  bindings ( 0 ) groupbindings ( 0 )
opparm wind_and_edgevectors folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( detail ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( 'int sorted [] = array(0); int n = npoints(0); \nint last = 0; setpointattrib(0, \'sort\', 0, 0, \'set\');\n\n// sort points logically and find edge vectors\nfor ( int i; i < n; i++ ) {\n\n    // get last point appended to sorted\n    int len = len(sorted);\n    int start = getcomp(sorted, len - 1);\n    \n    // chums of this iterations starting point\n    int chums [] = neighbours(0, start); \n    \n    // find next point\n    int next;\n    \n    // if not the first iteration\n    if ( i != 0 ) {\n    \n        // find vector pointing towards last point, to compare against\n        vector c = normalize(point(0, \'P\', last) - point(0, \'P\', start));        \n        \n        // and then remove last point from chums\n        removevalue(chums, last);\n        setpointattrib(0, \'chums\', start, chums, \'set\');\n        \n        // find chum with greatest angle from c\n        float phi = 1;\n        for ( int u; u < len(chums); u ++ ) {\n            int chump = getcomp(chums, u);\n            vector q = point(0, \'P\', chump);\n            vector p = point(0, \'P\', start);\n            vector e = normalize(q - p);\n            float theta = dot(e, c);\n            if ( theta < phi ) {\n                phi  = theta;\n                next = chump;  }\n            \n                                           }                                           \n                  }\n                  else next = chums[0];\n                                      \n    // calculate edge vector\n    vector p0 = point(0, \'P\', start);\n    vector p1 = point(0, \'P\', next);\n    vector e  = p1 - p0; setpointattrib(0, \'edge\', start, e, \'set\');\n                           \n    // append chum to sorted list, set last to start, set sort attribute;    \n    append(sorted, next); last = start;\n    setpointattrib(0, \'sort\', start, i, \'set\');\n                          }\n                          ' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto ) folder1 ( 0 0 ) folder_generatedparms_snippet ( 0 )
chlock wind_and_edgevectors -*
chautoscope wind_and_edgevectors -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off wind_and_edgevectors
opexprlanguage -s hscript wind_and_edgevectors
opuserdata -n '___Version___' -v '' wind_and_edgevectors

# Node sort_nbc (Sop/sort)
opadd -e -n sort sort_nbc
oplocate -x 0.0030000000000000001 -y 4.2186000000000003 sort_nbc
opspareds "" sort_nbc
opparm -V 20.5.522 sort_nbc pointsfolder ( 0 ) ptgroup ( "" ) ptsort ( attribute ) pointseed ( 0 ) pointoffset ( 0 ) pointprox ( 0 0 0 ) pointobjpath ( "" ) pointdir ( 0 1 0 ) pointexpr ( 0 ) pointattrib ( _nbc ) pointattribcomp ( 0 ) pointreverse ( off ) primitivesfolder ( 0 ) primgroup ( "" ) primsort ( none ) primseed ( 0 ) primoffset ( 0 ) primprox ( 0 0 0 ) primobjpath ( "" ) primdir ( 0 1 0 ) primexpr ( 0 ) primattrib ( "" ) primattribcomp ( 0 ) primreverse ( off ) vertexprimorder ( on )
chlock sort_nbc -*
chautoscope sort_nbc -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off sort_nbc
opexprlanguage -s hscript sort_nbc
opuserdata -n '___Version___' -v '20.5.522' sort_nbc

# Node _nbc (Sop/attribwrangle)
opadd -e -n attribwrangle _nbc
oplocate -x 0 -y 5.2176 _nbc
opspareds "" _nbc
opparm _nbc  bindings ( 0 ) groupbindings ( 0 )
opparm _nbc folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( point ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( '// use by following sort to ensure ptnum 0 is a corner\ni@_nbc = neighbourcount(0, @ptnum);\n' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto )
chlock _nbc -*
chautoscope _nbc -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off _nbc
opexprlanguage -s hscript _nbc
opuserdata -n '___Version___' -v '' _nbc

# Node sort_by_sort (Sop/sort)
opadd -e -n sort sort_by_sort
oplocate -x 0.0030000000000000001 -y 1.2185999999999999 sort_by_sort
opspareds "" sort_by_sort
opparm -V 20.5.522 sort_by_sort pointsfolder ( 0 ) ptgroup ( "" ) ptsort ( attribute ) pointseed ( 0 ) pointoffset ( 0 ) pointprox ( 0 0 0 ) pointobjpath ( "" ) pointdir ( 0 1 0 ) pointexpr ( 0 ) pointattrib ( sort ) pointattribcomp ( 0 ) pointreverse ( off ) primitivesfolder ( 0 ) primgroup ( "" ) primsort ( none ) primseed ( 0 ) primoffset ( 0 ) primprox ( 0 0 0 ) primobjpath ( "" ) primdir ( 0 1 0 ) primexpr ( 0 ) primattrib ( "" ) primattribcomp ( 0 ) primreverse ( off ) vertexprimorder ( on )
chlock sort_by_sort -*
chautoscope sort_by_sort -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off sort_by_sort
opexprlanguage -s hscript sort_by_sort
opuserdata -n '___Version___' -v '20.5.522' sort_by_sort

# Node removepoint (Sop/attribwrangle)
opadd -e -n attribwrangle removepoint
oplocate -x 0 -y -1.7824 removepoint
opspareds "" removepoint
opparm removepoint  bindings ( 0 ) groupbindings ( 0 )
opparm removepoint folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( point ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( 'removepoint(0, length(v@edge) == 0 ? @ptnum : -1);' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto )
chlock removepoint -*
chautoscope removepoint -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off removepoint
opexprlanguage -s hscript removepoint
opuserdata -n '___Version___' -v '' removepoint

# Node removeprim (Sop/attribwrangle)
opadd -e -n attribwrangle removeprim
oplocate -x 0 -y -0.78239999999999998 removeprim
opspareds "" removeprim
opparm removeprim  bindings ( 0 ) groupbindings ( 0 )
opparm removeprim folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( primitive ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( 'removeprim(0, @primnum, 0);' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto )
chlock removeprim -*
chautoscope removeprim -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off removeprim
opexprlanguage -s hscript removeprim
opuserdata -n '___Version___' -v '' removeprim

# Node reconstruct (Sop/attribwrangle)
opadd -e -n attribwrangle reconstruct
oplocate -x 0 -y -2.7824 reconstruct
opspareds "" reconstruct
opparm reconstruct  bindings ( 0 ) groupbindings ( 0 )
opparm reconstruct folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( detail ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( 'int n = npoints(0); int r = addprim(0, \'poly\');\nfor( int i; i < n; i++ ) {\n    addvertex(0, r, i);  }' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto )
chlock reconstruct -*
chautoscope reconstruct -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off reconstruct
opexprlanguage -s hscript reconstruct
opuserdata -n '___Version___' -v '' reconstruct

# Node remove_nbc (Sop/attribwrangle)
opadd -e -n attribwrangle remove_nbc
oplocate -x 0 -y 3.2176 remove_nbc
opspareds "" remove_nbc
opparm remove_nbc  bindings ( 0 ) groupbindings ( 0 )
opparm remove_nbc folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( point ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( 'removepointattrib(0, \'_nbc\');' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto )
chlock remove_nbc -*
chautoscope remove_nbc -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off remove_nbc
opexprlanguage -s hscript remove_nbc
opuserdata -n '___Version___' -v '' remove_nbc

# Node remove_sort_att (Sop/attribwrangle)
opadd -e -n attribwrangle remove_sort_att
oplocate -x 0 -y 0.21759999999999999 remove_sort_att
opspareds "" remove_sort_att
opparm remove_sort_att  bindings ( 0 ) groupbindings ( 0 )
opparm remove_sort_att folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( point ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( 'removepointattrib(0, \'sort\');' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto )
chlock remove_sort_att -*
chautoscope remove_sort_att -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off remove_sort_att
opexprlanguage -s hscript remove_sort_att
opuserdata -n '___Version___' -v '' remove_sort_att

# Node attribcopy1 (Sop/attribcopy)
opadd -e -n attribcopy attribcopy1
oplocate -x 1.9995499999999999 -y -3.7814000000000001 attribcopy1
opspareds "" attribcopy1
opparm -V 20.5.522 attribcopy1 srcgroup ( 0 ) srcgrouptype ( prims ) destgroup ( "" ) destgrouptype ( prims ) matchbyattribute ( off ) matchbyattributemethod ( byvalues ) attributetomatch ( piece ) attrib ( otherattrib ) attribname ( * ) copyp ( off ) usenewname ( off ) newname ( "" ) class ( guess ) copyvariable ( on ) copydata ( on )
chlock attribcopy1 -*
chautoscope attribcopy1 -*
opset -d on -r on -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off attribcopy1
opexprlanguage -s hscript attribcopy1
opuserdata -n '___Version___' -v '20.5.522' attribcopy1

# Node output1 (Sop/output)
opadd -e -n output output1
oplocate -x 1.9995499999999999 -y -4.6756000000000002 output1
opspareds "" output1
opparm -V 20.5.522 output1 outputidx ( 0 )
chlock output1 -*
chautoscope output1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off output1
opexprlanguage -s hscript output1
opuserdata -n '___Version___' -v '20.5.522' output1
oporder -e wind_and_edgevectors sort_nbc _nbc sort_by_sort removepoint removeprim reconstruct remove_nbc remove_sort_att attribcopy1 output1 
opcf ..

# Node polyreduce2 (Sop/polyreduce::2.0)
opadd -e -n polyreduce::2.0 polyreduce2
oplocate -x 3.4427400000000001 -y 6.3799999999999999 polyreduce2
opspareds "" polyreduce2
opparm polyreduce2  controlattribs ( 0 )
chblockbegin
chadd -t 0 0 polyreduce2 percentage
chkey -t 0 -v 10 -m 0 -a 0 -A 0 -T a  -F 'ch("../percent")' polyreduce2/percentage
chblockend
opparm -V 20.5.522 polyreduce2 group ( "" ) reductiontarget ( 0 ) target ( poly_percent ) percentage ( percentage ) finalcount ( 1000 ) reducepassedtarget ( off ) qualitytolerance ( 1e-5 ) outputgeo ( 0 ) originalpoints ( off ) preservequads ( off ) equalizelengths ( 1e-10 ) stiffen ( 0 ) boundaryweight ( 1 ) sepparm3 ( ) vattribseamweight ( 1 ) seamattribs ( '* ^N' ) features ( 0 ) hardfeaturepoints ( "" ) hardfeatureedges ( "" ) sepparm2 ( ) softfeaturepoints ( "" ) softfeaturepointweight ( 1 ) softfeatureedges ( "" ) softfeatureedgeweight ( 1 ) retentioncontrol ( 0 ) useretainattrib ( off ) retainattrib ( retention ) retainattribweight ( 1 ) viewbasedretentioncontrol ( 0 ) silhouetteweight ( 1 ) usesilhouettefalloff ( off ) silhouettefalloffdist ( 1 ) sepparm ( ) frontfacingweight ( 1 ) usefrontfacingfalloff ( off ) frontfacingfalloffdist ( 1 ) experimental ( 0 ) decimationcontrol ( 0 ) controlattribs ( 0 )
chlock polyreduce2 -*
chautoscope polyreduce2 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off polyreduce2
opexprlanguage -s hscript polyreduce2
opuserdata -n '___Version___' -v '20.5.522' polyreduce2

# Node convexdecomposition2 (Sop/convexdecomposition)
opadd -e -n convexdecomposition convexdecomposition2
oplocate -x 3.4427400000000001 -y 7.3799999999999999 convexdecomposition2
opspareds "" convexdecomposition2
opparm -V 20.5.522 convexdecomposition2 group ( "" ) usepieceattrib ( off ) pieceattrib ( name ) maxconcavity ( 1 ) treatassolid ( on ) mergesegments ( off ) separator ( ) geometryoutput ( hulls ) outputsegmentattrib ( on ) segmentattrib ( segment ) outputinteriorgroup ( on ) interiorgroupname ( convex_decomposition_interior )
chlock convexdecomposition2 -*
chautoscope convexdecomposition2 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off convexdecomposition2
opexprlanguage -s hscript convexdecomposition2
opuserdata -n '___Version___' -v '20.5.522' convexdecomposition2

# Node fuse2 (Sop/fuse::2.0)
opadd -e -n fuse::2.0 fuse2
oplocate -x 3.4427400000000001 -y -3.6200000000000001 fuse2
opspareds "" fuse2
opparm fuse2  numpointattribs ( 0 ) numgroups ( 0 )
opparm -V 20.5.522 fuse2 querygroup ( "" ) usetargetgroup ( off ) targetgroup ( "" ) modifyboth ( off ) posattrib ( P ) snapgroup ( 0 ) snaptype ( distancesnap ) algorithm ( lowest ) usetol3d ( on ) tol3d ( 0.001 ) targetptattrib ( snap_to ) targetclass ( point ) usepositionsnapmethod ( on ) positionsnapmethod ( average ) positionsnapweightname ( weight ) useradiusattrib ( off ) radiusattrib ( pscale ) usematchattrib ( off ) matchattrib ( name ) matchtype ( match ) matchtol ( 0 ) gridtype ( spacing ) gridspacing ( 0.1 0.1 0.1 ) gridlines ( 10 10 10 ) gridpow2 ( 3 3 3 ) gridoffset ( 0 0 0 ) gridround ( nearest ) usegridtol ( on ) gridtol ( 10 ) consolidategroup ( 0 ) consolidatesnappedpoints ( on ) keepconsolidatedpoints ( off ) deldegen ( on ) deldegenpoints ( on ) delunusedpoints ( off ) outputgroup ( 0 ) recomputenml ( on ) createsnappedgroup ( off ) snappedgroupname ( snapped_points ) createsnappedattrib ( off ) snappedattribname ( snapped_to ) numpointattribs ( 0 ) numgroups ( 0 )
chlock fuse2 -*
chautoscope fuse2 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off fuse2
opexprlanguage -s hscript fuse2
opuserdata -n '___Version___' -v '20.5.522' fuse2

# Node group_partitioned (Sop/attribwrangle)
opadd -e -n attribwrangle group_partitioned
oplocate -x 3.43974 -y 3.379 group_partitioned
opspareds "" group_partitioned
opparm group_partitioned  bindings ( 0 ) groupbindings ( 0 )
opparm group_partitioned folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( primitive ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( 'len(i[]@partition) != 1 ? setprimgroup(0, \'partition\', @primnum, 1, \'set\') : -1;' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto )
chlock group_partitioned -*
chautoscope group_partitioned -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off group_partitioned
opexprlanguage -s hscript group_partitioned
opuserdata -n '___Version___' -v '' group_partitioned

# Node split1 (Sop/split)
opadd -e -n split split1
oplocate -x 3.4427400000000001 -y 2.3799999999999999 split1
opspareds "" split1
opparm split1 group ( partition ) grouptype ( guess ) negate ( off ) removegrp ( off )
chlock split1 -*
chautoscope split1 -*
opset -d on -r on -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off split1
opexprlanguage -s hscript split1
opuserdata -n '___Version___' -v '' split1

# Node merge1 (Sop/merge)
opadd -e -n merge merge1
oplocate -x 3.4415900000000001 -y -1.6168499999999999 merge1
opspareds "" merge1
opparm -V 20.5.522 merge1
chlock merge1 -*
chautoscope merge1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off merge1
opexprlanguage -s hscript merge1
opuserdata -n '___Version___' -v '20.5.522' merge1

# Node attribwrangle1 (Sop/attribwrangle)
opadd -e -n attribwrangle attribwrangle1
oplocate -x 3.43974 -y -2.621 attribwrangle1
opspareds "" attribwrangle1
opparm attribwrangle1  bindings ( 0 ) groupbindings ( 0 )
opparm attribwrangle1 folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( primitive ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( 'removeprimgroup(0, \'partition\');' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto )
chlock attribwrangle1 -*
chautoscope attribwrangle1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off attribwrangle1
opexprlanguage -s hscript attribwrangle1
opuserdata -n '___Version___' -v '' attribwrangle1
oporder -e output0 N prim_partition foreach_end3 foreach_begin3 prim_reconstruct1 polyreduce2 convexdecomposition2 fuse2 group_partitioned split1 merge1 attribwrangle1 
opcf ..
opcf noisepower

# Node output0 (Sop/output)
opadd -e -n output output0
oplocate -x 5.1356799999999998 -y -10.362299999999999 output0
opspareds "" output0
opparm -V 20.5.522 output0 outputidx ( 0 )
chlock output0 -*
chautoscope output0 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off output0
opexprlanguage -s hscript output0
opuserdata -n '___Version___' -v '20.5.522' output0
opcf powernoise
opcf subnet1
opcf turbulent
oporder -e turbnoise1 suboutput1 subinput1 turbnoise2 turbnoise3 turbnoise4 turbnoise5 turbnoise6 
opcf ..
opcf aa
oporder -e aanoise2 floattovec1 suboutput1 subinput1 aanoise3 aaflownoise1 
opcf ..
opcf curl
oporder -e curlnoise1 suboutput1 subinput1 curlnoise2 curlnoise3 curlnoise4 curlnoise5 curlnoise6 curlnoise7 
opcf ..
oporder -e const6 parm5 suboutput1 subinput1 turbulent aa curl switch1 parm1 multiply2 parm2 add1 unifiednoise1 parm3 multiply1 switch2 bind1 bind2 addconst1 bind3 
opcf ..
oporder -e geometryvopglobal1 geometryvopoutput1 bind1 const1 parm1 add1 pow1 const4 parm2 pow2 subtract3 parm4 amp freq displace position vector scalar subnet1 switch1 const5 add2 abs1 bind2 bind3 parm6 floattovec1 bind4 bind5 addconst1 
opcf ..

# Node iteration (Sop/attribwrangle)
opadd -e -n attribwrangle iteration
oplocate -x 5.1310799999999999 -y 2.5984500000000001 iteration
opspareds "" iteration
opparm iteration  bindings ( 0 ) groupbindings ( 0 )
opparm iteration folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( point ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( 'i@iteration = detail(1,\'iteration\',0);' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto )
chlock iteration -*
chautoscope iteration -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off iteration
opexprlanguage -s hscript iteration
opuserdata -n '___Version___' -v '' iteration

# Node foreach_end3 (Sop/block_end)
opadd -e -n block_end foreach_end3
oplocate -x 5.1356799999999998 -y 0.59589999999999999 foreach_end3
opspareds "" foreach_end3
chblockbegin
chadd -t 0 0 foreach_end3 iterations
chkey -t 0 -v 1 -m 0 -a 0 -A 0 -T a  -F 'ch("../iterations")' foreach_end3/iterations
chblockend
opparm -V 20.5.522 foreach_end3 itermethod ( count ) method ( feedback ) iterations ( iterations ) startvalue ( 1 ) increment ( 1 ) class ( point ) useattrib ( on ) attrib ( "" ) usemaxiter ( off ) maxiter ( 10 ) blockpath ( ../foreach_begin3 ) templatepath ( ../foreach_begin3 ) resetcookpass ( 0 ) dosinglepass ( off ) singlepass ( 29 ) stopcondition ( 0 ) multithread ( off )
chlock foreach_end3 -*
chautoscope foreach_end3 -*
opcolor -c 0.75 0.40000000596046448 0 foreach_end3
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F off -c on -e on -b off foreach_end3
opexprlanguage -s hscript foreach_end3
opuserdata -n '___Version___' -v '20.5.522' foreach_end3

# Node foreach_begin3 (Sop/block_begin)
opadd -e -n block_begin foreach_begin3
oplocate -x 5.1356799999999998 -y 3.5966 foreach_begin3
opspareds "" foreach_begin3
opparm -V 20.5.522 foreach_begin3 method ( feedback ) blockpath ( ../foreach_end3 ) resetcookpass ( 0 ) createmetablock ( 0 ) label1 ( 'iteration, numiterations, value, ivalue' )
chlock foreach_begin3 -*
chautoscope foreach_begin3 -*
opcolor -c 0.75 0.40000000596046448 0 foreach_begin3
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F off -c on -e on -b off foreach_begin3
opexprlanguage -s hscript foreach_begin3
opuserdata -n '___Version___' -v '20.5.522' foreach_begin3

# Node foreach_count2 (Sop/block_begin)
opadd -e -n block_begin foreach_count2
oplocate -x 7.5961800000000004 -y 3.5966 foreach_count2
opspareds "" foreach_count2
opparm -V 20.5.522 foreach_count2 method ( metadata ) blockpath ( ../foreach_end3 ) resetcookpass ( 0 ) createmetablock ( 0 ) label1 ( 'iteration, numiterations, value, ivalue' )
chlock foreach_count2 -*
chautoscope foreach_count2 -*
opcolor -c 0.75 0.40000000596046448 0 foreach_count2
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F off -c on -e on -b off foreach_count2
opexprlanguage -s hscript foreach_count2
opuserdata -n '___Version___' -v '20.5.522' foreach_count2

# Node attribdelete (Sop/attribdelete)
opadd -e -n attribdelete attribdelete
oplocate -x 5.13063 -y -7.40055 attribdelete
opspareds "" attribdelete
opparm attribdelete usereference ( off ) negate ( off ) doptdel ( on ) ptdel ( '__* iteration' ) dovtxdel ( on ) vtxdel ( "" ) doprimdel ( on ) primdel ( "" ) dodtldel ( on ) dtldel ( "" ) updatevar ( on )
chlock attribdelete -*
chautoscope attribdelete -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off attribdelete
opexprlanguage -s hscript attribdelete
opuserdata -n '___Version___' -v '' attribdelete

# Node init (Sop/attribwrangle)
opadd -e -n attribwrangle init
oplocate -x 5.1310799999999999 -y 5.5984499999999997 init
opspareds "" init
opparm init  bindings ( 0 ) groupbindings ( 0 )
opparm init folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( point ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( 'v@powernoise = @P; i@__hasoffset = haspointattrib(0,\'offset\');\n' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto )
chlock init -*
chautoscope init -*
opset -d on -r on -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off init
opexprlanguage -s hscript init
opuserdata -n '___Version___' -v '' init

# Node length (Sop/attribwrangle)
opadd -e -n attribwrangle length
oplocate -x 5.1310799999999999 -y -0.40155000000000002 length
opspareds "" length
opparm length  bindings ( 0 ) groupbindings ( 0 )
opparm length folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( point ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( '@__length = length(v@powernoise);' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto )
chlock length -*
chautoscope length -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off length
opexprlanguage -s hscript length
opuserdata -n '___Version___' -v '' length

# Node attribpromote1 (Sop/attribpromote)
opadd -e -n attribpromote attribpromote1
oplocate -x 5.13063 -y -1.40055 attribpromote1
opspareds "" attribpromote1
opparm -V 20.5.522 attribpromote1 inname ( __length ) inclass ( point ) outclass ( detail ) usepieceattrib ( off ) pieceattrib ( name ) method ( max ) useoutname ( on ) outname ( max ) deletein ( off )
chlock attribpromote1 -*
chautoscope attribpromote1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off attribpromote1
opexprlanguage -s hscript attribpromote1
opuserdata -n '___Version___' -v '20.5.522' attribpromote1

# Node attribpromote2 (Sop/attribpromote)
opadd -e -n attribpromote attribpromote2
oplocate -x 5.13063 -y -2.40055 attribpromote2
opspareds "" attribpromote2
opparm -V 20.5.522 attribpromote2 inname ( __length ) inclass ( point ) outclass ( detail ) usepieceattrib ( off ) pieceattrib ( name ) method ( min ) useoutname ( on ) outname ( min ) deletein ( off )
chlock attribpromote2 -*
chautoscope attribpromote2 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off attribpromote2
opexprlanguage -s hscript attribpromote2
opuserdata -n '___Version___' -v '20.5.522' attribpromote2

# Node attribpromote3 (Sop/attribpromote)
opadd -e -n attribpromote attribpromote3
oplocate -x 5.13063 -y -3.40055 attribpromote3
opspareds "" attribpromote3
opparm -V 20.5.522 attribpromote3 inname ( max ) inclass ( detail ) outclass ( point ) usepieceattrib ( off ) pieceattrib ( name ) method ( max ) useoutname ( on ) outname ( __max ) deletein ( on )
chlock attribpromote3 -*
chautoscope attribpromote3 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off attribpromote3
opexprlanguage -s hscript attribpromote3
opuserdata -n '___Version___' -v '20.5.522' attribpromote3

# Node attribpromote4 (Sop/attribpromote)
opadd -e -n attribpromote attribpromote4
oplocate -x 5.13063 -y -4.40055 attribpromote4
opspareds "" attribpromote4
opparm -V 20.5.522 attribpromote4 inname ( min ) inclass ( detail ) outclass ( point ) usepieceattrib ( off ) pieceattrib ( name ) method ( max ) useoutname ( on ) outname ( __min ) deletein ( on )
chlock attribpromote4 -*
chautoscope attribpromote4 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off attribpromote4
opexprlanguage -s hscript attribpromote4
opuserdata -n '___Version___' -v '20.5.522' attribpromote4

# Node objectpost (Sop/attribwrangle)
opadd -e -n attribwrangle objectpost
oplocate -x 5.1310799999999999 -y -5.4015500000000003 objectpost
opspareds '    group {         name    "folder1"         label   "Code"          parm {             name    "group"             baseparm             label   "Group"             export  none             bindselector uvselect "Modify Attribs"                 "Select the geometry to affect and press Enter to complete."                 0 1 0xffffffff 0 grouptype 0         }         parm {             name    "grouptype"             baseparm             label   "Group Type"             export  none         }         parm {             name    "class"             baseparm             label   "Run Over"             export  none         }         parm {             name    "vex_numcount"             baseparm             label   "Number Count"             export  none         }         parm {             name    "vex_threadjobsize"             baseparm             label   "Thread Job Size"             export  none         }         parm {             name    "snippet"             baseparm             label   "VEXpression"             export  all         }         parm {             name    "exportlist"             baseparm             label   "Attributes to Create"             export  none         }         parm {             name    "vex_strict"             baseparm             label   "Enforce Prototypes"             export  none         }     }      group {         name    "folder1_1"         label   "Bindings"          parm {             name    "autobind"             baseparm             label   "Autobind by Name"             export  none         }         multiparm {             name    "bindings"             label    "Number of Bindings"             baseparm             default 0             parmtag { "autoscope" "0000000000000000" }             parmtag { "multistartoffset" "1" }              parm {                 name    "bindname#"                 baseparm                 label   "Attribute Name"                 export  none             }             parm {                 name    "bindparm#"                 baseparm                 label   "VEX Parameter"                 export  none             }         }          parm {             name    "groupautobind"             baseparm             label   "Autobind Groups by Name"             export  none         }         multiparm {             name    "groupbindings"             label    "Group Bindings"             baseparm             default 0             parmtag { "autoscope" "0000000000000000" }             parmtag { "multistartoffset" "1" }              parm {                 name    "bindgroupname#"                 baseparm                 label   "Group Name"                 export  none             }             parm {                 name    "bindgroupparm#"                 baseparm                 label   "VEX Parameter"                 export  none             }         }          parm {             name    "vex_cwdpath"             baseparm             label   "Evaluation Node Path"             export  none         }         parm {             name    "vex_outputmask"             baseparm             label   "Export Parameters"             export  none         }         parm {             name    "vex_updatenmls"             baseparm             label   "Update Normals If Displaced"             export  none         }         parm {             name    "vex_matchattrib"             baseparm             label   "Attribute to Match"             export  none         }         parm {             name    "vex_inplace"             baseparm             label   "Compute Results In Place"             export  none         }         parm {             name    "vex_selectiongroup"             baseparm             label   "Output Selection Group"             export  none         }         parm {             name    "vex_precision"             baseparm             label   "VEX Precision"             export  none         }     }      parm {         name    "Mode"         label   "Mode"         type    integer         default { "0" }         range   { 0 10 }     } ' objectpost
opparm objectpost  bindings ( 0 ) groupbindings ( 0 )
chblockbegin
chadd -t 0 0 objectpost Mode
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F 'ch("../signature")' objectpost/Mode
chblockend
opparm objectpost folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( point ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( '// fit powernoise 0-1\nfloat h = fit(@__length,@__min,@__max,0,1);\n\n\n// normalize and apply fit, scale to size of input object\nint mode = chi(\'Mode\');\n// vector mode\nif ( mode == 0 ) {\nv@powernoise = (normalize(v@powernoise) * h); @Cd = v@powernoise;\nv@powernoise *=  @__scale; v@powervector = v@powernoise;\nremovepointattrib(0, \'powernoise\');\n                 }\n// scalarmode\nif ( mode == 1 ) {\n    v@powernoise = (normalize(v@powernoise) * h);\n    @powerscalar = length(v@powernoise);\n    @Cd = @powerscalar; @powerscalar *= @__scale;\n    removepointattrib(0, \'powernoise\');    \n                 }\n\n// bring object back to scale and space\n@P *= @__scale;\n@P += v@__translate;' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto ) folder1 ( 0 0 ) Mode ( Mode )
chlock objectpost -*
chautoscope objectpost -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off objectpost
opexprlanguage -s hscript objectpost
opuserdata -n '___Version___' -v '' objectpost

# Node objectinfo (Sop/attribwrangle)
opadd -e -n attribwrangle objectinfo
oplocate -x 5.1310799999999999 -y 11.5985 objectinfo
opspareds "" objectinfo
opparm objectinfo  bindings ( 0 ) groupbindings ( 0 )
opparm objectinfo folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( point ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( 'vector size = getbbox_size(0); v@__translate = getbbox_center(0);\n\n// sum size of each axis and divide by 3 to find average. divide by two to get radius.\n@__scale  = ((size.x + size.y + size.z) / 3) / 2; \n\n' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto )
chlock objectinfo -*
chautoscope objectinfo -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off objectinfo
opexprlanguage -s hscript objectinfo
opuserdata -n '___Version___' -v '' objectinfo

# Node objectxform (Sop/attribwrangle)
opadd -e -n attribwrangle objectxform
oplocate -x 5.1310799999999999 -y 10.5985 objectxform
opspareds "" objectxform
opparm objectxform  bindings ( 0 ) groupbindings ( 0 )
opparm objectxform folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( point ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( '@P -= v@__translate; @P /= @__scale;' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto )
chlock objectxform -*
chautoscope objectxform -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off objectxform
opexprlanguage -s hscript objectxform
opuserdata -n '___Version___' -v '' objectxform

# Node switch1 (Sop/switch)
opadd -e -n switch switch1
oplocate -x 5.13408 -y 9.5992499999999996 switch1
opspareds "" switch1
chblockbegin
chadd -t 0 0 switch1 input
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F 'ch("../typemenu")' switch1/input
chblockend
opparm -V 20.5.522 switch1 input ( input )
chlock switch1 -*
chautoscope switch1 -*
opcolor -c 0 0 0 switch1
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F off -c on -e on -b off switch1
opexprlanguage -s hscript switch1
opuserdata -n '___Version___' -v '20.5.522' switch1

# Node curvexform (Sop/attribwrangle)
opadd -e -n attribwrangle curvexform
oplocate -x 7.1310799999999999 -y 10.5985 curvexform
opspareds "" curvexform
opparm curvexform  bindings ( 0 ) groupbindings ( 0 )
opparm curvexform folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( point ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( 'int t = npoints(0) - 1; float u = fit(@ptnum, 0, t, 0, 1); v@xform = set(0,0,u);\n\n@P = v@xform;' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto )
chlock curvexform -*
chautoscope curvexform -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off curvexform
opexprlanguage -s hscript curvexform
opuserdata -n '___Version___' -v '' curvexform

# Node perimeter (Sop/measure::2.0)
opadd -e -n measure::2.0 perimeter
oplocate -x 7.13408 -y 13.599500000000001 perimeter
opspareds "" perimeter
opparm perimeter  colorramp ( 3 )
opparm -V 20.5.522 perimeter group ( "" ) grouptype ( prims ) measurement ( 0 ) measure ( perimeter ) curvaturetype ( curvedness ) principaltype ( min ) principalsign ( signed ) principalreportas ( scalar ) umbiliccutoff ( 0 ) integrationmode ( componentwise ) srcattrib ( P ) srccomp ( x ) scalenormalize ( on ) sepparm ( ) integrationdomain ( element ) refinetomanifold ( on ) pieceattrib ( class ) usecustompos ( off ) posattrib ( P ) visrange ( 0 ) userangemin ( off ) rangemin ( -1 ) userangemax ( off ) rangemax ( 1 ) usecenterwidth ( off ) width ( 6 ) widthscale ( mad ) centertype ( median ) fixedcenter ( 0 ) colorramp ( 3 ) vectorscale ( 1 ) output ( 0 ) attribname ( perimeter ) usetotalattrib ( off ) totalattribname ( totalperimeter ) userangegroup ( off ) rangegroup ( inrange ) bakeintooutput ( off ) useremaprange ( off ) remaprange ( 0 1 ) colorramp1pos ( 0 ) colorramp1c ( 0 0 1 ) colorramp1interp ( linear ) colorramp2pos ( 0.5 ) colorramp2c ( 1 1 1 ) colorramp2interp ( linear ) colorramp3pos ( 1 ) colorramp3c ( 1 0 0 ) colorramp3interp ( linear )
chlock perimeter -*
chautoscope perimeter -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off perimeter
opexprlanguage -s hscript perimeter
opuserdata -n '___Version___' -v '20.5.522' perimeter

# Node attribpromote5 (Sop/attribpromote)
opadd -e -n attribpromote attribpromote5
oplocate -x 7.13063 -y 12.599500000000001 attribpromote5
opspareds "" attribpromote5
opparm -V 20.5.522 attribpromote5 inname ( perimeter ) inclass ( primitive ) outclass ( point ) usepieceattrib ( off ) pieceattrib ( name ) method ( mean ) useoutname ( on ) outname ( __perimeter ) deletein ( on )
chlock attribpromote5 -*
chautoscope attribpromote5 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off attribpromote5
opexprlanguage -s hscript attribpromote5
opuserdata -n '___Version___' -v '20.5.522' attribpromote5

# Node curveinfo (Sop/attribwrangle)
opadd -e -n attribwrangle curveinfo
oplocate -x 7.1310799999999999 -y 11.5985 curveinfo
opspareds "" curveinfo
opparm curveinfo  bindings ( 0 ) groupbindings ( 0 )
opparm curveinfo folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( point ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( 'v@rest = @P; @__scale = @__perimeter / ($PI*2);' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto )
chlock curveinfo -*
chautoscope curveinfo -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off curveinfo
opexprlanguage -s hscript curveinfo
opuserdata -n '___Version___' -v '' curveinfo

# Node curvepost (Sop/attribwrangle)
opadd -e -n attribwrangle curvepost
oplocate -x 7.1310799999999999 -y -5.4015500000000003 curvepost
opspareds "" curvepost
opparm curvepost  bindings ( 0 ) groupbindings ( 0 )
opparm curvepost folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( point ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( '// fit powernoise 0-1\nfloat h = fit(@__length,@__min,@__max,0,1);\n\n// normalize and apply fit, scale to size of input object\nv@powernoise = (normalize(v@powernoise) * h) * @__scale;\nv@powernoise.z = 0; \nv@powervector = v@powernoise; @Cd = abs(v@powernoise);\nremovepointattrib(0, \'powernoise\');\n\n// bring object back to scale and space\n@P -= v@xform;\n@P += v@rest;' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto )
chlock curvepost -*
chautoscope curvepost -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off curvepost
opexprlanguage -s hscript curvepost
opuserdata -n '___Version___' -v '' curvepost

# Node switch2 (Sop/switch)
opadd -e -n switch switch2
oplocate -x 5.13408 -y -6.4007500000000004 switch2
opspareds "" switch2
chblockbegin
chadd -t 0 0 switch2 input
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F 'ch("../typemenu")' switch2/input
chblockend
opparm -V 20.5.522 switch2 input ( input )
chlock switch2 -*
chautoscope switch2 -*
opcolor -c 0 0 0 switch2
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F off -c on -e on -b off switch2
opexprlanguage -s hscript switch2
opuserdata -n '___Version___' -v '20.5.522' switch2

# Node connectivity1 (Sop/connectivity)
opadd -e -n connectivity connectivity1
oplocate -x 5.13408 -y 15.599500000000001 connectivity1
opspareds "" connectivity1
opparm -V 20.5.522 connectivity1 connecttype ( prim ) primincgroup ( "" ) pointincgroup ( "" ) attribname ( __piece ) attribtype ( int ) prefix ( piece ) createvarmap ( off ) varname ( "" ) seamgroup ( "" ) byuv ( off ) uvattrib ( uv )
chlock connectivity1 -*
chautoscope connectivity1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b on connectivity1
opexprlanguage -s hscript connectivity1
opuserdata -n '___Version___' -v '20.5.522' connectivity1

# Node foreach_end1 (Sop/block_end)
opadd -e -n block_end foreach_end1
oplocate -x 5.1356799999999998 -y 7.5959500000000002 foreach_end1
opspareds "" foreach_end1
opparm -V 20.5.522 foreach_end1 itermethod ( pieces ) method ( merge ) iterations ( 10 ) startvalue ( 1 ) increment ( 1 ) class ( primitive ) useattrib ( on ) attrib ( __piece ) usemaxiter ( off ) maxiter ( 10 ) blockpath ( ../foreach_begin1 ) templatepath ( ../foreach_begin1 ) resetcookpass ( 0 ) dosinglepass ( off ) singlepass ( 0 ) stopcondition ( 0 ) multithread ( on )
chlock foreach_end1 -*
chautoscope foreach_end1 -*
opcolor -c 0.75 0.40000000596046448 0 foreach_end1
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F off -c on -e on -b on foreach_end1
opexprlanguage -s hscript foreach_end1
opuserdata -n '___Version___' -v '20.5.522' foreach_end1

# Node foreach_begin1 (Sop/block_begin)
opadd -e -n block_begin foreach_begin1
oplocate -x 5.1356799999999998 -y 13.5967 foreach_begin1
opspareds "" foreach_begin1
opparm -V 20.5.522 foreach_begin1 method ( piece ) blockpath ( ../foreach_end1 ) resetcookpass ( 0 ) createmetablock ( 0 ) label1 ( 'iteration, numiterations, value, ivalue' )
chlock foreach_begin1 -*
chautoscope foreach_begin1 -*
opcolor -c 0.75 0.40000000596046448 0 foreach_begin1
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F off -c on -e on -b on foreach_begin1
opexprlanguage -s hscript foreach_begin1
opuserdata -n '___Version___' -v '20.5.522' foreach_begin1

# Node pieceoffset (Sop/attribwrangle)
opadd -e -n attribwrangle pieceoffset
oplocate -x 5.1310799999999999 -y 12.5985 pieceoffset
opspareds '    group {         name    "folder1"         label   "Code"          parm {             name    "group"             baseparm             label   "Group"             export  none             bindselector uvselect "Modify Attribs"                 "Select the geometry to affect and press Enter to complete."                 0 1 0xffffffff 0 grouptype 0         }         parm {             name    "grouptype"             baseparm             label   "Group Type"             export  none         }         parm {             name    "class"             baseparm             label   "Run Over"             export  none         }         parm {             name    "vex_numcount"             baseparm             label   "Number Count"             export  none         }         parm {             name    "vex_threadjobsize"             baseparm             label   "Thread Job Size"             export  none         }         parm {             name    "snippet"             baseparm             label   "VEXpression"             export  all         }         parm {             name    "exportlist"             baseparm             label   "Attributes to Create"             export  none         }         parm {             name    "vex_strict"             baseparm             label   "Enforce Prototypes"             export  none         }     }      group {         name    "folder1_1"         label   "Bindings"          parm {             name    "autobind"             baseparm             label   "Autobind by Name"             export  none         }         multiparm {             name    "bindings"             label    "Number of Bindings"             baseparm             default 0             parmtag { "autoscope" "0000000000000000" }             parmtag { "multistartoffset" "1" }              parm {                 name    "bindname#"                 baseparm                 label   "Attribute Name"                 export  none             }             parm {                 name    "bindparm#"                 baseparm                 label   "VEX Parameter"                 export  none             }         }          parm {             name    "groupautobind"             baseparm             label   "Autobind Groups by Name"             export  none         }         multiparm {             name    "groupbindings"             label    "Group Bindings"             baseparm             default 0             parmtag { "autoscope" "0000000000000000" }             parmtag { "multistartoffset" "1" }              parm {                 name    "bindgroupname#"                 baseparm                 label   "Group Name"                 export  none             }             parm {                 name    "bindgroupparm#"                 baseparm                 label   "VEX Parameter"                 export  none             }         }          parm {             name    "vex_cwdpath"             baseparm             label   "Evaluation Node Path"             export  none         }         parm {             name    "vex_outputmask"             baseparm             label   "Export Parameters"             export  none         }         parm {             name    "vex_updatenmls"             baseparm             label   "Update Normals If Displaced"             export  none         }         parm {             name    "vex_matchattrib"             baseparm             label   "Attribute to Match"             export  none         }         parm {             name    "vex_inplace"             baseparm             label   "Compute Results In Place"             export  none         }         parm {             name    "vex_selectiongroup"             baseparm             label   "Output Selection Group"             export  none         }         parm {             name    "vex_precision"             baseparm             label   "VEX Precision"             export  none         }     }      parm {         name    "Offset"         label   "Offset"         type    float         default { "0" }         range   { 0 1 }     } ' pieceoffset
opparm pieceoffset  bindings ( 0 ) groupbindings ( 0 )
opparm pieceoffset folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( primitive ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( '@pieceoffset = ch(\'Offset\') * @__piece;' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto ) folder1 ( 0 0 ) Offset ( 10 )
chlock pieceoffset -*
chautoscope pieceoffset -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off pieceoffset
opexprlanguage -s hscript pieceoffset
opuserdata -n '___Version___' -v '' pieceoffset

# Node compile_end1 (Sop/compile_end)
opadd -e -n compile_end compile_end1
oplocate -x 5.1356799999999998 -y 6.5959500000000002 compile_end1
opspareds "" compile_end1
opparm -V 20.5.522 compile_end1 docompile ( on ) unload ( always ) primarypath ( "" ) forcerecompile ( 0 ) delayillegal ( off ) fallback ( off )
chlock compile_end1 -*
chautoscope compile_end1 -*
opcolor -c 0.75 0.75 0 compile_end1
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F off -c on -e on -b on compile_end1
opexprlanguage -s hscript compile_end1
opuserdata -n '___Version___' -v '20.5.522' compile_end1

# Node compile_begin1 (Sop/compile_begin)
opadd -e -n compile_begin compile_begin1
oplocate -x 5.1356799999999998 -y 14.5967 compile_begin1
opspareds "" compile_begin1
opparm -V 20.5.522 compile_begin1 blockpath ( ../compile_end1 ) name ( "" ) optional ( off ) createbeginblock ( 0 )
chlock compile_begin1 -*
chautoscope compile_begin1 -*
opcolor -c 0.75 0.75 0 compile_begin1
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F off -c on -e on -b on compile_begin1
opexprlanguage -s hscript compile_begin1
opuserdata -n '___Version___' -v '20.5.522' compile_begin1

# Node attribpromote6 (Sop/attribpromote)
opadd -e -n attribpromote attribpromote6
oplocate -x 5.13063 -y 8.5994499999999992 attribpromote6
opspareds "" attribpromote6
opparm -V 20.5.522 attribpromote6 inname ( pieceoffset ) inclass ( primitive ) outclass ( point ) usepieceattrib ( off ) pieceattrib ( name ) method ( mean ) useoutname ( off ) outname ( "" ) deletein ( on )
chlock attribpromote6 -*
chautoscope attribpromote6 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off attribpromote6
opexprlanguage -s hscript attribpromote6
opuserdata -n '___Version___' -v '20.5.522' attribpromote6

# Node foreach_end2 (Sop/block_end)
opadd -e -n block_end foreach_end2
oplocate -x 5.1356799999999998 -y -8.4040999999999997 foreach_end2
opspareds "" foreach_end2
opparm -V 20.5.522 foreach_end2 itermethod ( pieces ) method ( merge ) iterations ( 10 ) startvalue ( 1 ) increment ( 1 ) class ( primitive ) useattrib ( on ) attrib ( __piece ) usemaxiter ( off ) maxiter ( 10 ) blockpath ( ../foreach_begin2 ) templatepath ( ../foreach_begin2 ) resetcookpass ( 0 ) dosinglepass ( off ) singlepass ( 0 ) stopcondition ( 0 ) multithread ( off )
chlock foreach_end2 -*
chautoscope foreach_end2 -*
opcolor -c 0.75 0.40000000596046448 0 foreach_end2
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F off -c on -e on -b on foreach_end2
opexprlanguage -s hscript foreach_end2
opuserdata -n '___Version___' -v '20.5.522' foreach_end2

# Node foreach_begin2 (Sop/block_begin)
opadd -e -n block_begin foreach_begin2
oplocate -x 5.1356799999999998 -y 4.5965999999999996 foreach_begin2
opspareds "" foreach_begin2
opparm -V 20.5.522 foreach_begin2 method ( piece ) blockpath ( ../foreach_end2 ) resetcookpass ( 0 ) createmetablock ( 0 ) label1 ( 'iteration, numiterations, value, ivalue' )
chlock foreach_begin2 -*
chautoscope foreach_begin2 -*
opcolor -c 0.75 0.40000000596046448 0 foreach_begin2
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F off -c on -e on -b on foreach_begin2
opexprlanguage -s hscript foreach_begin2
opuserdata -n '___Version___' -v '20.5.522' foreach_begin2

# Node paint (Sop/attribwrangle)
opadd -e -n attribwrangle paint
oplocate -x 5.1310799999999999 -y -9.4015500000000003 paint
opspareds '    group {         name    "folder1"         label   "Code"          parm {             name    "group"             baseparm             label   "Group"             export  none             bindselector uvselect "Modify Attribs"                 "Select the geometry to affect and press Enter to complete."                 0 1 0xffffffff 0 grouptype 0         }         parm {             name    "grouptype"             baseparm             label   "Group Type"             export  none         }         parm {             name    "class"             baseparm             label   "Run Over"             export  none         }         parm {             name    "vex_numcount"             baseparm             label   "Number Count"             export  none         }         parm {             name    "vex_threadjobsize"             baseparm             label   "Thread Job Size"             export  none         }         parm {             name    "snippet"             baseparm             label   "VEXpression"             export  all         }         parm {             name    "exportlist"             baseparm             label   "Attributes to Create"             export  none         }         parm {             name    "vex_strict"             baseparm             label   "Enforce Prototypes"             export  none         }     }      group {         name    "folder1_1"         label   "Bindings"          parm {             name    "autobind"             baseparm             label   "Autobind by Name"             export  none         }         multiparm {             name    "bindings"             label    "Number of Bindings"             baseparm             default 0             parmtag { "autoscope" "0000000000000000" }             parmtag { "multistartoffset" "1" }              parm {                 name    "bindname#"                 baseparm                 label   "Attribute Name"                 export  none             }             parm {                 name    "bindparm#"                 baseparm                 label   "VEX Parameter"                 export  none             }         }          parm {             name    "groupautobind"             baseparm             label   "Autobind Groups by Name"             export  none         }         multiparm {             name    "groupbindings"             label    "Group Bindings"             baseparm             default 0             parmtag { "autoscope" "0000000000000000" }             parmtag { "multistartoffset" "1" }              parm {                 name    "bindgroupname#"                 baseparm                 label   "Group Name"                 export  none             }             parm {                 name    "bindgroupparm#"                 baseparm                 label   "VEX Parameter"                 export  none             }         }          parm {             name    "vex_cwdpath"             baseparm             label   "Evaluation Node Path"             export  none         }         parm {             name    "vex_outputmask"             baseparm             label   "Export Parameters"             export  none         }         parm {             name    "vex_updatenmls"             baseparm             label   "Update Normals If Displaced"             export  none         }         parm {             name    "vex_matchattrib"             baseparm             label   "Attribute to Match"             export  none         }         parm {             name    "vex_inplace"             baseparm             label   "Compute Results In Place"             export  none         }         parm {             name    "vex_selectiongroup"             baseparm             label   "Output Selection Group"             export  none         }         parm {             name    "vex_precision"             baseparm             label   "VEX Precision"             export  none         }     }      parm {         name    "Mode"         label   "Mode"         type    integer         default { "0" }         range   { 0 10 }     } ' paint
opparm paint  bindings ( 0 ) groupbindings ( 0 )
chblockbegin
chadd -t 0 0 paint Mode
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F 'ch("../paint")' paint/Mode
chblockend
opparm paint folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( point ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( 'int mode = chi(\'Mode\');\n\nif ( mode == 0 ) removepointattrib(0, \'Cd\');' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto ) folder1 ( 0 0 ) Mode ( Mode )
chlock paint -*
chautoscope paint -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off paint
opexprlanguage -s hscript paint
opuserdata -n '___Version___' -v '' paint
oporder -e output0 powernoise iteration foreach_end3 foreach_begin3 foreach_count2 attribdelete init length attribpromote1 attribpromote2 attribpromote3 attribpromote4 objectpost objectinfo objectxform switch1 curvexform perimeter attribpromote5 curveinfo curvepost switch2 connectivity1 foreach_end1 foreach_begin1 pieceoffset compile_end1 compile_begin1 attribpromote6 foreach_end2 foreach_begin2 paint 
opcf ..

# Node prim_angle_partition (Sop/subnet)
opadd -e -n subnet prim_angle_partition
oplocate -x 9.5 -y -5.1500000000000004 prim_angle_partition
opspareds '    groupsimple {         name    "Main"         label   "Primitive Angle Partition"          parm {             name    "degree"             label   "Degree"             type    float             default { "22.5" }             range   { 0 10 }             parmtag { "script_callback_language" "python" }         }     }      parm {         name    "label1"         baseparm         label   "Input #1 Label"         invisible         export  all     }     parm {         name    "label2"         baseparm         label   "Input #2 Label"         invisible         export  all     }     parm {         name    "label3"         baseparm         label   "Input #3 Label"         invisible         export  all     }     parm {         name    "label4"         baseparm         label   "Input #4 Label"         invisible         export  all     } ' prim_angle_partition
opparm -V 20.5.522 prim_angle_partition label1 ( 'Sub-Network Input #1' ) label2 ( 'Sub-Network Input #2' ) label3 ( 'Sub-Network Input #3' ) label4 ( 'Sub-Network Input #4' ) Main ( 0 ) degree ( 22.5 )
chlock prim_angle_partition -*
chautoscope prim_angle_partition -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off prim_angle_partition
opexprlanguage -s hscript prim_angle_partition
opuserdata -n '___Version___' -v '20.5.522' prim_angle_partition
opcf prim_angle_partition

# Node output0 (Sop/output)
opadd -e -n output output0
oplocate -x 2.7814899999999998 -y 2.1200899999999998 output0
opspareds "" output0
opparm -V 20.5.522 output0 outputidx ( 0 )
chlock output0 -*
chautoscope output0 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off output0
opexprlanguage -s hscript output0
opuserdata -n '___Version___' -v '20.5.522' output0

# Node N1 (Sop/attribwrangle)
opadd -e -n attribwrangle N1
oplocate -x 2.7814899999999998 -y 4.3790899999999997 N1
opspareds "" N1
opparm N1  bindings ( 0 ) groupbindings ( 0 )
opparm N1 folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( primitive ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( '@N = @N;' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto )
chlock N1 -*
chautoscope N1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off N1
opexprlanguage -s hscript N1
opuserdata -n '___Version___' -v '' N1

# Node prim_partition (Sop/attribwrangle)
opadd -e -n attribwrangle prim_partition
oplocate -x 2.7814899999999998 -y 3.24959 prim_partition
opspareds '    group {         name    "folder1"         label   "Code"          parm {             name    "group"             baseparm             label   "Group"             export  none             bindselector uvselect "Modify Attribs"                 "Select the geometry to affect and press Enter to complete."                 0 1 0xffffffff 0 grouptype 0         }         parm {             name    "grouptype"             baseparm             label   "Group Type"             export  none         }         parm {             name    "class"             baseparm             label   "Run Over"             export  none         }         parm {             name    "vex_numcount"             baseparm             label   "Number Count"             export  none         }         parm {             name    "vex_threadjobsize"             baseparm             label   "Thread Job Size"             export  none         }         groupsimple {             name    "folder_generatedparms_snippet"             label   "Generated Channel Parameters"             grouptag { "sidefx::look" "blank" }              parm {                 name    "Threshold"                 label   "Threshold"                 type    float                 default { "0" }                 range   { 0 1 }             }         }          parm {             name    "snippet"             baseparm             label   "VEXpression"             export  all         }         parm {             name    "exportlist"             baseparm             label   "Attributes to Create"             export  none         }         parm {             name    "vex_strict"             baseparm             label   "Enforce Prototypes"             export  none         }     }      group {         name    "folder1_1"         label   "Bindings"          parm {             name    "autobind"             baseparm             label   "Autobind by Name"             export  none         }         multiparm {             name    "bindings"             label    "Number of Bindings"             baseparm             default 0             parmtag { "autoscope" "0000000000000000" }             parmtag { "multistartoffset" "1" }              parm {                 name    "bindname#"                 baseparm                 label   "Attribute Name"                 export  none             }             parm {                 name    "bindparm#"                 baseparm                 label   "VEX Parameter"                 export  none             }         }          parm {             name    "groupautobind"             baseparm             label   "Autobind Groups by Name"             export  none         }         multiparm {             name    "groupbindings"             label    "Group Bindings"             baseparm             default 0             parmtag { "autoscope" "0000000000000000" }             parmtag { "multistartoffset" "1" }              parm {                 name    "bindgroupname#"                 baseparm                 label   "Group Name"                 export  none             }             parm {                 name    "bindgroupparm#"                 baseparm                 label   "VEX Parameter"                 export  none             }         }          parm {             name    "vex_cwdpath"             baseparm             label   "Evaluation Node Path"             export  none         }         parm {             name    "vex_outputmask"             baseparm             label   "Export Parameters"             export  none         }         parm {             name    "vex_updatenmls"             baseparm             label   "Update Normals If Displaced"             export  none         }         parm {             name    "vex_matchattrib"             baseparm             label   "Attribute to Match"             export  none         }         parm {             name    "vex_inplace"             baseparm             label   "Compute Results In Place"             export  none         }         parm {             name    "vex_selectiongroup"             baseparm             label   "Output Selection Group"             export  none         }         parm {             name    "vex_precision"             baseparm             label   "VEX Precision"             export  none         }     }  ' prim_partition
opparm prim_partition  bindings ( 0 ) groupbindings ( 0 )
chblockbegin
chadd -t 0 0 prim_partition Threshold
chkey -t 0 -v 22.5 -m 0 -a 0 -A 0 -T a  -F 'ch("../degree")' prim_partition/Threshold
chblockend
opparm prim_partition folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( primitive ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( '// assign same integer to primitives whose normals are less then theta\n\nint np = nprimitives(0); float theta = ch(\'Threshold\'); i@_id = @primnum + 1; i[]@partition = array(@primnum);\n\nfor ( int i; i < np; i++ ) {\n    if ( @primnum != i )   {\n        vector _N = prim(0, \'N\', i);\n        float phi = degrees(acos(dot(@N, _N)));\n        if ( phi < theta ) {\n        i@_id += (i + np); append(@partition, i);\n                           }\n                           }\n                           }\n            \n            \n        ' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto ) folder1 ( 0 0 ) folder_generatedparms_snippet ( 0 ) Threshold ( Threshold )
chlock prim_partition -*
chautoscope prim_partition -*
opset -d on -r on -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off prim_partition
opexprlanguage -s hscript prim_partition
opuserdata -n '___Version___' -v '' prim_partition
oporder -e output0 N1 prim_partition 
opcf ..

# Node prim_reconstruct (Sop/subnet)
opadd -e -n subnet prim_reconstruct
oplocate -x 9.5 -y -6.1500000000000004 prim_reconstruct
opspareds "" prim_reconstruct
opparm -V 20.5.522 prim_reconstruct label1 ( 'Sub-Network Input #1' ) label2 ( 'Sub-Network Input #2' ) label3 ( 'Sub-Network Input #3' ) label4 ( 'Sub-Network Input #4' )
chlock prim_reconstruct -*
chautoscope prim_reconstruct -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off prim_reconstruct
opexprlanguage -s hscript prim_reconstruct
opuserdata -n '___Version___' -v '20.5.522' prim_reconstruct
opcf prim_reconstruct

# Node output0 (Sop/output)
opadd -e -n output output0
oplocate -x 5.7945000000000002 -y -0.80588199999999999 output0
opspareds "" output0
opparm -V 20.5.522 output0 outputidx ( 0 )
chlock output0 -*
chautoscope output0 -*
opset -d on -r on -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off output0
opexprlanguage -s hscript output0
opuserdata -n '___Version___' -v '20.5.522' output0

# Node wind_and_edgevectors (Sop/attribwrangle)
opadd -e -n attribwrangle wind_and_edgevectors
oplocate -x 3.7898999999999998 -y 6.6301399999999999 wind_and_edgevectors
opspareds '    group {         name    "folder1"         label   "Code"          parm {             name    "group"             baseparm             label   "Group"             export  none             bindselector uvselect "Modify Attribs"                 "Select the geometry to affect and press Enter to complete."                 0 1 0xffffffff 0 grouptype 0         }         parm {             name    "grouptype"             baseparm             label   "Group Type"             export  none         }         parm {             name    "class"             baseparm             label   "Run Over"             export  none         }         parm {             name    "vex_numcount"             baseparm             label   "Number Count"             export  none         }         parm {             name    "vex_threadjobsize"             baseparm             label   "Thread Job Size"             export  none         }         groupsimple {             name    "folder_generatedparms_snippet"             label   "Generated Channel Parameters"             grouptag { "sidefx::look" "blank" }          }          parm {             name    "snippet"             baseparm             label   "VEXpression"             export  all         }         parm {             name    "exportlist"             baseparm             label   "Attributes to Create"             export  none         }         parm {             name    "vex_strict"             baseparm             label   "Enforce Prototypes"             export  none         }     }      group {         name    "folder1_1"         label   "Bindings"          parm {             name    "autobind"             baseparm             label   "Autobind by Name"             export  none         }         multiparm {             name    "bindings"             label    "Number of Bindings"             baseparm             default 0             parmtag { "autoscope" "0000000000000000" }             parmtag { "multistartoffset" "1" }              parm {                 name    "bindname#"                 baseparm                 label   "Attribute Name"                 export  none             }             parm {                 name    "bindparm#"                 baseparm                 label   "VEX Parameter"                 export  none             }         }          parm {             name    "groupautobind"             baseparm             label   "Autobind Groups by Name"             export  none         }         multiparm {             name    "groupbindings"             label    "Group Bindings"             baseparm             default 0             parmtag { "autoscope" "0000000000000000" }             parmtag { "multistartoffset" "1" }              parm {                 name    "bindgroupname#"                 baseparm                 label   "Group Name"                 export  none             }             parm {                 name    "bindgroupparm#"                 baseparm                 label   "VEX Parameter"                 export  none             }         }          parm {             name    "vex_cwdpath"             baseparm             label   "Evaluation Node Path"             export  none         }         parm {             name    "vex_outputmask"             baseparm             label   "Export Parameters"             export  none         }         parm {             name    "vex_updatenmls"             baseparm             label   "Update Normals If Displaced"             export  none         }         parm {             name    "vex_matchattrib"             baseparm             label   "Attribute to Match"             export  none         }         parm {             name    "vex_inplace"             baseparm             label   "Compute Results In Place"             export  none         }         parm {             name    "vex_selectiongroup"             baseparm             label   "Output Selection Group"             export  none         }         parm {             name    "vex_precision"             baseparm             label   "VEX Precision"             export  none         }     }  ' wind_and_edgevectors
opparm wind_and_edgevectors  bindings ( 0 ) groupbindings ( 0 )
opparm wind_and_edgevectors folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( detail ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( 'int sorted [] = array(0); int n = npoints(0); \nint last = 0; setpointattrib(0, \'sort\', 0, 0, \'set\');\n\n// sort points logically and find edge vectors\nfor ( int i; i < n; i++ ) {\n\n    // get last point appended to sorted\n    int len = len(sorted);\n    int start = getcomp(sorted, len - 1);\n    \n    // chums of this iterations starting point\n    int chums [] = neighbours(0, start); \n    \n    // find next point\n    int next;\n    \n    // if not the first iteration\n    if ( i != 0 ) {\n    \n        // find vector pointing towards last point, to compare against\n        vector c = normalize(point(0, \'P\', last) - point(0, \'P\', start));\n        \n        // and then remove last point from chums\n        removevalue(chums, last);\n        \n        // find chum with greatest angle from c\n        float phi = 1;\n        for ( int u; u < len(chums); u ++ ) {\n            int chump = getcomp(chums, u);\n            vector q = point(0, \'P\', chump);\n            vector p = point(0, \'P\', start);\n            vector e = normalize(q - p);\n            float theta = dot(e, c);\n            if ( theta < phi ) {\n                phi  = theta;\n                next = chump;  }\n            \n                                           }                                           \n                  }\n                  else next = chums[0];\n                                      \n    // calculate edge vector\n    vector p0 = point(0, \'P\', start);\n    vector p1 = point(0, \'P\', next);\n    vector e  = p1 - p0; setpointattrib(0, \'edge\', start, e, \'set\');\n                           \n    // append chum to sorted list, set last to start, set sort attribute;    \n    append(sorted, next); last = start;\n    setpointattrib(0, \'sort\', start, i, \'set\');\n                          }\n                          ' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto ) folder1 ( 0 0 ) folder_generatedparms_snippet ( 0 )
chlock wind_and_edgevectors -*
chautoscope wind_and_edgevectors -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off wind_and_edgevectors
opexprlanguage -s hscript wind_and_edgevectors
opuserdata -n '___Version___' -v '' wind_and_edgevectors

# Node sort_nbc (Sop/sort)
opadd -e -n sort sort_nbc
oplocate -x 3.7928999999999999 -y 8.6311400000000003 sort_nbc
opspareds "" sort_nbc
opparm -V 20.5.522 sort_nbc pointsfolder ( 0 ) ptgroup ( "" ) ptsort ( attribute ) pointseed ( 0 ) pointoffset ( 0 ) pointprox ( 0 0 0 ) pointobjpath ( "" ) pointdir ( 0 1 0 ) pointexpr ( 0 ) pointattrib ( _nbc ) pointattribcomp ( 0 ) pointreverse ( off ) primitivesfolder ( 0 ) primgroup ( "" ) primsort ( none ) primseed ( 0 ) primoffset ( 0 ) primprox ( 0 0 0 ) primobjpath ( "" ) primdir ( 0 1 0 ) primexpr ( 0 ) primattrib ( "" ) primattribcomp ( 0 ) primreverse ( off ) vertexprimorder ( on )
chlock sort_nbc -*
chautoscope sort_nbc -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off sort_nbc
opexprlanguage -s hscript sort_nbc
opuserdata -n '___Version___' -v '20.5.522' sort_nbc

# Node _nbc (Sop/attribwrangle)
opadd -e -n attribwrangle _nbc
oplocate -x 3.7898999999999998 -y 9.6301400000000008 _nbc
opspareds "" _nbc
opparm _nbc  bindings ( 0 ) groupbindings ( 0 )
opparm _nbc folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( point ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( '// use by following sort to ensure ptnum 0 is a corner\ni@_nbc = neighbourcount(0, @ptnum);\n' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto )
chlock _nbc -*
chautoscope _nbc -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off _nbc
opexprlanguage -s hscript _nbc
opuserdata -n '___Version___' -v '' _nbc

# Node sort_by_sort (Sop/sort)
opadd -e -n sort sort_by_sort
oplocate -x 3.7928999999999999 -y 5.6311400000000003 sort_by_sort
opspareds "" sort_by_sort
opparm -V 20.5.522 sort_by_sort pointsfolder ( 0 ) ptgroup ( "" ) ptsort ( attribute ) pointseed ( 0 ) pointoffset ( 0 ) pointprox ( 0 0 0 ) pointobjpath ( "" ) pointdir ( 0 1 0 ) pointexpr ( 0 ) pointattrib ( sort ) pointattribcomp ( 0 ) pointreverse ( off ) primitivesfolder ( 0 ) primgroup ( "" ) primsort ( none ) primseed ( 0 ) primoffset ( 0 ) primprox ( 0 0 0 ) primobjpath ( "" ) primdir ( 0 1 0 ) primexpr ( 0 ) primattrib ( "" ) primattribcomp ( 0 ) primreverse ( off ) vertexprimorder ( on )
chlock sort_by_sort -*
chautoscope sort_by_sort -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off sort_by_sort
opexprlanguage -s hscript sort_by_sort
opuserdata -n '___Version___' -v '20.5.522' sort_by_sort

# Node removepoint (Sop/attribwrangle)
opadd -e -n attribwrangle removepoint
oplocate -x 3.7898999999999998 -y 2.6301399999999999 removepoint
opspareds "" removepoint
opparm removepoint  bindings ( 0 ) groupbindings ( 0 )
opparm removepoint folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( point ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( 'removepoint(0, length(v@edge) == 0 ? @ptnum : -1);' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto )
chlock removepoint -*
chautoscope removepoint -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off removepoint
opexprlanguage -s hscript removepoint
opuserdata -n '___Version___' -v '' removepoint

# Node removeprim (Sop/attribwrangle)
opadd -e -n attribwrangle removeprim
oplocate -x 3.7898999999999998 -y 3.6301399999999999 removeprim
opspareds "" removeprim
opparm removeprim  bindings ( 0 ) groupbindings ( 0 )
opparm removeprim folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( primitive ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( 'removeprim(0, @primnum, 0);' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto )
chlock removeprim -*
chautoscope removeprim -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off removeprim
opexprlanguage -s hscript removeprim
opuserdata -n '___Version___' -v '' removeprim

# Node reconstruct (Sop/attribwrangle)
opadd -e -n attribwrangle reconstruct
oplocate -x 3.7898999999999998 -y 1.6301399999999999 reconstruct
opspareds "" reconstruct
opparm reconstruct  bindings ( 0 ) groupbindings ( 0 )
opparm reconstruct folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( detail ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( 'int n = npoints(0); int r = addprim(0, \'poly\');\nfor( int i; i < n; i++ ) {\n    addvertex(0, r, i);  }\n    \nremovepointattrib(0, \'chums\');        ' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto )
chlock reconstruct -*
chautoscope reconstruct -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off reconstruct
opexprlanguage -s hscript reconstruct
opuserdata -n '___Version___' -v '' reconstruct

# Node remove_nbc (Sop/attribwrangle)
opadd -e -n attribwrangle remove_nbc
oplocate -x 3.7898999999999998 -y 7.6301399999999999 remove_nbc
opspareds "" remove_nbc
opparm remove_nbc  bindings ( 0 ) groupbindings ( 0 )
opparm remove_nbc folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( point ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( 'removepointattrib(0, \'_nbc\');' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto )
chlock remove_nbc -*
chautoscope remove_nbc -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off remove_nbc
opexprlanguage -s hscript remove_nbc
opuserdata -n '___Version___' -v '' remove_nbc

# Node remove_sort_att (Sop/attribwrangle)
opadd -e -n attribwrangle remove_sort_att
oplocate -x 3.7898999999999998 -y 4.6301399999999999 remove_sort_att
opspareds "" remove_sort_att
opparm remove_sort_att  bindings ( 0 ) groupbindings ( 0 )
opparm remove_sort_att folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( point ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( 'removepointattrib(0, \'sort\');' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto )
chlock remove_sort_att -*
chautoscope remove_sort_att -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off remove_sort_att
opexprlanguage -s hscript remove_sort_att
opuserdata -n '___Version___' -v '' remove_sort_att

# Node attribcopy1 (Sop/attribcopy)
opadd -e -n attribcopy attribcopy1
oplocate -x 5.7894500000000004 -y 0.63113799999999998 attribcopy1
opspareds "" attribcopy1
opparm -V 20.5.522 attribcopy1 srcgroup ( 0 ) srcgrouptype ( prims ) destgroup ( "" ) destgrouptype ( prims ) matchbyattribute ( off ) matchbyattributemethod ( byvalues ) attributetomatch ( piece ) attrib ( otherattrib ) attribname ( * ) copyp ( off ) usenewname ( off ) newname ( "" ) class ( guess ) copyvariable ( on ) copydata ( on )
chlock attribcopy1 -*
chautoscope attribcopy1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off attribcopy1
opexprlanguage -s hscript attribcopy1
opuserdata -n '___Version___' -v '20.5.522' attribcopy1
oporder -e output0 wind_and_edgevectors sort_nbc _nbc sort_by_sort removepoint removeprim reconstruct remove_nbc remove_sort_att attribcopy1 
opcf ..

# Node rayintersect (Sop/subnet)
opadd -e -n subnet rayintersect
oplocate -x 9.5 -y -7.1500000000000004 rayintersect
opspareds '    groupsimple {         name    "Main"         label   "Ray Intersect"          parm {             name    "ray"             label   "Ray"             type    string             default { "" }             parmtag { "script_callback_language" "python" }         }     }      groupsimple {         name    "filter"         label   "Filter"          parm {             name    "threshold"             label   "Threshold"             type    integer             joinnext             default { "0" }             range   { 0 10 }             parmtag { "script_callback_language" "python" }         }         parm {             name    "condition"             label   "Condition"             type    ordinal             default { "1" }             menu {                 "0" "Greater"                 "1" "Less"             }             parmtag { "script_callback_language" "python" }         }         parm {             name    "sepparm"             label   "Separator"             type    separator             default { "" }         }         parm {             name    "blast"             label   "Blast Out Of Bounds"             type    toggle             default { "off" }             parmtag { "script_callback_language" "python" }         }     }      parm {         name    "label1"         baseparm         label   "Input #1 Label"         invisible         export  all     }     parm {         name    "label2"         baseparm         label   "Input #2 Label"         invisible         export  all     }     parm {         name    "label3"         baseparm         label   "Input #3 Label"         invisible         export  all     }     parm {         name    "label4"         baseparm         label   "Input #4 Label"         invisible         export  all     } ' rayintersect
opparm -V 20.5.522 rayintersect label1 ( 'Sub-Network Input #1' ) label2 ( 'Sub-Network Input #2' ) label3 ( 'Sub-Network Input #3' ) label4 ( 'Sub-Network Input #4' ) Main ( 0 ) ray ( "" ) filter ( 0 ) threshold ( 0 ) condition ( 1 ) sepparm ( ) blast ( off )
chlock rayintersect -*
chautoscope rayintersect -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off rayintersect
opexprlanguage -s hscript rayintersect
opuserdata -n '___Version___' -v '20.5.522' rayintersect
opcf rayintersect

# Node output0 (Sop/output)
opadd -e -n output output0
oplocate -x 3.5015999999999998 -y -6.1730600000000004 output0
opspareds "" output0
opparm -V 20.5.522 output0 outputidx ( 0 )
chlock output0 -*
chautoscope output0 -*
opset -d on -r on -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off output0
opexprlanguage -s hscript output0
opuserdata -n '___Version___' -v '20.5.522' output0

# Node keep_points (Sop/attribwrangle)
opadd -e -n attribwrangle keep_points
oplocate -x 3.4969999999999999 -y 6.8490000000000002 keep_points
opspareds "" keep_points
opparm keep_points  bindings ( 0 ) groupbindings ( 0 )
opparm keep_points folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( primitive ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( 'removeprim(0, @primnum, 0);' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto )
chlock keep_points -*
chautoscope keep_points -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off keep_points
opexprlanguage -s hscript keep_points
opuserdata -n '___Version___' -v '' keep_points

# Node init (Sop/attribwrangle)
opadd -e -n attribwrangle init
oplocate -x 3.4969999999999999 -y 4.8490000000000002 init
opspareds '    group {         name    "folder1"         label   "Code"          parm {             name    "group"             baseparm             label   "Group"             export  none             bindselector uvselect "Modify Attribs"                 "Select the geometry to affect and press Enter to complete."                 0 1 0xffffffff 0 grouptype 0         }         parm {             name    "grouptype"             baseparm             label   "Group Type"             export  none         }         parm {             name    "class"             baseparm             label   "Run Over"             export  none         }         parm {             name    "vex_numcount"             baseparm             label   "Number Count"             export  none         }         parm {             name    "vex_threadjobsize"             baseparm             label   "Thread Job Size"             export  none         }         groupsimple {             name    "folder_generatedparms_snippet"             label   "Generated Channel Parameters"             grouptag { "sidefx::look" "blank" }              parm {                 name    "Ray"                 label   "Ray"                 type    string                 default { "" }             }         }          parm {             name    "snippet"             baseparm             label   "VEXpression"             export  all         }         parm {             name    "exportlist"             baseparm             label   "Attributes to Create"             export  none         }         parm {             name    "vex_strict"             baseparm             label   "Enforce Prototypes"             export  none         }     }      group {         name    "folder1_1"         label   "Bindings"          parm {             name    "autobind"             baseparm             label   "Autobind by Name"             export  none         }         multiparm {             name    "bindings"             label    "Number of Bindings"             baseparm             default 0             parmtag { "autoscope" "0000000000000000" }             parmtag { "multistartoffset" "1" }              parm {                 name    "bindname#"                 baseparm                 label   "Attribute Name"                 export  none             }             parm {                 name    "bindparm#"                 baseparm                 label   "VEX Parameter"                 export  none             }         }          parm {             name    "groupautobind"             baseparm             label   "Autobind Groups by Name"             export  none         }         multiparm {             name    "groupbindings"             label    "Group Bindings"             baseparm             default 0             parmtag { "autoscope" "0000000000000000" }             parmtag { "multistartoffset" "1" }              parm {                 name    "bindgroupname#"                 baseparm                 label   "Group Name"                 export  none             }             parm {                 name    "bindgroupparm#"                 baseparm                 label   "VEX Parameter"                 export  none             }         }          parm {             name    "vex_cwdpath"             baseparm             label   "Evaluation Node Path"             export  none         }         parm {             name    "vex_outputmask"             baseparm             label   "Export Parameters"             export  none         }         parm {             name    "vex_updatenmls"             baseparm             label   "Update Normals If Displaced"             export  none         }         parm {             name    "vex_matchattrib"             baseparm             label   "Attribute to Match"             export  none         }         parm {             name    "vex_inplace"             baseparm             label   "Compute Results In Place"             export  none         }         parm {             name    "vex_selectiongroup"             baseparm             label   "Output Selection Group"             export  none         }         parm {             name    "vex_precision"             baseparm             label   "VEX Precision"             export  none         }     }  ' init
opparm init  bindings ( 0 ) groupbindings ( 0 )
opparm init folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( point ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( 'i@id = @ptnum;\n\n//\nstring rayname = chs(\'Ray\'); int hasray = haspointattrib(0, rayname);\nif ( hasray == 0 ) error(\'Input does not have the ray vector.\');\n//\nvector ray = point(0, rayname, @ptnum); \nv@foci = @P + (ray * length(getbbox_size(0))); v@ray = v@foci - @P;' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto ) folder1 ( 0 0 ) folder_generatedparms_snippet ( 0 ) Ray ( '`chs("../ray")`' )
chlock init -*
chautoscope init -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off init
opexprlanguage -s hscript init
opuserdata -n '___Version___' -v '' init

# Node visualize5 (Sop/visualize)
opadd -e -n visualize visualize5
oplocate -x 1.3752 -y 4.0221 visualize5
opspareds '    parm {         name    "setvisualizers"         baseparm         label   "Update Visualizers"         export  none     }     parm {         name    "clearvisualizers"         baseparm         label   "Clear Incoming Visualizers"         export  none     }     parm {         name    "wireframe"         baseparm         label   "Wireframe"         export  none     }     parm {         name    "lit"         baseparm         label   "Lighting"         export  none     }     parm {         name    "xray"         baseparm         label   "X-Ray"         export  none     }     parm {         name    "setcuspangle"         baseparm         label   "Set Cusp Angle"         nolabel         joinnext         export  none     }     parm {         name    "cuspangle"         baseparm         label   "Cusp Angle"         export  none     }     parm {         name    "showpoints"         baseparm         label   "Show Points"         export  none     }     parm {         name    "spherepoints"         baseparm         label   "Points as Spheres"         export  none     }     parm {         name    "spriteblend"         baseparm         label   "Sprite Blending"         export  none     }     parm {         name    "setspritecutoff"         baseparm         label   "Set Sprite Cutoff"         nolabel         joinnext         export  none     }     parm {         name    "spritecutoff"         baseparm         label   "Sprite Cutoff"         export  none     }     parm {         name    "node_vis_enabled"         label   "Visualization Enabled"         type    toggle         invisible         default { "1" }     }     multiparm {         name    "num_visualizers"         label    "Visualizers"         invisible         default 0         parmtag { "multistartoffset" "0" }          parm {             name    "vis_active#"             label   "Active #"             type    toggle             invisible             default { "0" }         }         parm {             name    "vis_data#"             label   "Raw Data #"             type    string             invisible             nolabel             default { "" }             parmtag { "editor" "1" }         }     }      parm {         name    "shadeopencurves"         baseparm         label   "Shade Open Curves"         export  none     } ' visualize5
opparm visualize5  num_visualizers ( 1 )
opparm visualize5 setvisualizers ( on ) clearvisualizers ( off ) wireframe ( nochange ) shadeopencurves ( nochange ) lit ( nochange ) xray ( nochange ) setcuspangle ( off ) cuspangle ( 60 ) showpoints ( nochange ) spherepoints ( nochange ) spriteblend ( nochange ) setspritecutoff ( off ) spritecutoff ( 0.5 ) node_vis_enabled ( on ) num_visualizers ( 1 ) vis_active0 ( on ) vis_data0 ( '{\n	"flags":{\n		"type":"int",\n		"value":27\n	},\n	"icon":{\n		"type":"string",\n		"value":"VIEW_visualization_color"\n	},\n	"label":{\n		"type":"string",\n		"value":"Color 1"\n	},\n	"name":{\n		"type":"string",\n		"value":"vis_color_1"\n	},\n	"parameters":{\n		"type":"string",\n		"value":"{\\nversion 0.8\\nstyle\\t[ 0\\tlocks=0 ]\\t(\\t\\"vector\\"\\t)\\nclass\\t[ 0\\tlocks=0 ]\\t(\\t\\"auto\\"\\t)\\nattrib\\t[ 0\\tlocks=0 ]\\t(\\tray\\t)\\nvisibility\\t[ 0\\tlocks=0 ]\\t(\\t\\"always\\"\\t)\\ndecorradius\\t[ 0\\tlocks=0 ]\\t(\\t1\\t)\\ngroup\\t[ 0\\tlocks=0 ]\\t(\\t\\"\\"\\t)\\npointsize\\t[ 0\\tlocks=0 ]\\t(\\t3\\t)\\nlengthscale\\t[ 0\\tlocks=0 ]\\t(\\t1\\t)\\nunitlength\\t[ 0\\tlocks=0 ]\\t(\\t1\\t)\\nnormalize\\t[ 0\\tlocks=0 ]\\t(\\t\\"off\\"\\t)\\narrowheads\\t[ 0\\tlocks=0 ]\\t(\\t\\"off\\"\\t)\\nvectorcoloring\\t[ 0\\tlocks=0 ]\\t(\\t\\"fixed\\"\\t)\\ncolorattrib\\t[ 0\\tlocks=0 ]\\t(\\tCd\\t)\\nramptype\\t[ 0\\tlocks=0 ]\\t(\\t\\"false\\"\\t)\\ncolorramp\\t[ 0\\tlocks=0 ]\\t(\\t5\\t)\\nrangespec\\t[ 0\\tlocks=0 ]\\t(\\t\\"center-width\\"\\t)\\nminscalar\\t[ 0\\tlocks=0 ]\\t(\\t0\\t)\\nmaxscalar\\t[ 0\\tlocks=0 ]\\t(\\t10\\t)\\ncenterscalar\\t[ 0\\tlocks=0 ]\\t(\\t0\\t)\\nwidthscalar\\t[ 0\\tlocks=0 ]\\t(\\t2\\t)\\nclamptype\\t[ 0\\tlocks=0 ]\\t(\\t\\"edge\\"\\t)\\ntreatasscalar\\t[ 0\\tlocks=0 ]\\t(\\t\\"on\\"\\t)\\nusing\\t[ 0\\tlocks=0 ]\\t(\\t\\"length\\"\\t)\\ncomponent\\t[ 0\\tlocks=0 ]\\t(\\t0\\t)\\nrefvec\\t[ 0\\tlocks=0 ]\\t(\\t0\\t1\\t0\\t)\\nmarkercolor\\t[ 0\\tlocks=0 ]\\t(\\t0.4\\t0.4\\t0.4\\t0.4\\t)\\ntrail\\t[ 0\\tlocks=0 ]\\t(\\t1\\t1\\t0\\t0.5\\t)\\ntextcolor\\t[ 0\\tlocks=0 ]\\t(\\t0.25\\t0.75\\t0.75\\t)\\nfontsize\\t[ 0\\tlocks=0 ]\\t(\\t\\"guidefont\\"\\t)\\nxcolor\\t[ 0\\tlocks=0 ]\\t(\\t1\\t0\\t0\\t1\\t)\\nycolor\\t[ 0\\tlocks=0 ]\\t(\\t0\\t1\\t0\\t1\\t)\\nzcolor\\t[ 0\\tlocks=0 ]\\t(\\t0\\t0\\t1\\t1\\t)\\ncolorramp1pos\\t[ 0\\tlocks=0 ]\\t(\\t0\\t)\\ncolorramp1c\\t[ 0\\tlocks=0 ]\\t(\\t0.20000000298023224\\t0\\t1\\t)\\ncolorramp1interp\\t[ 0\\tlocks=0 ]\\t(\\t\\"linear\\"\\t)\\ncolorramp2pos\\t[ 0\\tlocks=0 ]\\t(\\t0.25\\t)\\ncolorramp2c\\t[ 0\\tlocks=0 ]\\t(\\t0\\t0.8500000238418579\\t1\\t)\\ncolorramp2interp\\t[ 0\\tlocks=0 ]\\t(\\t\\"linear\\"\\t)\\ncolorramp3pos\\t[ 0\\tlocks=0 ]\\t(\\t0.5\\t)\\ncolorramp3c\\t[ 0\\tlocks=0 ]\\t(\\t0\\t1\\t0.10000000149011612\\t)\\ncolorramp3interp\\t[ 0\\tlocks=0 ]\\t(\\t\\"linear\\"\\t)\\ncolorramp4pos\\t[ 0\\tlocks=0 ]\\t(\\t0.75\\t)\\ncolorramp4c\\t[ 0\\tlocks=0 ]\\t(\\t0.949999988079071\\t1\\t0\\t)\\ncolorramp4interp\\t[ 0\\tlocks=0 ]\\t(\\t\\"linear\\"\\t)\\ncolorramp5pos\\t[ 0\\tlocks=0 ]\\t(\\t1\\t)\\ncolorramp5c\\t[ 0\\tlocks=0 ]\\t(\\t1\\t0\\t0\\t)\\ncolorramp5interp\\t[ 0\\tlocks=0 ]\\t(\\t\\"linear\\"\\t)\\n}\\n"\n	},\n	"scope":{\n		"type":"int",\n		"value":2\n	},\n	"type":{\n		"type":"string",\n		"value":"vis_marker"\n	}\n}\n' )
chlock visualize5 -*
chautoscope visualize5 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off visualize5
opexprlanguage -s hscript visualize5
opuserdata -n '___Version___' -v '' visualize5

# Node lines_to_intersect (Sop/attribwrangle)
opadd -e -n attribwrangle lines_to_intersect
oplocate -x 5.4969999999999999 -y 3.8490000000000002 lines_to_intersect
opspareds "" lines_to_intersect
opparm lines_to_intersect  bindings ( 0 ) groupbindings ( 0 )
opparm lines_to_intersect folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( point ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( 'int a = addprim(0, \'polyline\');\nint t = addpoint(0, v@foci); setpointattrib(0, \'id\', t, i@id, \'set\');\naddvertex(0, a, @ptnum); addvertex(0, a, t);' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto )
chlock lines_to_intersect -*
chautoscope lines_to_intersect -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off lines_to_intersect
opexprlanguage -s hscript lines_to_intersect
opuserdata -n '___Version___' -v '' lines_to_intersect

# Node foreach_end6 (Sop/block_end)
opadd -e -n block_end foreach_end6
oplocate -x 3.5015999999999998 -y -0.15354999999999999 foreach_end6
opspareds "" foreach_end6
opparm -V 20.5.522 foreach_end6 itermethod ( pieces ) method ( merge ) iterations ( 10 ) startvalue ( 1 ) increment ( 1 ) class ( point ) useattrib ( on ) attrib ( id ) usemaxiter ( off ) maxiter ( 10 ) blockpath ( ../foreach_begin6 ) templatepath ( ../foreach_begin6 ) resetcookpass ( 0 ) dosinglepass ( off ) singlepass ( 0 ) stopcondition ( 0 ) multithread ( off )
chlock foreach_end6 -*
chautoscope foreach_end6 -*
opcolor -c 0.75 0.40000000596046448 0 foreach_end6
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F off -c on -e on -b off foreach_end6
opexprlanguage -s hscript foreach_end6
opuserdata -n '___Version___' -v '20.5.522' foreach_end6

# Node foreach_begin6 (Sop/block_begin)
opadd -e -n block_begin foreach_begin6
oplocate -x 3.5015999999999998 -y 2.8471500000000001 foreach_begin6
opspareds "" foreach_begin6
opparm -V 20.5.522 foreach_begin6 method ( piece ) blockpath ( ../foreach_end6 ) resetcookpass ( 0 ) createmetablock ( 0 ) label1 ( 'iteration, numiterations, value, ivalue' )
chlock foreach_begin6 -*
chautoscope foreach_begin6 -*
opcolor -c 0.75 0.40000000596046448 0 foreach_begin6
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F off -c on -e on -b off foreach_begin6
opexprlanguage -s hscript foreach_begin6
opuserdata -n '___Version___' -v '20.5.522' foreach_begin6

# Node foreach_begin6_metadata1 (Sop/block_begin)
opadd -e -n block_begin foreach_begin6_metadata1
oplocate -x 5.5015999999999998 -y 2.8471500000000001 foreach_begin6_metadata1
opspareds "" foreach_begin6_metadata1
opparm -V 20.5.522 foreach_begin6_metadata1 method ( input ) blockpath ( ../foreach_end6 ) resetcookpass ( 0 ) createmetablock ( 0 ) label1 ( 'iteration, numiterations, value, ivalue' )
chlock foreach_begin6_metadata1 -*
chautoscope foreach_begin6_metadata1 -*
opcolor -c 0.75 0.40000000596046448 0 foreach_begin6_metadata1
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F off -c on -e on -b off foreach_begin6_metadata1
opexprlanguage -s hscript foreach_begin6_metadata1
opuserdata -n '___Version___' -v '20.5.522' foreach_begin6_metadata1

# Node prune (Sop/attribwrangle)
opadd -e -n attribwrangle prune
oplocate -x 5.4969999999999999 -y 1.849 prune
opspareds "" prune
opparm prune  bindings ( 0 ) groupbindings ( 0 )
opparm prune folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( point ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( 'int prune = point(1, \'id\', 0);\nremovepoint(0, i@id == prune ? @ptnum : -1);' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto )
chlock prune -*
chautoscope prune -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off prune
opexprlanguage -s hscript prune
opuserdata -n '___Version___' -v '' prune

# Node intersect (Sop/attribwrangle)
opadd -e -n attribwrangle intersect
oplocate -x 3.4969999999999999 -y 0.84899999999999998 intersect
opspareds "" intersect
opparm intersect  bindings ( 0 ) groupbindings ( 0 )
opparm intersect folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( point ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( 'vector intersections [] = array(); int prim [] = array(); vector uvw [] = array();\nint q = intersect_all(1, @P, v@ray, intersections, prim, uvw); int len = len(intersections);\n\n//i@index;\nforeach ( int i; vector u; intersections ) {\n    int t = addpoint(0, u);\n    setpointattrib(0, \'index\', t, i, \'set\');\n    setpointattrib(0, \'id\', t, i@id, \'set\');\n                                    }\n\nremovepoint(0, @ptnum);\n' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto )
chlock intersect -*
chautoscope intersect -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off intersect
opexprlanguage -s hscript intersect
opuserdata -n '___Version___' -v '' intersect

# Node condition_filter (Sop/attribwrangle)
opadd -e -n attribwrangle condition_filter
oplocate -x 3.4969999999999999 -y -4.1509999999999998 condition_filter
opspareds '    group {         name    "folder1"         label   "Code"          parm {             name    "group"             baseparm             label   "Group"             export  none             bindselector uvselect "Modify Attribs"                 "Select the geometry to affect and press Enter to complete."                 0 1 0xffffffff 0 grouptype 0         }         parm {             name    "grouptype"             baseparm             label   "Group Type"             export  none         }         parm {             name    "class"             baseparm             label   "Run Over"             export  none         }         parm {             name    "vex_numcount"             baseparm             label   "Number Count"             export  none         }         parm {             name    "vex_threadjobsize"             baseparm             label   "Thread Job Size"             export  none         }         groupsimple {             name    "folder_generatedparms_snippet"             label   "Generated Channel Parameters"             grouptag { "group_type" "simple" }             grouptag { "sidefx::look" "blank" }              parm {                 name    "Condition"                 label   "Condition"                 type    integer                 default { "0" }                 range   { 0 10 }             }             parm {                 name    "Threshold"                 label   "Threshold"                 type    integer                 default { "0" }                 range   { 0 10 }             }         }          parm {             name    "snippet"             baseparm             label   "VEXpression"             export  all         }         parm {             name    "exportlist"             baseparm             label   "Attributes to Create"             export  none         }         parm {             name    "vex_strict"             baseparm             label   "Enforce Prototypes"             export  none         }     }      group {         name    "folder1_1"         label   "Bindings"          parm {             name    "autobind"             baseparm             label   "Autobind by Name"             export  none         }         multiparm {             name    "bindings"             label    "Number of Bindings"             baseparm             default 0             parmtag { "autoscope" "0000000000000000" }             parmtag { "multistartoffset" "1" }              parm {                 name    "bindname#"                 baseparm                 label   "Attribute Name"                 export  none             }             parm {                 name    "bindparm#"                 baseparm                 label   "VEX Parameter"                 export  none             }         }          parm {             name    "groupautobind"             baseparm             label   "Autobind Groups by Name"             export  none         }         multiparm {             name    "groupbindings"             label    "Group Bindings"             baseparm             default 0             parmtag { "autoscope" "0000000000000000" }             parmtag { "multistartoffset" "1" }              parm {                 name    "bindgroupname#"                 baseparm                 label   "Group Name"                 export  none             }             parm {                 name    "bindgroupparm#"                 baseparm                 label   "VEX Parameter"                 export  none             }         }          parm {             name    "vex_cwdpath"             baseparm             label   "Evaluation Node Path"             export  none         }         parm {             name    "vex_outputmask"             baseparm             label   "Export Parameters"             export  none         }         parm {             name    "vex_updatenmls"             baseparm             label   "Update Normals If Displaced"             export  none         }         parm {             name    "vex_matchattrib"             baseparm             label   "Attribute to Match"             export  none         }         parm {             name    "vex_inplace"             baseparm             label   "Compute Results In Place"             export  none         }         parm {             name    "vex_selectiongroup"             baseparm             label   "Output Selection Group"             export  none         }         parm {             name    "vex_precision"             baseparm             label   "VEX Precision"             export  none         }     }  ' condition_filter
opparm condition_filter  bindings ( 0 ) groupbindings ( 0 )
chblockbegin
chadd -t 0 0 condition_filter Condition
chkey -t 0 -v 1 -m 0 -a 0 -A 0 -T a  -F 'ch("../condition")' condition_filter/Condition
chadd -t 0 0 condition_filter Threshold
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F 'ch("../threshold")' condition_filter/Threshold
chblockend
opparm condition_filter folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( point ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( 'int con = chi(\'Condition\'); int t = chi(\'Threshold\');\n\nif ( con == 0 ) {\n    removepoint(0, i@index > t ? @ptnum : -1);\n                }\n                else { removepoint(0, i@index < t ? @ptnum : -1); }\n                \n' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto ) folder1 ( 0 0 ) folder_generatedparms_snippet ( 0 ) Condition ( Condition ) Threshold ( Threshold )
chlock condition_filter -*
chautoscope condition_filter -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off condition_filter
opexprlanguage -s hscript condition_filter
opuserdata -n '___Version___' -v '' condition_filter

# Node foreach_end7 (Sop/block_end)
opadd -e -n block_end foreach_end7
oplocate -x 3.5015999999999998 -y -5.1535500000000001 foreach_end7
opspareds "" foreach_end7
opparm -V 20.5.522 foreach_end7 itermethod ( pieces ) method ( merge ) iterations ( 10 ) startvalue ( 1 ) increment ( 1 ) class ( point ) useattrib ( on ) attrib ( id ) usemaxiter ( off ) maxiter ( 10 ) blockpath ( ../foreach_begin7 ) templatepath ( ../foreach_begin7 ) resetcookpass ( 0 ) dosinglepass ( off ) singlepass ( 0 ) stopcondition ( 0 ) multithread ( off )
chlock foreach_end7 -*
chautoscope foreach_end7 -*
opcolor -c 0.75 0.40000000596046448 0 foreach_end7
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F off -c on -e on -b off foreach_end7
opexprlanguage -s hscript foreach_end7
opuserdata -n '___Version___' -v '20.5.522' foreach_end7

# Node foreach_begin7 (Sop/block_begin)
opadd -e -n block_begin foreach_begin7
oplocate -x 3.5015999999999998 -y -3.1528499999999999 foreach_begin7
opspareds "" foreach_begin7
opparm -V 20.5.522 foreach_begin7 method ( piece ) blockpath ( ../foreach_end7 ) resetcookpass ( 0 ) createmetablock ( 0 ) label1 ( 'iteration, numiterations, value, ivalue' )
chlock foreach_begin7 -*
chautoscope foreach_begin7 -*
opcolor -c 0.75 0.40000000596046448 0 foreach_begin7
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F off -c on -e on -b off foreach_begin7
opexprlanguage -s hscript foreach_begin7
opuserdata -n '___Version___' -v '20.5.522' foreach_begin7

# Node clean (Sop/attribwrangle)
opadd -e -n attribwrangle clean
oplocate -x 3.4969999999999999 -y -1.151 clean
opspareds "" clean
opparm clean  bindings ( 0 ) groupbindings ( 0 )
opparm clean folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( point ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( 'removepointattrib(0, \'foci\'); removepointattrib(0, \'ray\');' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto )
chlock clean -*
chautoscope clean -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off clean
opexprlanguage -s hscript clean
opuserdata -n '___Version___' -v '' clean

# Node filter_bounds (Sop/attribwrangle)
opadd -e -n attribwrangle filter_bounds
oplocate -x 9.4969999999999999 -y -2.1509999999999998 filter_bounds
opspareds '    group {         name    "folder1"         label   "Code"          parm {             name    "group"             baseparm             label   "Group"             export  none             bindselector uvselect "Modify Attribs"                 "Select the geometry to affect and press Enter to complete."                 0 1 0xffffffff 0 grouptype 0         }         parm {             name    "grouptype"             baseparm             label   "Group Type"             export  none         }         parm {             name    "class"             baseparm             label   "Run Over"             export  none         }         parm {             name    "vex_numcount"             baseparm             label   "Number Count"             export  none         }         parm {             name    "vex_threadjobsize"             baseparm             label   "Thread Job Size"             export  none         }         groupsimple {             name    "folder_generatedparms_snippet"             label   "Generated Channel Parameters"             grouptag { "sidefx::look" "blank" }              parm {                 name    "Mode"                 label   "Mode"                 type    integer                 default { "0" }                 range   { 0 10 }             }         }          parm {             name    "snippet"             baseparm             label   "VEXpression"             export  all         }         parm {             name    "exportlist"             baseparm             label   "Attributes to Create"             export  none         }         parm {             name    "vex_strict"             baseparm             label   "Enforce Prototypes"             export  none         }     }      group {         name    "folder1_1"         label   "Bindings"          parm {             name    "autobind"             baseparm             label   "Autobind by Name"             export  none         }         multiparm {             name    "bindings"             label    "Number of Bindings"             baseparm             default 0             parmtag { "autoscope" "0000000000000000" }             parmtag { "multistartoffset" "1" }              parm {                 name    "bindname#"                 baseparm                 label   "Attribute Name"                 export  none             }             parm {                 name    "bindparm#"                 baseparm                 label   "VEX Parameter"                 export  none             }         }          parm {             name    "groupautobind"             baseparm             label   "Autobind Groups by Name"             export  none         }         multiparm {             name    "groupbindings"             label    "Group Bindings"             baseparm             default 0             parmtag { "autoscope" "0000000000000000" }             parmtag { "multistartoffset" "1" }              parm {                 name    "bindgroupname#"                 baseparm                 label   "Group Name"                 export  none             }             parm {                 name    "bindgroupparm#"                 baseparm                 label   "VEX Parameter"                 export  none             }         }          parm {             name    "vex_cwdpath"             baseparm             label   "Evaluation Node Path"             export  none         }         parm {             name    "vex_outputmask"             baseparm             label   "Export Parameters"             export  none         }         parm {             name    "vex_updatenmls"             baseparm             label   "Update Normals If Displaced"             export  none         }         parm {             name    "vex_matchattrib"             baseparm             label   "Attribute to Match"             export  none         }         parm {             name    "vex_inplace"             baseparm             label   "Compute Results In Place"             export  none         }         parm {             name    "vex_selectiongroup"             baseparm             label   "Output Selection Group"             export  none         }         parm {             name    "vex_precision"             baseparm             label   "VEX Precision"             export  none         }     }  ' filter_bounds
opparm filter_bounds  bindings ( 0 ) groupbindings ( 0 )
chblockbegin
chadd -t 0 0 filter_bounds Mode
chkey -t 0 -v 1 -m 0 -a 0 -A 0 -T a  -F 'ch("../blast")' filter_bounds/Mode
chblockend
opparm filter_bounds folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( point ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( 'if ( chi(\'Mode\') == 1 ) {\n\nvector com = point(2, \'P\', 0); float commag = length(com - @P); float boundmag = point(1, \'commag\', nearpoint(1, @P));\nremovepoint(0, commag > boundmag ? @ptnum : -1);\n                        }' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto ) folder1 ( 0 0 ) folder_generatedparms_snippet ( 0 ) Mode ( Mode )
chlock filter_bounds -*
chautoscope filter_bounds -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off filter_bounds
opexprlanguage -s hscript filter_bounds
opuserdata -n '___Version___' -v '' filter_bounds

# Node extractcentroid2 (Sop/extractcentroid)
opadd -e -n extractcentroid extractcentroid2
oplocate -x 9.5 -y 6.8499999999999996 extractcentroid2
opspareds "" extractcentroid2
opparm -V 20.5.522 extractcentroid2 partitiontype ( detail ) pieceattrib ( name ) class ( prim ) method ( com ) output ( points ) centroidattrib ( centroid ) transferattributes ( "" ) transfergroups ( "" )
chlock extractcentroid2 -*
chautoscope extractcentroid2 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off extractcentroid2
opexprlanguage -s hscript extractcentroid2
opuserdata -n '___Version___' -v '20.5.522' extractcentroid2

# Node com_vector (Sop/attribwrangle)
opadd -e -n attribwrangle com_vector
oplocate -x 7.4969999999999999 -y 5.8490000000000002 com_vector
opspareds "" com_vector
opparm com_vector  bindings ( 0 ) groupbindings ( 0 )
opparm com_vector folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( point ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( '@commag = length(point(1, \'P\', 0) - @P);' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto )
chlock com_vector -*
chautoscope com_vector -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off com_vector
opexprlanguage -s hscript com_vector
opuserdata -n '___Version___' -v '' com_vector
oporder -e output0 keep_points init visualize5 lines_to_intersect foreach_end6 foreach_begin6 foreach_begin6_metadata1 prune intersect condition_filter foreach_end7 foreach_begin7 clean filter_bounds extractcentroid2 com_vector 
opcf ..

# Node solverpropagation (Sop/subnet)
opadd -e -n subnet solverpropagation
oplocate -x 1.5 -y -3.1499999999999999 solverpropagation
opspareds '    groupsimple {         name    "propagationsolver"         label   "Propagation Solver"          parm {             name    "mode"             label   "Mode"             type    ordinal             default { "0" }             menu {                 "0" "Proximity"                 "1" "Connectivity"             }             parmtag { "script_callback_language" "python" }         }         parm {             name    "sepparm3"             label   "Separator"             type    separator             default { "" }         }         parm {             name    "start"             label   "Start Frame"             type    integer             joinnext             default { "1" }             range   { 0 10 }             parmtag { "script_callback_language" "python" }         }         parm {             name    "end"             label   "End Frame"             type    integer             joinnext             default { "0" }             hidewhen "{ hold != 1 }"             range   { 0 10 }             parmtag { "script_callback_language" "python" }         }         parm {             name    "hold"             label   "Hold"             type    toggle             default { "off" }             parmtag { "script_callback_language" "python" }         }         parm {             name    "sepparm"             label   "Separator"             type    separator             default { "" }         }         parm {             name    "distance"             label   "Distance"             type    float             default { "1" }             hidewhen "{ mode != 0 }"             range   { 0 10 }             parmtag { "script_callback_language" "python" }         }         parm {             name    "max"             label   "Max"             type    integer             default { "10" }             hidewhen "{ mode != 0 }"             range   { 0 10 }             parmtag { "script_callback_language" "python" }         }         parm {             name    "sepparm2"             label   "Separator"             type    separator             default { "" }             hidewhen "{ mode != 0 }"         }         parm {             name    "initgrowth"             label   "Initial"             type    float             default { "0.1" }             range   { 0 10 }             parmtag { "script_callback_language" "python" }         }         parm {             name    "rate"             label   "Rate"             type    float             default { "0.1" }             range   { 0 10 }             parmtag { "script_callback_language" "python" }         }         parm {             name    "sepparm4"             label   "Separator"             type    separator             default { "" }         }         parm {             name    "paint"             label   "Paint"             type    toggle             default { "on" }             parmtag { "script_callback_language" "python" }         }     }      parm {         name    "label1"         baseparm         label   "Input #1 Label"         invisible         export  all     }     parm {         name    "label2"         baseparm         label   "Input #2 Label"         invisible         export  all     }     parm {         name    "label3"         baseparm         label   "Input #3 Label"         invisible         export  all     }     parm {         name    "label4"         baseparm         label   "Input #4 Label"         invisible         export  all     } ' solverpropagation
opparm -V 20.5.522 solverpropagation label1 ( 'Sub-Network Input #1' ) label2 ( 'Sub-Network Input #2' ) label3 ( 'Sub-Network Input #3' ) label4 ( 'Sub-Network Input #4' ) propagationsolver ( 0 ) mode ( 0 ) sepparm3 ( ) start ( 1 ) end ( 0 ) hold ( off ) sepparm ( ) distance ( 1 ) max ( 10 ) sepparm2 ( ) initgrowth ( 0.1 ) rate ( 0.1 ) sepparm4 ( ) paint ( on )
chlock solverpropagation -*
chautoscope solverpropagation -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off solverpropagation
opexprlanguage -s hscript solverpropagation
opuserdata -n '___Version___' -v '20.5.522' solverpropagation
opcf solverpropagation

# Node output0 (Sop/output)
opadd -e -n output output0
oplocate -x 1.5016 -y -5.1924799999999998 output0
opspareds "" output0
opparm -V 20.5.522 output0 outputidx ( 0 )
chlock output0 -*
chautoscope output0 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off output0
opexprlanguage -s hscript output0
opuserdata -n '___Version___' -v '20.5.522' output0

# Node init (Sop/attribwrangle)
opadd -e -n attribwrangle init
oplocate -x 1.4970000000000001 -y 4.8490000000000002 init
opspareds '    group {         name    "folder1"         label   "Code"          parm {             name    "group"             baseparm             label   "Group"             export  none             bindselector uvselect "Modify Attribs"                 "Select the geometry to affect and press Enter to complete."                 0 1 0xffffffff 0 grouptype 0         }         parm {             name    "grouptype"             baseparm             label   "Group Type"             export  none         }         parm {             name    "class"             baseparm             label   "Run Over"             export  none         }         parm {             name    "vex_numcount"             baseparm             label   "Number Count"             export  none         }         parm {             name    "vex_threadjobsize"             baseparm             label   "Thread Job Size"             export  none         }         parm {             name    "snippet"             baseparm             label   "VEXpression"             export  all         }         parm {             name    "exportlist"             baseparm             label   "Attributes to Create"             export  none         }         parm {             name    "vex_strict"             baseparm             label   "Enforce Prototypes"             export  none         }     }      group {         name    "folder1_1"         label   "Bindings"          parm {             name    "autobind"             baseparm             label   "Autobind by Name"             export  none         }         multiparm {             name    "bindings"             label    "Number of Bindings"             baseparm             default 0             parmtag { "autoscope" "0000000000000000" }             parmtag { "multistartoffset" "1" }              parm {                 name    "bindname#"                 baseparm                 label   "Attribute Name"                 export  none             }             parm {                 name    "bindparm#"                 baseparm                 label   "VEX Parameter"                 export  none             }         }          parm {             name    "groupautobind"             baseparm             label   "Autobind Groups by Name"             export  none         }         multiparm {             name    "groupbindings"             label    "Group Bindings"             baseparm             default 0             parmtag { "autoscope" "0000000000000000" }             parmtag { "multistartoffset" "1" }              parm {                 name    "bindgroupname#"                 baseparm                 label   "Group Name"                 export  none             }             parm {                 name    "bindgroupparm#"                 baseparm                 label   "VEX Parameter"                 export  none             }         }          parm {             name    "vex_cwdpath"             baseparm             label   "Evaluation Node Path"             export  none         }         parm {             name    "vex_outputmask"             baseparm             label   "Export Parameters"             export  none         }         parm {             name    "vex_updatenmls"             baseparm             label   "Update Normals If Displaced"             export  none         }         parm {             name    "vex_matchattrib"             baseparm             label   "Attribute to Match"             export  none         }         parm {             name    "vex_inplace"             baseparm             label   "Compute Results In Place"             export  none         }         parm {             name    "vex_selectiongroup"             baseparm             label   "Output Selection Group"             export  none         }         parm {             name    "vex_precision"             baseparm             label   "VEX Precision"             export  none         }     }      parm {         name    "InitGrowth"         label   "Initgrowth"         type    float         default { "0" }         range   { 0 1 }     } ' init
opparm init  bindings ( 0 ) groupbindings ( 0 )
chblockbegin
chadd -t 0 0 init InitGrowth
chkey -t 0 -v 0.10000000000000001 -m 0 -a 0 -A 0 -T a  -F 'ch("../initgrowth")' init/InitGrowth
chblockend
opparm init folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( point ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( 'int hasseed = haspointattrib(0, \'seed\');\nif ( hasseed == 0 ) error(\'Input does not have a seed attribute.\');\n\n@__hasmask = haspointattrib(0, \'mask\');\n\nif ( i@seed == 1 ) { i@growing = 1; @growth = ch(\'InitGrowth\'); }\n' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto ) folder1 ( 0 0 ) InitGrowth ( InitGrowth )
chlock init -*
chautoscope init -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off init
opexprlanguage -s hscript init
opuserdata -n '___Version___' -v '' init

# Node chums (Sop/attribwrangle)
opadd -e -n attribwrangle chums
oplocate -x 1.4970000000000001 -y 3.8490000000000002 chums
opspareds '    group {         name    "folder1"         label   "Code"          parm {             name    "group"             baseparm             label   "Group"             export  none             bindselector uvselect "Modify Attribs"                 "Select the geometry to affect and press Enter to complete."                 0 1 0xffffffff 0 grouptype 0         }         parm {             name    "grouptype"             baseparm             label   "Group Type"             export  none         }         parm {             name    "class"             baseparm             label   "Run Over"             export  none         }         parm {             name    "vex_numcount"             baseparm             label   "Number Count"             export  none         }         parm {             name    "vex_threadjobsize"             baseparm             label   "Thread Job Size"             export  none         }         parm {             name    "snippet"             baseparm             label   "VEXpression"             export  all         }         parm {             name    "exportlist"             baseparm             label   "Attributes to Create"             export  none         }         parm {             name    "vex_strict"             baseparm             label   "Enforce Prototypes"             export  none         }     }      group {         name    "folder1_1"         label   "Bindings"          parm {             name    "autobind"             baseparm             label   "Autobind by Name"             export  none         }         multiparm {             name    "bindings"             label    "Number of Bindings"             baseparm             default 0             parmtag { "autoscope" "0000000000000000" }             parmtag { "multistartoffset" "1" }              parm {                 name    "bindname#"                 baseparm                 label   "Attribute Name"                 export  none             }             parm {                 name    "bindparm#"                 baseparm                 label   "VEX Parameter"                 export  none             }         }          parm {             name    "groupautobind"             baseparm             label   "Autobind Groups by Name"             export  none         }         multiparm {             name    "groupbindings"             label    "Group Bindings"             baseparm             default 0             parmtag { "autoscope" "0000000000000000" }             parmtag { "multistartoffset" "1" }              parm {                 name    "bindgroupname#"                 baseparm                 label   "Group Name"                 export  none             }             parm {                 name    "bindgroupparm#"                 baseparm                 label   "VEX Parameter"                 export  none             }         }          parm {             name    "vex_cwdpath"             baseparm             label   "Evaluation Node Path"             export  none         }         parm {             name    "vex_outputmask"             baseparm             label   "Export Parameters"             export  none         }         parm {             name    "vex_updatenmls"             baseparm             label   "Update Normals If Displaced"             export  none         }         parm {             name    "vex_matchattrib"             baseparm             label   "Attribute to Match"             export  none         }         parm {             name    "vex_inplace"             baseparm             label   "Compute Results In Place"             export  none         }         parm {             name    "vex_selectiongroup"             baseparm             label   "Output Selection Group"             export  none         }         parm {             name    "vex_precision"             baseparm             label   "VEX Precision"             export  none         }     }      parm {         name    "Mode"         label   "Mode"         type    integer         default { "0" }         range   { 0 10 }     }     parm {         name    "Distance"         label   "Distance"         type    float         default { "0" }         range   { 0 1 }     }     parm {         name    "Max"         label   "Max"         type    integer         default { "0" }         range   { 0 10 }     } ' chums
opparm chums  bindings ( 0 ) groupbindings ( 0 )
chblockbegin
chadd -t 0 0 chums Mode
chkey -t 0 -v 1 -m 0 -a 0 -A 0 -T a  -F 'ch("../mode")' chums/Mode
chadd -t 0 0 chums Distance
chkey -t 0 -v 0.10000000000000001 -m 0 -a 0 -A 0 -T a  -F 'ch("../distance")' chums/Distance
chadd -t 0 0 chums Max
chkey -t 0 -v 5 -m 0 -a 0 -A 0 -T a  -F 'ch("../max")' chums/Max
chblockend
opparm chums folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( point ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( 'int mode = chi(\'Mode\');\n\n// proximity mode\nif ( mode == 0 ) i[]@chums = nearpoints(0, @P, ch(\'Distance\'), chi(\'Max\'));\n\n// connectivity mode\nif ( mode == 1 ) i[]@chums = neighbours(0, @ptnum);\n' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto ) folder1 ( 0 0 ) Mode ( Mode ) Distance ( Distance ) Max ( Max )
chlock chums -*
chautoscope chums -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off chums
opexprlanguage -s hscript chums
opuserdata -n '___Version___' -v '' chums

# Node spread (Sop/solver)
opadd -e -n solver spread
oplocate -x 1.5 -y 2.8500000000000001 spread
opspareds "" spread
chblockbegin
chadd -t 0 0 spread startframe
chkey -t 0 -v 1 -m 0 -a 0 -A 0 -T a  -F 'ch("../start")' spread/startframe
chblockend
opparm spread resimulate ( 0 ) useinitialsop ( off ) initialsop ( "" ) startframe ( startframe ) substep ( 1 ) cacheenabled ( on ) cachetodisk ( off ) cachemaxsize ( 5000 )
chlock spread -*
chautoscope spread -*
opcolor -c 0.47499999403953552 0.81199997663497925 0.20399999618530273 spread
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F off -c on -e on -b off spread
opexprlanguage -s hscript spread
opuserdata -n '___Version___' -v '' spread

# Editable subnode
opcf spread/d

# Node s (Dop/sopsolver)
opadd -e -n sopsolver s
oplocate -x 1.88226 -y 0.51761800000000002 s
opspareds "" s
opparm s  numinputs ( 0 ) numoutputs ( 0 ) numstamps ( 0 )
opparm -V 20.5.522 s parmop_usesoppath ( default ) usesoppath ( off ) parmop_soppath ( default ) soppath ( "" ) parmop_datapath ( default ) datapath ( Geometry ) parmop_doinvoke ( default ) doinvoke ( off ) parmop_primaryinputname ( default ) primaryinputname ( data ) parmop_numinputs ( default ) numinputs ( 0 ) parmop_numoutputs ( default ) numoutputs ( 0 ) parmop_transformsopoutput ( default ) transformsopoutput ( on ) parmop_solveinitframe ( default ) solveinitframe ( on ) parmop_numstamps ( default ) numstamps ( 0 ) parmop_usetimestep ( default ) usetimestep ( on ) parmop_timescale ( default ) timescale ( 1 ) defaultparmop ( initial ) addaffectors ( on ) group ( * ) dataname ( '$OS' ) uniquedataname ( on ) solverperobject ( off )
chlock s -*
chautoscope s -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 s
opset -d on -r off -h off -f off -y off -t off -l off -s off -u off -F off -c on -e on -b off s
opexprlanguage -s hscript s
opuserdata -n '___Version___' -v '20.5.522' s
opcf s

# Node Input_5 (Sop/object_merge)
opadd -e -n object_merge Input_5
oplocate -x 0 -y 0 Input_5
opspareds "" Input_5
opparm Input_5  numobj ( 1 )
opparm -V 20.5.522 Input_5 numobj ( 1 ) _separator ( ) xformtype ( object ) xformpath ( "" ) invertxform ( off ) createptgroups ( off ) ptgroupprefix ( _ptgrp_ ) createprimgroups ( off ) primgroupprefix ( _primgrp_ ) verbosegroups ( off ) suffixfirstgroup ( on ) createptstring ( off ) createprimstring ( off ) pathattrib ( objname ) pack ( off ) pivot ( centroid ) viewportlod ( full ) addpath ( on ) enable1 ( on ) objpath1 ( "" ) group1 ( "" ) expand1 ( off )
chlock Input_5 -*
chautoscope Input_5 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off Input_5
opexprlanguage -s hscript Input_5
opuserdata -n '___Version___' -v '20.5.522' Input_5

# Node Input_6 (Sop/object_merge)
opadd -e -n object_merge Input_6
oplocate -x 0 -y 0 Input_6
opspareds "" Input_6
opparm Input_6  numobj ( 1 )
opparm -V 20.5.522 Input_6 numobj ( 1 ) _separator ( ) xformtype ( object ) xformpath ( "" ) invertxform ( off ) createptgroups ( off ) ptgroupprefix ( _ptgrp_ ) createprimgroups ( off ) primgroupprefix ( _primgrp_ ) verbosegroups ( off ) suffixfirstgroup ( on ) createptstring ( off ) createprimstring ( off ) pathattrib ( objname ) pack ( off ) pivot ( centroid ) viewportlod ( full ) addpath ( on ) enable1 ( on ) objpath1 ( "" ) group1 ( "" ) expand1 ( off )
chlock Input_6 -*
chautoscope Input_6 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off Input_6
opexprlanguage -s hscript Input_6
opuserdata -n '___Version___' -v '20.5.522' Input_6

# Node Input_7 (Sop/object_merge)
opadd -e -n object_merge Input_7
oplocate -x 0 -y 0 Input_7
opspareds "" Input_7
opparm Input_7  numobj ( 1 )
opparm -V 20.5.522 Input_7 numobj ( 1 ) _separator ( ) xformtype ( object ) xformpath ( "" ) invertxform ( off ) createptgroups ( off ) ptgroupprefix ( _ptgrp_ ) createprimgroups ( off ) primgroupprefix ( _primgrp_ ) verbosegroups ( off ) suffixfirstgroup ( on ) createptstring ( off ) createprimstring ( off ) pathattrib ( objname ) pack ( off ) pivot ( centroid ) viewportlod ( full ) addpath ( on ) enable1 ( on ) objpath1 ( "" ) group1 ( "" ) expand1 ( off )
chlock Input_7 -*
chautoscope Input_7 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off Input_7
opexprlanguage -s hscript Input_7
opuserdata -n '___Version___' -v '20.5.522' Input_7

# Node Input_8 (Sop/object_merge)
opadd -e -n object_merge Input_8
oplocate -x 0 -y 0 Input_8
opspareds "" Input_8
opparm Input_8  numobj ( 1 )
opparm -V 20.5.522 Input_8 numobj ( 1 ) _separator ( ) xformtype ( object ) xformpath ( "" ) invertxform ( off ) createptgroups ( off ) ptgroupprefix ( _ptgrp_ ) createprimgroups ( off ) primgroupprefix ( _primgrp_ ) verbosegroups ( off ) suffixfirstgroup ( on ) createptstring ( off ) createprimstring ( off ) pathattrib ( objname ) pack ( off ) pivot ( centroid ) viewportlod ( full ) addpath ( on ) enable1 ( on ) objpath1 ( "" ) group1 ( "" ) expand1 ( off )
chlock Input_8 -*
chautoscope Input_8 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off Input_8
opexprlanguage -s hscript Input_8
opuserdata -n '___Version___' -v '20.5.522' Input_8

# Node Prev_Frame1 (Sop/dopimport::2.0)
opadd -e -n dopimport::2.0 Prev_Frame1
oplocate -x 0 -y 0 Prev_Frame1
opspareds "" Prev_Frame1
chblockbegin
chadd -t 0 0 Prev_Frame1 integrateovertime
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '1/$FPS' Prev_Frame1/integrateovertime
chblockend
opparm -V 20.5.522 Prev_Frame1 doppath ( "" ) objpattern ( * ) relpattern ( "" ) donotsim ( off ) folder_geometry ( 0 ) importstyle ( fetch ) spacer ( "" ) pointsquicksetup ( menu ) geodatapath ( "" ) pack ( off ) pivot ( centroid ) viewportlod ( full ) adddopobjectpath ( off ) adddopobjectname ( off ) dopobjectnameattrib ( dopobjectname ) adddopdatapath ( off ) dopdatapathattrib ( dopdatapath ) transferattributes ( "" ) transfergroups ( "" ) folder_xform ( 0 ) doposxform ( on ) dogeoxform ( on ) keepworldspacepos ( on ) pointvels ( none ) integrateovertime ( integrateovertime ) addtoexistingvel ( on )
chlock Prev_Frame1 -*
chautoscope Prev_Frame1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off Prev_Frame1
opexprlanguage -s hscript Prev_Frame1
opuserdata -n '___Version___' -v '20.5.522' Prev_Frame1

# Node OUT1 (Sop/output)
opadd -e -n output OUT1
oplocate -x 0 -y 0 OUT1
opspareds "" OUT1
chblockbegin
chadd -t 0 0 OUT1 outputidx
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F 'max(opdigits("."),0)' OUT1/outputidx
chblockend
opparm -V 20.5.522 OUT1 outputidx ( outputidx )
chlock OUT1 -*
chautoscope OUT1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off OUT1
opexprlanguage -s hscript OUT1
opuserdata -n '___Version___' -v '20.5.522' OUT1

# Node Input_1 (Sop/object_merge)
opadd -e -n object_merge Input_1
oplocate -x 3.4987499999999998 -y -1.14845 Input_1
opspareds "" Input_1
opparm Input_1  numobj ( 1 )
opparm -V 20.5.522 Input_1 numobj ( 1 ) _separator ( ) xformtype ( object ) xformpath ( "" ) invertxform ( off ) createptgroups ( off ) ptgroupprefix ( _ptgrp_ ) createprimgroups ( off ) primgroupprefix ( _primgrp_ ) verbosegroups ( off ) suffixfirstgroup ( on ) createptstring ( off ) createprimstring ( off ) pathattrib ( objname ) pack ( off ) pivot ( centroid ) viewportlod ( full ) addpath ( on ) enable1 ( on ) objpath1 ( '`opinputpath("../..", 0)`' ) group1 ( "" ) expand1 ( off )
chlock Input_1 -*
chautoscope Input_1 -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 Input_1
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F off -c on -e on -b off Input_1
opexprlanguage -s hscript Input_1
opuserdata -n '___Version___' -v '20.5.522' Input_1

# Node Input_2 (Sop/object_merge)
opadd -e -n object_merge Input_2
oplocate -x 3.4987499999999998 -y -0.14845 Input_2
opspareds "" Input_2
opparm Input_2  numobj ( 1 )
opparm -V 20.5.522 Input_2 numobj ( 1 ) _separator ( ) xformtype ( object ) xformpath ( "" ) invertxform ( off ) createptgroups ( off ) ptgroupprefix ( _ptgrp_ ) createprimgroups ( off ) primgroupprefix ( _primgrp_ ) verbosegroups ( off ) suffixfirstgroup ( on ) createptstring ( off ) createprimstring ( off ) pathattrib ( objname ) pack ( off ) pivot ( centroid ) viewportlod ( full ) addpath ( on ) enable1 ( on ) objpath1 ( '`opinputpath("../..", 1)`' ) group1 ( "" ) expand1 ( off )
chlock Input_2 -*
chautoscope Input_2 -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 Input_2
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F off -c on -e on -b off Input_2
opexprlanguage -s hscript Input_2
opuserdata -n '___Version___' -v '20.5.522' Input_2

# Node Input_3 (Sop/object_merge)
opadd -e -n object_merge Input_3
oplocate -x 3.4987499999999998 -y 0.85155000000000003 Input_3
opspareds "" Input_3
opparm Input_3  numobj ( 1 )
opparm -V 20.5.522 Input_3 numobj ( 1 ) _separator ( ) xformtype ( object ) xformpath ( "" ) invertxform ( off ) createptgroups ( off ) ptgroupprefix ( _ptgrp_ ) createprimgroups ( off ) primgroupprefix ( _primgrp_ ) verbosegroups ( off ) suffixfirstgroup ( on ) createptstring ( off ) createprimstring ( off ) pathattrib ( objname ) pack ( off ) pivot ( centroid ) viewportlod ( full ) addpath ( on ) enable1 ( on ) objpath1 ( '`opinputpath("../..", 2)`' ) group1 ( "" ) expand1 ( off )
chlock Input_3 -*
chautoscope Input_3 -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 Input_3
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F off -c on -e on -b off Input_3
opexprlanguage -s hscript Input_3
opuserdata -n '___Version___' -v '20.5.522' Input_3

# Node Input_4 (Sop/object_merge)
opadd -e -n object_merge Input_4
oplocate -x 3.4987499999999998 -y 1.85155 Input_4
opspareds "" Input_4
opparm Input_4  numobj ( 1 )
opparm -V 20.5.522 Input_4 numobj ( 1 ) _separator ( ) xformtype ( object ) xformpath ( "" ) invertxform ( off ) createptgroups ( off ) ptgroupprefix ( _ptgrp_ ) createprimgroups ( off ) primgroupprefix ( _primgrp_ ) verbosegroups ( off ) suffixfirstgroup ( on ) createptstring ( off ) createprimstring ( off ) pathattrib ( objname ) pack ( off ) pivot ( centroid ) viewportlod ( full ) addpath ( on ) enable1 ( on ) objpath1 ( '`opinputpath("../..", 3)`' ) group1 ( "" ) expand1 ( off )
chlock Input_4 -*
chautoscope Input_4 -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 Input_4
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F off -c on -e on -b off Input_4
opexprlanguage -s hscript Input_4
opuserdata -n '___Version___' -v '20.5.522' Input_4

# Node Prev_Frame (Sop/dopimport::2.0)
opadd -e -n dopimport::2.0 Prev_Frame
oplocate -x 3.5 -y -2.1499999999999999 Prev_Frame
opspareds "" Prev_Frame
chblockbegin
chadd -t 0 0 Prev_Frame integrateovertime
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '1/$FPS' Prev_Frame/integrateovertime
chblockend
opparm -V 20.5.522 Prev_Frame doppath ( '`stamps("..", "DOPNET", "../..")`' ) objpattern ( '`stamps("..", "OBJID", arg(dopnodeobjs(".."),0))`' ) relpattern ( "" ) donotsim ( on ) folder_geometry ( 0 ) importstyle ( fetch ) spacer ( "" ) pointsquicksetup ( menu ) geodatapath ( '`stamps("..", "DATANAME", chs("../datapath"))`' ) pack ( off ) pivot ( centroid ) viewportlod ( full ) adddopobjectpath ( off ) adddopobjectname ( off ) dopobjectnameattrib ( dopobjectname ) adddopdatapath ( off ) dopdatapathattrib ( dopdatapath ) transferattributes ( "" ) transfergroups ( "" ) folder_xform ( 0 ) doposxform ( on ) dogeoxform ( on ) keepworldspacepos ( on ) pointvels ( none ) integrateovertime ( integrateovertime ) addtoexistingvel ( on )
chlock Prev_Frame -*
chautoscope Prev_Frame -*
opcolor -c 0.56499999761581421 0.49399998784065247 0.86299997568130493 Prev_Frame
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F off -c on -e on -b off Prev_Frame
opexprlanguage -s hscript Prev_Frame
opuserdata -n '___Version___' -v '20.5.522' Prev_Frame

# Node OUT (Sop/output)
opadd -e -n output OUT
oplocate -x 3.5 -y -4.1500000000000004 OUT
opspareds "" OUT
opparm -V 20.5.522 OUT outputidx ( 0 )
chlock OUT -*
chautoscope OUT -*
opset -d on -r on -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off OUT
opexprlanguage -s hscript OUT
opuserdata -n '___Version___' -v '20.5.522' OUT

# Node solve (Sop/attribwrangle)
opadd -e -n attribwrangle solve
oplocate -x 3.4969999999999999 -y -3.1509999999999998 solve
opspareds '    group {         name    "folder1"         label   "Code"          parm {             name    "group"             baseparm             label   "Group"             export  none             bindselector uvselect "Modify Attribs"                 "Select the geometry to affect and press Enter to complete."                 0 1 0xffffffff 0 grouptype 0         }         parm {             name    "grouptype"             baseparm             label   "Group Type"             export  none         }         parm {             name    "class"             baseparm             label   "Run Over"             export  none         }         parm {             name    "vex_numcount"             baseparm             label   "Number Count"             export  none         }         parm {             name    "vex_threadjobsize"             baseparm             label   "Thread Job Size"             export  none         }         parm {             name    "snippet"             baseparm             label   "VEXpression"             export  all         }         parm {             name    "exportlist"             baseparm             label   "Attributes to Create"             export  none         }         parm {             name    "vex_strict"             baseparm             label   "Enforce Prototypes"             export  none         }     }      group {         name    "folder1_1"         label   "Bindings"          parm {             name    "autobind"             baseparm             label   "Autobind by Name"             export  none         }         multiparm {             name    "bindings"             label    "Number of Bindings"             baseparm             default 0             parmtag { "autoscope" "0000000000000000" }             parmtag { "multistartoffset" "1" }              parm {                 name    "bindname#"                 baseparm                 label   "Attribute Name"                 export  none             }             parm {                 name    "bindparm#"                 baseparm                 label   "VEX Parameter"                 export  none             }         }          parm {             name    "groupautobind"             baseparm             label   "Autobind Groups by Name"             export  none         }         multiparm {             name    "groupbindings"             label    "Group Bindings"             baseparm             default 0             parmtag { "autoscope" "0000000000000000" }             parmtag { "multistartoffset" "1" }              parm {                 name    "bindgroupname#"                 baseparm                 label   "Group Name"                 export  none             }             parm {                 name    "bindgroupparm#"                 baseparm                 label   "VEX Parameter"                 export  none             }         }          parm {             name    "vex_cwdpath"             baseparm             label   "Evaluation Node Path"             export  none         }         parm {             name    "vex_outputmask"             baseparm             label   "Export Parameters"             export  none         }         parm {             name    "vex_updatenmls"             baseparm             label   "Update Normals If Displaced"             export  none         }         parm {             name    "vex_matchattrib"             baseparm             label   "Attribute to Match"             export  none         }         parm {             name    "vex_inplace"             baseparm             label   "Compute Results In Place"             export  none         }         parm {             name    "vex_selectiongroup"             baseparm             label   "Output Selection Group"             export  none         }         parm {             name    "vex_precision"             baseparm             label   "VEX Precision"             export  none         }     }      parm {         name    "InitGrowth"         label   "Initgrowth"         type    float         default { "0" }         range   { 0 1 }     }     parm {         name    "Rate"         label   "Rate"         type    float         default { "0" }         range   { 0 1 }     } ' solve
opparm solve  bindings ( 0 ) groupbindings ( 0 )
chblockbegin
chadd -t 0 0 solve InitGrowth
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F 'ch("../../../../initgrowth")' solve/InitGrowth
chadd -t 0 0 solve Rate
chkey -t 0 -v 0.10000000000000001 -m 0 -a 0 -A 0 -T a  -F 'ch("../../../../rate")' solve/Rate
chblockend
opparm solve folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( point ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( 'float initgrowth = ch(\'InitGrowth\'); float rate = ch(\'Rate\');\n\nif ( i@growing == 1 )            {\n    foreach ( int p; i[]@chums ) {\n        int isgrowing = point(0, \'growing\', p );\n        if ( isgrowing == 0 )    {\n            setpointattrib(0, \'growing\', p, 1, \'set\');\n            \n            if ( @__hasmask == 0) {\n                setpointattrib(0, \'growth\' , p, initgrowth, \'set\');\n                                 }\n                else             {\n                float b = initgrowth * @mask;\n                setpointattrib(0, \'growth\' , p, b, \'set\');\n                                 }\n                                 }                                 \n                                 }\n                                 }\n                                 \n                                 \nif ( i@growing == 1 )     {\n\n    if ( @__hasmask == 0)  { @growth += rate; }\n                                                            \n    if ( @__hasmask == 1) { @growth += rate * @mask; }\n    \n                          }\n                          \n                          \n                          \n                          \n                          \n                          \n                          \n                          \n                          \n                          \n                          ' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto ) folder1 ( 0 0 ) InitGrowth ( InitGrowth ) Rate ( Rate )
chlock solve -*
chautoscope solve -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off solve
opexprlanguage -s hscript solve
opuserdata -n '___Version___' -v '' solve
oporder -e Input_5 Input_6 Input_7 Input_8 Prev_Frame1 OUT1 Input_1 Input_2 Input_3 Input_4 Prev_Frame OUT solve 
opcf ..

# End of editable subnode
opcf ../..


# Node timeshift1 (Sop/timeshift)
opadd -e -n timeshift timeshift1
oplocate -x 3.5 -y -3.1499999999999999 timeshift1
opspareds "" timeshift1
chblockbegin
chadd -t 0 0 timeshift1 frame
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F 'ch("../end")' timeshift1/frame
chadd -t 0 0 timeshift1 time
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '$T' timeshift1/time
chadd -t 0 0 timeshift1 frange1
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '$FSTART' timeshift1/frange1
chadd -t 0 0 timeshift1 frange2
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '$FEND' timeshift1/frange2
chadd -t 0 0 timeshift1 trange1
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '$TSTART' timeshift1/trange1
chadd -t 0 0 timeshift1 trange2
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '$TEND' timeshift1/trange2
chblockend
opparm -V 20.5.522 timeshift1 method ( byframe ) frame ( frame ) integerframe ( on ) time ( time ) rangeclamp ( none ) frange ( frange1 frange2 ) trange ( trange1 trange2 )
chlock timeshift1 -*
chautoscope timeshift1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off timeshift1
opexprlanguage -s hscript timeshift1
opuserdata -n '___Version___' -v '20.5.522' timeshift1

# Node switch1 (Sop/switch)
opadd -e -n switch switch1
oplocate -x 1.5 -y -3.1501999999999999 switch1
opspareds "" switch1
chblockbegin
chadd -t 0 0 switch1 input
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F 'ch("../hold")' switch1/input
chblockend
opparm -V 20.5.522 switch1 input ( input )
chlock switch1 -*
chautoscope switch1 -*
opcolor -c 0 0 0 switch1
opset -d on -r on -h off -f off -y off -t off -l off -s off -u off -F off -c on -e on -b off switch1
opexprlanguage -s hscript switch1
opuserdata -n '___Version___' -v '20.5.522' switch1

# Node attribdelete1 (Sop/attribdelete)
opadd -e -n attribdelete attribdelete1
oplocate -x 1.49655 -y -4.1500000000000004 attribdelete1
opspareds "" attribdelete1
opparm attribdelete1 usereference ( off ) negate ( off ) doptdel ( on ) ptdel ( 'chums __*' ) dovtxdel ( on ) vtxdel ( "" ) doprimdel ( on ) primdel ( "" ) dodtldel ( on ) dtldel ( "" ) updatevar ( on )
chlock attribdelete1 -*
chautoscope attribdelete1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off attribdelete1
opexprlanguage -s hscript attribdelete1
opuserdata -n '___Version___' -v '' attribdelete1

# Node attribpromote1 (Sop/attribpromote)
opadd -e -n attribpromote attribpromote1
oplocate -x 1.49655 -y 1.8500000000000001 attribpromote1
opspareds "" attribpromote1
opparm -V 20.5.522 attribpromote1 inname ( growth ) inclass ( point ) outclass ( detail ) usepieceattrib ( off ) pieceattrib ( name ) method ( max ) useoutname ( on ) outname ( growthmax ) deletein ( off )
chlock attribpromote1 -*
chautoscope attribpromote1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off attribpromote1
opexprlanguage -s hscript attribpromote1
opuserdata -n '___Version___' -v '20.5.522' attribpromote1

# Node attribpromote2 (Sop/attribpromote)
opadd -e -n attribpromote attribpromote2
oplocate -x 1.49655 -y 0.84999999999999998 attribpromote2
opspareds "" attribpromote2
opparm -V 20.5.522 attribpromote2 inname ( growth ) inclass ( point ) outclass ( detail ) usepieceattrib ( off ) pieceattrib ( name ) method ( min ) useoutname ( on ) outname ( growthmin ) deletein ( off )
chlock attribpromote2 -*
chautoscope attribpromote2 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off attribpromote2
opexprlanguage -s hscript attribpromote2
opuserdata -n '___Version___' -v '20.5.522' attribpromote2

# Node attribpromote3 (Sop/attribpromote)
opadd -e -n attribpromote attribpromote3
oplocate -x 1.49655 -y -0.14999999999999999 attribpromote3
opspareds "" attribpromote3
opparm -V 20.5.522 attribpromote3 inname ( growthmax ) inclass ( detail ) outclass ( point ) usepieceattrib ( off ) pieceattrib ( name ) method ( mean ) useoutname ( off ) outname ( "" ) deletein ( on )
chlock attribpromote3 -*
chautoscope attribpromote3 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off attribpromote3
opexprlanguage -s hscript attribpromote3
opuserdata -n '___Version___' -v '20.5.522' attribpromote3

# Node attribpromote4 (Sop/attribpromote)
opadd -e -n attribpromote attribpromote4
oplocate -x 1.49655 -y -1.1499999999999999 attribpromote4
opspareds "" attribpromote4
opparm -V 20.5.522 attribpromote4 inname ( growthmin ) inclass ( detail ) outclass ( point ) usepieceattrib ( off ) pieceattrib ( name ) method ( mean ) useoutname ( off ) outname ( "" ) deletein ( on )
chlock attribpromote4 -*
chautoscope attribpromote4 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off attribpromote4
opexprlanguage -s hscript attribpromote4
opuserdata -n '___Version___' -v '20.5.522' attribpromote4

# Node attribwrangle1 (Sop/attribwrangle)
opadd -e -n attribwrangle attribwrangle1
oplocate -x 1.4970000000000001 -y -2.1509999999999998 attribwrangle1
opspareds '    group {         name    "folder1"         label   "Code"          parm {             name    "group"             baseparm             label   "Group"             export  none             bindselector uvselect "Modify Attribs"                 "Select the geometry to affect and press Enter to complete."                 0 1 0xffffffff 0 grouptype 0         }         parm {             name    "grouptype"             baseparm             label   "Group Type"             export  none         }         parm {             name    "class"             baseparm             label   "Run Over"             export  none         }         parm {             name    "vex_numcount"             baseparm             label   "Number Count"             export  none         }         parm {             name    "vex_threadjobsize"             baseparm             label   "Thread Job Size"             export  none         }         parm {             name    "snippet"             baseparm             label   "VEXpression"             export  all         }         parm {             name    "exportlist"             baseparm             label   "Attributes to Create"             export  none         }         parm {             name    "vex_strict"             baseparm             label   "Enforce Prototypes"             export  none         }     }      group {         name    "folder1_1"         label   "Bindings"          parm {             name    "autobind"             baseparm             label   "Autobind by Name"             export  none         }         multiparm {             name    "bindings"             label    "Number of Bindings"             baseparm             default 0             parmtag { "autoscope" "0000000000000000" }             parmtag { "multistartoffset" "1" }              parm {                 name    "bindname#"                 baseparm                 label   "Attribute Name"                 export  none             }             parm {                 name    "bindparm#"                 baseparm                 label   "VEX Parameter"                 export  none             }         }          parm {             name    "groupautobind"             baseparm             label   "Autobind Groups by Name"             export  none         }         multiparm {             name    "groupbindings"             label    "Group Bindings"             baseparm             default 0             parmtag { "autoscope" "0000000000000000" }             parmtag { "multistartoffset" "1" }              parm {                 name    "bindgroupname#"                 baseparm                 label   "Group Name"                 export  none             }             parm {                 name    "bindgroupparm#"                 baseparm                 label   "VEX Parameter"                 export  none             }         }          parm {             name    "vex_cwdpath"             baseparm             label   "Evaluation Node Path"             export  none         }         parm {             name    "vex_outputmask"             baseparm             label   "Export Parameters"             export  none         }         parm {             name    "vex_updatenmls"             baseparm             label   "Update Normals If Displaced"             export  none         }         parm {             name    "vex_matchattrib"             baseparm             label   "Attribute to Match"             export  none         }         parm {             name    "vex_inplace"             baseparm             label   "Compute Results In Place"             export  none         }         parm {             name    "vex_selectiongroup"             baseparm             label   "Output Selection Group"             export  none         }         parm {             name    "vex_precision"             baseparm             label   "VEX Precision"             export  none         }     }      parm {         name    "Paint"         label   "Paint"         type    integer         default { "0" }         range   { 0 10 }     } ' attribwrangle1
opparm attribwrangle1  bindings ( 0 ) groupbindings ( 0 )
chblockbegin
chadd -t 0 0 attribwrangle1 Paint
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F 'ch("../paint")' attribwrangle1/Paint
chblockend
opparm attribwrangle1 folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( point ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( '@growth = fit(@growth, @growthmin, @growthmax, 0, 1);\n\nint paint = chi(\'Paint\');\nif ( paint == 1 ) @Cd = @growth;' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto ) folder1 ( 0 0 ) Paint ( Paint )
chlock attribwrangle1 -*
chautoscope attribwrangle1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off attribwrangle1
opexprlanguage -s hscript attribwrangle1
opuserdata -n '___Version___' -v '' attribwrangle1
oporder -e output0 init chums spread timeshift1 switch1 attribdelete1 attribpromote1 attribpromote2 attribpromote3 attribpromote4 attribwrangle1 
opcf ..

# Node vector_conditional_rotate (Sop/subnet)
opadd -e -n subnet vector_conditional_rotate
oplocate -x 13.5 -y 2.8500000000000001 vector_conditional_rotate
opspareds '    groupsimple {         name    "main"         label   "Conditional Rotate"          parm {             name    "ifmode"             label   "If"             type    ordinal             joinnext             default { "0" }             menu {                 "0" "Greater Then"                 "1" "Less Then"             }             parmtag { "script_callback_language" "python" }         }         parm {             name    "beta"             label   "Angle"             type    integer             joinnext             default { "90" }             help    "The threshold angle."             range   { 0 180 }             parmtag { "script_callback_language" "python" }         }         parm {             name    "OpMode"             label   "Mode"             type    ordinal             joinnext             default { "0" }             help    "Invert Difference - will invert the difference between Vector and the condition vector (which is a function of Target). If set to Greater Then 90, and Vector is 110 degrees away from Target, Vector will rotate to be 70 degrees away from Target. Explicit Variance - if the condition is met, set a explicit degree amount to rotate from Target, with a per-point variance option. Orthgonal - makes Vector orthogonal to Target. "             menu {                 "0" "Invert Difference"                 "1" "Explicit Variance"                 "2" "Orthogonal"             }             parmtag { "script_callback_language" "python" }         }         parm {             name    "varimode"             label   "Variance"             type    toggle             default { "off" }             help    "Add per point variance to rotation angle."             hidewhen "{ OpMode != 1 }"             parmtag { "script_callback_language" "python" }         }         parm {             name    "sepparm"             label   "Separator"             type    separator             default { "" }             hidewhen "{ OpMode != 1 }"         }         parm {             name    "alpha"             label   "Explicit Angle"             type    integer             default { "45" }             help    "The rotation amount from target vector."             hidewhen "{ OpMode != 1 }"             range   { 0 180 }             parmtag { "script_callback_language" "python" }         }         parm {             name    "variancemax"             label   "Variance Max"             type    integer             default { "10" }             help    "The maximum rotation angle from target vector."             hidewhen "{ OpMode != 1 } { varimode != 1 }"             range   { 0 180 }             parmtag { "script_callback_language" "python" }         }         parm {             name    "sepparm2"             label   "Separator"             type    separator             default { "" }         }         parm {             name    "vector"             label   "Vector"             type    string             default { "" }             help    "The vector to operate on."             parmtag { "script_callback_language" "python" }         }         parm {             name    "target"             label   "Target"             type    string             default { "" }             help    "The reference vector."             parmtag { "script_callback_language" "python" }         }     }      parm {         name    "label1"         baseparm         label   "Input #1 Label"         invisible         export  all     }     parm {         name    "label2"         baseparm         label   "Input #2 Label"         invisible         export  all     }     parm {         name    "label3"         baseparm         label   "Input #3 Label"         invisible         export  all     }     parm {         name    "label4"         baseparm         label   "Input #4 Label"         invisible         export  all     } ' vector_conditional_rotate
opparm -V 20.5.522 vector_conditional_rotate label1 ( 'Sub-Network Input #1' ) label2 ( 'Sub-Network Input #2' ) label3 ( 'Sub-Network Input #3' ) label4 ( 'Sub-Network Input #4' ) main ( 0 ) ifmode ( 0 ) beta ( 90 ) OpMode ( 0 ) varimode ( off ) sepparm ( ) alpha ( 45 ) variancemax ( 10 ) sepparm2 ( ) vector ( "" ) target ( "" )
chlock vector_conditional_rotate -*
chautoscope vector_conditional_rotate -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off vector_conditional_rotate
opexprlanguage -s hscript vector_conditional_rotate
opuserdata -n '___Version___' -v '20.5.522' vector_conditional_rotate
opcf vector_conditional_rotate

# Node output0 (Sop/output)
opadd -e -n output output0
oplocate -x 1.5016 -y 2.8471500000000001 output0
opspareds "" output0
opparm -V 20.5.522 output0 outputidx ( 0 )
chlock output0 -*
chautoscope output0 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off output0
opexprlanguage -s hscript output0
opuserdata -n '___Version___' -v '20.5.522' output0

# Node vector_orient (Sop/attribwrangle)
opadd -e -n attribwrangle vector_orient
oplocate -x 1.4970000000000001 -y 3.8490000000000002 vector_orient
opspareds '    group {         name    "folder1"         label   "Code"          parm {             name    "group"             baseparm             label   "Group"             export  none             bindselector uvselect "Modify Attribs"                 "Select the geometry to affect and press Enter to complete."                 0 1 0xffffffff 0 grouptype 0         }         parm {             name    "grouptype"             baseparm             label   "Group Type"             export  none         }         parm {             name    "class"             baseparm             label   "Run Over"             export  none         }         parm {             name    "vex_numcount"             baseparm             label   "Number Count"             export  none         }         parm {             name    "vex_threadjobsize"             baseparm             label   "Thread Job Size"             export  none         }         groupsimple {             name    "folder_generatedparms_snippet"             label   "Generated Channel Parameters"             grouptag { "group_type" "simple" }             grouptag { "sidefx::look" "blank" }              parm {                 name    "VectorName"                 label   "VectorName"                 type    string                 default { "" }             }             parm {                 name    "TargetName"                 label   "TargetName"                 type    string                 default { "" }             }             parm {                 name    "Lessor"                 label   "Lessor"                 type    integer                 default { "0" }                 help    "The > || < condition to engage operation."                 range   { 0 10 }             }             parm {                 name    "OpMode"                 label   "OpMode"                 type    integer                 default { "0" }                 help    "Operation type -  see code notes."                 range   { 0 10 }             }             parm {                 name    "ModeVariance"                 label   "ModeVariance"                 type    integer                 default { "0" }                 help    "Add variance to angle when in Explicit Variance mode."                 range   { 0 10 }             }             parm {                 name    "Beta"                 label   "Beta"                 type    float                 default { "0" }                 help    "Condition threshold angle."                 range   { 0 1 }             }             parm {                 name    "Alpha"                 label   "Alpha"                 type    float                 default { "0" }                 help    "Explicit Variance angle."                 range   { 0 1 }             }             parm {                 name    "Delta"                 label   "Delta"                 type    float                 default { "0" }                 help    "Variance angle max."                 range   { 0 1 }             }         }          parm {             name    "snippet"             baseparm             label   "VEXpression"             export  all         }         parm {             name    "exportlist"             baseparm             label   "Attributes to Create"             export  none         }         parm {             name    "vex_strict"             baseparm             label   "Enforce Prototypes"             export  none         }     }      group {         name    "folder1_1"         label   "Bindings"          parm {             name    "autobind"             baseparm             label   "Autobind by Name"             export  none         }         multiparm {             name    "bindings"             label    "Number of Bindings"             baseparm             default 0             parmtag { "autoscope" "0000000000000000" }             parmtag { "multistartoffset" "1" }              parm {                 name    "bindname#"                 baseparm                 label   "Attribute Name"                 export  none             }             parm {                 name    "bindparm#"                 baseparm                 label   "VEX Parameter"                 export  none             }         }          parm {             name    "groupautobind"             baseparm             label   "Autobind Groups by Name"             export  none         }         multiparm {             name    "groupbindings"             label    "Group Bindings"             baseparm             default 0             parmtag { "autoscope" "0000000000000000" }             parmtag { "multistartoffset" "1" }              parm {                 name    "bindgroupname#"                 baseparm                 label   "Group Name"                 export  none             }             parm {                 name    "bindgroupparm#"                 baseparm                 label   "VEX Parameter"                 export  none             }         }          parm {             name    "vex_cwdpath"             baseparm             label   "Evaluation Node Path"             export  none         }         parm {             name    "vex_outputmask"             baseparm             label   "Export Parameters"             export  none         }         parm {             name    "vex_updatenmls"             baseparm             label   "Update Normals If Displaced"             export  none         }         parm {             name    "vex_matchattrib"             baseparm             label   "Attribute to Match"             export  none         }         parm {             name    "vex_inplace"             baseparm             label   "Compute Results In Place"             export  none         }         parm {             name    "vex_selectiongroup"             baseparm             label   "Output Selection Group"             export  none         }         parm {             name    "vex_precision"             baseparm             label   "VEX Precision"             export  none         }     }  ' vector_orient
opparm vector_orient  bindings ( 0 ) groupbindings ( 0 )
chblockbegin
chadd -t 0 0 vector_orient Lessor
chkey -t 0 -v 1 -m 0 -a 0 -A 0 -T a  -F 'ch("../ifmode")' vector_orient/Lessor
chadd -t 0 0 vector_orient OpMode
chkey -t 0 -v 2 -m 0 -a 0 -A 0 -T a  -F 'ch("../OpMode")' vector_orient/OpMode
chadd -t 0 0 vector_orient ModeVariance
chkey -t 0 -v 1 -m 0 -a 0 -A 0 -T a  -F 'ch("../varimode")' vector_orient/ModeVariance
chadd -t 0 0 vector_orient Beta
chkey -t 0 -v 90 -m 0 -a 0 -A 0 -T a  -F 'ch("../beta")' vector_orient/Beta
chadd -t 0 0 vector_orient Alpha
chkey -t 0 -v 33 -m 0 -a 0 -A 0 -T a  -F 'ch("../alpha")' vector_orient/Alpha
chadd -t 0 0 vector_orient Delta
chkey -t 0 -v 45 -m 0 -a 0 -A 0 -T a  -F 'ch("../variancemax")' vector_orient/Delta
chblockend
opparm vector_orient folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( point ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( '// init variables\nstring vectorname = chs(\'VectorName\'); string targetname = chs(\'TargetName\'); \nvector input = point(0, vectorname, @ptnum); float length = length(input);\nvector q = normalize(input); vector t = normalize(point(0, targetname, @ptnum));\nvector c = normalize(cross(t, q)); float theta = degrees(acos(dot(q, t))); matrix3 R = ident();\n\n// lessor = less then or greater then condition\n// mode = 0 - invert difference, 1 - explicit variance, 2 - orthogonal | vari = enable variance in explicit variance mode \n// beta = threshold angle, phi = difference angle, alpha - explicit set angle, delta - max variance angle, zeta - random variance angle\nint lessor = chi(\'Lessor\'); int mode = chi(\'OpMode\'); int vari = chi(\'ModeVariance\');\nfloat beta = ch(\'Beta\'); float phi; float alpha = ch(\'Alpha\'); float delta = ch(\'Delta\'); float zeta = fit(rand(@ptnum), 0, 1, delta * -1, delta);\n\n\n// if greater then\nif ( lessor == 0 ) {\n    if ( theta > beta ) {\n        // difference between angle of inputs and threshold parameter\n        phi = -(theta - beta);\n        \n        // mode == invert difference\n        if ( mode == 0 ) {\n        rotate(R, radians(phi * 2), c);\n        vector gamma = (R * q) * length; setpointattrib(0, vectorname, @ptnum, gamma, \'set\'); \n                         }\n                         \n        // mode == explicit variance - rotate target by input angle value with per point variance        \n        if ( mode == 1 ) {\n            //witout variance\n            if ( vari == 0 ) {\n            rotate(R, radians(alpha), c);\n            vector gamma = (R * t) * length; setpointattrib(0, vectorname, @ptnum, gamma, \'set\');\n                             }\n            // with variance                 \n            else {\n                alpha += zeta;\n                rotate(R, radians(alpha), c);\n                vector gamma = (R * t) * length; setpointattrib(0, vectorname, @ptnum, gamma, \'set\');\n                }                                \n                         }\n                         \n        // mode == orthogonal - set to 90 degrees of target\n        if ( mode == 2 ) {\n            rotate(R, radians(phi), c);\n            vector gamma = (R * q) * length; setpointattrib(0, vectorname, @ptnum, gamma, \'set\');\n                         }\n                        }\n                    }\n                    \n// if less then\nelse               {\n        if ( theta < beta ) {\n        // difference between angle of inputs and threshold parameter\n        phi = (beta - theta);\n        \n        // mode == invert difference\n        if ( mode == 0 ) {\n        rotate(R, radians(phi * 2), c);\n        vector gamma = (R * q) * length; setpointattrib(0, vectorname, @ptnum, gamma, \'set\'); \n                         }\n                         \n        // mode == explicit variance - rotate target by input angle value with per point variance        \n        if ( mode == 1 ) {\n            //witout variance\n            if ( vari == 0 ) {\n            rotate(R, radians(alpha), c);\n            vector gamma = (R * t) * length; setpointattrib(0, vectorname, @ptnum, gamma, \'set\');\n                             }\n            // with variance                 \n            else {\n                alpha += zeta;\n                rotate(R, radians(alpha), c);\n                vector gamma = (R * t) * length; setpointattrib(0, vectorname, @ptnum, gamma, \'set\');\n                }                                \n                         }\n                         \n        // mode == orthogonal - set to 90 degrees of target\n        if ( mode == 2 ) {\n            rotate(R, radians(phi), c);\n            vector gamma = (R * q) * length; setpointattrib(0, vectorname, @ptnum, gamma, \'set\');\n                         }\n                        }\n                    }\n    \n                 \n// unbypass to debug                    \n//@theta = theta; @beta = beta; @phi = phi; @delta = delta; @zeta = zeta;\n        \n' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto ) folder1 ( 0 0 ) folder_generatedparms_snippet ( 0 ) VectorName ( '`chs("../vector")`' ) TargetName ( '`chs("../target")`' ) Lessor ( Lessor ) OpMode ( OpMode ) ModeVariance ( ModeVariance ) Beta ( Beta ) Alpha ( Alpha ) Delta ( Delta )
chlock vector_orient -*
chautoscope vector_orient -*
opset -d on -r on -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off vector_orient
opexprlanguage -s hscript vector_orient
opuserdata -n '___Version___' -v '' vector_orient
oporder -e output0 vector_orient 
opcf ..

# Node vectorfield_formula (Sop/subnet)
opadd -e -n subnet vectorfield_formula
oplocate -x 13.5 -y 1.8500000000000001 vectorfield_formula
opspareds "" vectorfield_formula
opparm -V 20.5.522 vectorfield_formula label1 ( 'Sub-Network Input #1' ) label2 ( 'Sub-Network Input #2' ) label3 ( 'Sub-Network Input #3' ) label4 ( 'Sub-Network Input #4' )
chlock vectorfield_formula -*
chautoscope vectorfield_formula -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off vectorfield_formula
opexprlanguage -s hscript vectorfield_formula
opuserdata -n '___Version___' -v '20.5.522' vectorfield_formula
opcf vectorfield_formula

# Node output0 (Sop/output)
opadd -e -n output output0
oplocate -x 2.1054400000000002 -y 3.8471500000000001 output0
opspareds "" output0
opparm -V 20.5.522 output0 outputidx ( 0 )
chlock output0 -*
chautoscope output0 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off output0
opexprlanguage -s hscript output0
opuserdata -n '___Version___' -v '20.5.522' output0

# Node style01 (Sop/attribwrangle)
opadd -e -n attribwrangle style01
oplocate -x -8.2319600000000008 -y 7.9944499999999996 style01
opspareds '    group {         name    "folder1"         label   "Code"          parm {             name    "group"             baseparm             label   "Group"             export  none             bindselector uvselect "Modify Attribs"                 "Select the geometry to affect and press Enter to complete."                 0 1 0xffffffff 0 grouptype 0         }         parm {             name    "grouptype"             baseparm             label   "Group Type"             export  none         }         parm {             name    "class"             baseparm             label   "Run Over"             export  none         }         parm {             name    "vex_numcount"             baseparm             label   "Number Count"             export  none         }         parm {             name    "vex_threadjobsize"             baseparm             label   "Thread Job Size"             export  none         }         parm {             name    "snippet"             baseparm             label   "VEXpression"             export  all         }         parm {             name    "exportlist"             baseparm             label   "Attributes to Create"             export  none         }         parm {             name    "vex_strict"             baseparm             label   "Enforce Prototypes"             export  none         }     }      group {         name    "folder1_1"         label   "Bindings"          parm {             name    "autobind"             baseparm             label   "Autobind by Name"             export  none         }         multiparm {             name    "bindings"             label    "Number of Bindings"             baseparm             default 0             parmtag { "autoscope" "0000000000000000" }             parmtag { "multistartoffset" "1" }              parm {                 name    "bindname#"                 baseparm                 label   "Attribute Name"                 export  none             }             parm {                 name    "bindparm#"                 baseparm                 label   "VEX Parameter"                 export  none             }         }          parm {             name    "groupautobind"             baseparm             label   "Autobind Groups by Name"             export  none         }         multiparm {             name    "groupbindings"             label    "Group Bindings"             baseparm             default 0             parmtag { "autoscope" "0000000000000000" }             parmtag { "multistartoffset" "1" }              parm {                 name    "bindgroupname#"                 baseparm                 label   "Group Name"                 export  none             }             parm {                 name    "bindgroupparm#"                 baseparm                 label   "VEX Parameter"                 export  none             }         }          parm {             name    "vex_cwdpath"             baseparm             label   "Evaluation Node Path"             export  none         }         parm {             name    "vex_outputmask"             baseparm             label   "Export Parameters"             export  none         }         parm {             name    "vex_updatenmls"             baseparm             label   "Update Normals If Displaced"             export  none         }         parm {             name    "vex_matchattrib"             baseparm             label   "Attribute to Match"             export  none         }         parm {             name    "vex_inplace"             baseparm             label   "Compute Results In Place"             export  none         }         parm {             name    "vex_selectiongroup"             baseparm             label   "Output Selection Group"             export  none         }         parm {             name    "vex_precision"             baseparm             label   "VEX Precision"             export  none         }     }      parm {         name    "Scale"         label   "Scale"         type    float         default { "0" }         range   { 0 1 }     }     parm {         name    "RateX"         label   "Ratex"         type    float         default { "0" }         range   { 0 1 }     }     parm {         name    "RateZ"         label   "Ratez"         type    float         default { "0" }         range   { 0 1 }     }     parm {         name    "PostMultiply"         label   "Postmultiply"         type    float         default { "0" }         range   { 0 1 }     } ' style01
opparm style01  bindings ( 0 ) groupbindings ( 0 )
opparm style01 folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( point ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( '//\nvector u = @P * ch(\'Scale\');\n\nfloat xr = @Time / ch(\'RateX\');\nfloat zr = @Time / ch(\'RateZ\');\nfloat x = sin(u.x+(xr));\nfloat z = cos(u.z+(zr));\n@N = set(x,0,z) * ch(\'PostMultiply\');' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto ) folder1 ( 0 0 ) Scale ( 10 ) RateX ( 1 ) RateZ ( 1 ) PostMultiply ( 0.1 )
chlock style01 -*
chautoscope style01 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off style01
opexprlanguage -s hscript style01
opuserdata -n '___Version___' -v '' style01

# Node style02 (Sop/attribwrangle)
opadd -e -n attribwrangle style02
oplocate -x -5.9727600000000001 -y 7.5426500000000001 style02
opspareds '    group {         name    "folder1"         label   "Code"          parm {             name    "group"             baseparm             label   "Group"             export  none             bindselector uvselect "Modify Attribs"                 "Select the geometry to affect and press Enter to complete."                 0 1 0xffffffff 0 grouptype 0         }         parm {             name    "grouptype"             baseparm             label   "Group Type"             export  none         }         parm {             name    "class"             baseparm             label   "Run Over"             export  none         }         parm {             name    "vex_numcount"             baseparm             label   "Number Count"             export  none         }         parm {             name    "vex_threadjobsize"             baseparm             label   "Thread Job Size"             export  none         }         parm {             name    "snippet"             baseparm             label   "VEXpression"             export  all         }         parm {             name    "exportlist"             baseparm             label   "Attributes to Create"             export  none         }         parm {             name    "vex_strict"             baseparm             label   "Enforce Prototypes"             export  none         }     }      group {         name    "folder1_1"         label   "Bindings"          parm {             name    "autobind"             baseparm             label   "Autobind by Name"             export  none         }         multiparm {             name    "bindings"             label    "Number of Bindings"             baseparm             default 0             parmtag { "autoscope" "0000000000000000" }             parmtag { "multistartoffset" "1" }              parm {                 name    "bindname#"                 baseparm                 label   "Attribute Name"                 export  none             }             parm {                 name    "bindparm#"                 baseparm                 label   "VEX Parameter"                 export  none             }         }          parm {             name    "groupautobind"             baseparm             label   "Autobind Groups by Name"             export  none         }         multiparm {             name    "groupbindings"             label    "Group Bindings"             baseparm             default 0             parmtag { "autoscope" "0000000000000000" }             parmtag { "multistartoffset" "1" }              parm {                 name    "bindgroupname#"                 baseparm                 label   "Group Name"                 export  none             }             parm {                 name    "bindgroupparm#"                 baseparm                 label   "VEX Parameter"                 export  none             }         }          parm {             name    "vex_cwdpath"             baseparm             label   "Evaluation Node Path"             export  none         }         parm {             name    "vex_outputmask"             baseparm             label   "Export Parameters"             export  none         }         parm {             name    "vex_updatenmls"             baseparm             label   "Update Normals If Displaced"             export  none         }         parm {             name    "vex_matchattrib"             baseparm             label   "Attribute to Match"             export  none         }         parm {             name    "vex_inplace"             baseparm             label   "Compute Results In Place"             export  none         }         parm {             name    "vex_selectiongroup"             baseparm             label   "Output Selection Group"             export  none         }         parm {             name    "vex_precision"             baseparm             label   "VEX Precision"             export  none         }     }      parm {         name    "Scale"         label   "Scale"         type    float         default { "0" }         range   { 0 1 }     }     parm {         name    "Rate"         label   "Rate"         type    float         default { "0" }         range   { 0 1 }     }     parm {         name    "PostMultiply"         label   "Postmultiply"         type    float         default { "0" }         range   { 0 1 }     } ' style02
opparm style02  bindings ( 0 ) groupbindings ( 0 )
opparm style02 folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( point ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( '//v.x = cos(length(p)*p.x);\n//v.y = p.x\n\nvector u = @P * ch(\'Scale\');\n\nfloat r = @Time / ch(\'Rate\');\n\nfloat x = cos(length(@P) * u.x + (r));\nfloat z = u.z;\n@N = set(x,x,z)* ch(\'PostMultiply\');' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto ) folder1 ( 0 0 ) Scale ( 10 ) Rate ( 1 ) PostMultiply ( 0.03 )
chlock style02 -*
chautoscope style02 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off style02
opexprlanguage -s hscript style02
opuserdata -n '___Version___' -v '' style02

# Node style03 (Sop/attribwrangle)
opadd -e -n attribwrangle style03
oplocate -x -3.7135600000000002 -y 7.0908499999999997 style03
opspareds '    group {         name    "folder1"         label   "Code"          parm {             name    "group"             baseparm             label   "Group"             export  none             bindselector uvselect "Modify Attribs"                 "Select the geometry to affect and press Enter to complete."                 0 1 0xffffffff 0 grouptype 0         }         parm {             name    "grouptype"             baseparm             label   "Group Type"             export  none         }         parm {             name    "class"             baseparm             label   "Run Over"             export  none         }         parm {             name    "vex_numcount"             baseparm             label   "Number Count"             export  none         }         parm {             name    "vex_threadjobsize"             baseparm             label   "Thread Job Size"             export  none         }         parm {             name    "snippet"             baseparm             label   "VEXpression"             export  all         }         parm {             name    "exportlist"             baseparm             label   "Attributes to Create"             export  none         }         parm {             name    "vex_strict"             baseparm             label   "Enforce Prototypes"             export  none         }     }      group {         name    "folder1_1"         label   "Bindings"          parm {             name    "autobind"             baseparm             label   "Autobind by Name"             export  none         }         multiparm {             name    "bindings"             label    "Number of Bindings"             baseparm             default 0             parmtag { "autoscope" "0000000000000000" }             parmtag { "multistartoffset" "1" }              parm {                 name    "bindname#"                 baseparm                 label   "Attribute Name"                 export  none             }             parm {                 name    "bindparm#"                 baseparm                 label   "VEX Parameter"                 export  none             }         }          parm {             name    "groupautobind"             baseparm             label   "Autobind Groups by Name"             export  none         }         multiparm {             name    "groupbindings"             label    "Group Bindings"             baseparm             default 0             parmtag { "autoscope" "0000000000000000" }             parmtag { "multistartoffset" "1" }              parm {                 name    "bindgroupname#"                 baseparm                 label   "Group Name"                 export  none             }             parm {                 name    "bindgroupparm#"                 baseparm                 label   "VEX Parameter"                 export  none             }         }          parm {             name    "vex_cwdpath"             baseparm             label   "Evaluation Node Path"             export  none         }         parm {             name    "vex_outputmask"             baseparm             label   "Export Parameters"             export  none         }         parm {             name    "vex_updatenmls"             baseparm             label   "Update Normals If Displaced"             export  none         }         parm {             name    "vex_matchattrib"             baseparm             label   "Attribute to Match"             export  none         }         parm {             name    "vex_inplace"             baseparm             label   "Compute Results In Place"             export  none         }         parm {             name    "vex_selectiongroup"             baseparm             label   "Output Selection Group"             export  none         }         parm {             name    "vex_precision"             baseparm             label   "VEX Precision"             export  none         }     }      parm {         name    "Scale"         label   "Scale"         type    float         default { "0" }         range   { 0 1 }     }     parm {         name    "ratex"         label   "Ratex"         type    float         default { "0" }         range   { 0 1 }     }     parm {         name    "ratez"         label   "Ratez"         type    float         default { "0" }         range   { 0 1 }     }     parm {         name    "PostMultiply"         label   "Postmultiply"         type    float         default { "0" }         range   { 0 1 }     } ' style03
opparm style03  bindings ( 0 ) groupbindings ( 0 )
opparm style03 folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( point ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( '//v.x = sin(sin(p.x));\n//v.y = cos(length(p));\n\nvector u = @P * ch(\'Scale\');\nfloat xr = @Time / ch(\'ratex\');\nfloat zr = @Time / ch(\'ratez\');\nfloat x = sin(sin(u.x+xr) +zr);\nfloat z = cos(length(u+xr)+zr);\n@N = set(x,x,z)* ch(\'PostMultiply\');' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto ) folder1 ( 0 0 ) Scale ( 10 ) ratex ( 1 ) ratez ( 1 ) PostMultiply ( 0.05 )
chlock style03 -*
chautoscope style03 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off style03
opexprlanguage -s hscript style03
opuserdata -n '___Version___' -v '' style03

# Node style04 (Sop/attribwrangle)
opadd -e -n attribwrangle style04
oplocate -x -1.4543600000000001 -y 6.6390500000000001 style04
opspareds '    group {         name    "folder1"         label   "Code"          parm {             name    "group"             baseparm             label   "Group"             export  none             bindselector uvselect "Modify Attribs"                 "Select the geometry to affect and press Enter to complete."                 0 1 0xffffffff 0 grouptype 0         }         parm {             name    "grouptype"             baseparm             label   "Group Type"             export  none         }         parm {             name    "class"             baseparm             label   "Run Over"             export  none         }         parm {             name    "vex_numcount"             baseparm             label   "Number Count"             export  none         }         parm {             name    "vex_threadjobsize"             baseparm             label   "Thread Job Size"             export  none         }         parm {             name    "snippet"             baseparm             label   "VEXpression"             export  all         }         parm {             name    "exportlist"             baseparm             label   "Attributes to Create"             export  none         }         parm {             name    "vex_strict"             baseparm             label   "Enforce Prototypes"             export  none         }     }      group {         name    "folder1_1"         label   "Bindings"          parm {             name    "autobind"             baseparm             label   "Autobind by Name"             export  none         }         multiparm {             name    "bindings"             label    "Number of Bindings"             baseparm             default 0             parmtag { "autoscope" "0000000000000000" }             parmtag { "multistartoffset" "1" }              parm {                 name    "bindname#"                 baseparm                 label   "Attribute Name"                 export  none             }             parm {                 name    "bindparm#"                 baseparm                 label   "VEX Parameter"                 export  none             }         }          parm {             name    "groupautobind"             baseparm             label   "Autobind Groups by Name"             export  none         }         multiparm {             name    "groupbindings"             label    "Group Bindings"             baseparm             default 0             parmtag { "autoscope" "0000000000000000" }             parmtag { "multistartoffset" "1" }              parm {                 name    "bindgroupname#"                 baseparm                 label   "Group Name"                 export  none             }             parm {                 name    "bindgroupparm#"                 baseparm                 label   "VEX Parameter"                 export  none             }         }          parm {             name    "vex_cwdpath"             baseparm             label   "Evaluation Node Path"             export  none         }         parm {             name    "vex_outputmask"             baseparm             label   "Export Parameters"             export  none         }         parm {             name    "vex_updatenmls"             baseparm             label   "Update Normals If Displaced"             export  none         }         parm {             name    "vex_matchattrib"             baseparm             label   "Attribute to Match"             export  none         }         parm {             name    "vex_inplace"             baseparm             label   "Compute Results In Place"             export  none         }         parm {             name    "vex_selectiongroup"             baseparm             label   "Output Selection Group"             export  none         }         parm {             name    "vex_precision"             baseparm             label   "VEX Precision"             export  none         }     }      parm {         name    "Scale"         label   "Scale"         type    float         default { "0" }         range   { 0 1 }     }     parm {         name    "ratex"         label   "Ratex"         type    float         default { "0" }         range   { 0 1 }     }     parm {         name    "ratez"         label   "Ratez"         type    float         default { "0" }         range   { 0 1 }     }     parm {         name    "PostMultiply"         label   "Postmultiply"         type    float         default { "0" }         range   { 0 1 }     } ' style04
opparm style04  bindings ( 0 ) groupbindings ( 0 )
opparm style04 folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( point ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( '//v.x = sin(max(u.x,u.z));\n//v.y = (cos(u.y)+cos(sin(u.x)));\n\nvector u = @P * ch(\'Scale\');\n\nfloat xr = @Time / ch(\'ratex\');\nfloat zr = @Time / ch(\'ratez\');\n\nfloat x = sin(max(u.x,u.z)+xr);\nfloat z = (cos(u.x)+cos(sin(u.z)+zr));\n@N = set(x,0,z) * ch(\'PostMultiply\');' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto ) folder1 ( 0 0 ) Scale ( 10 ) ratex ( 1 ) ratez ( 1 ) PostMultiply ( 0.1 )
chlock style04 -*
chautoscope style04 -*
opset -d on -r on -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off style04
opexprlanguage -s hscript style04
opuserdata -n '___Version___' -v '' style04

# Node style05 (Sop/attribwrangle)
opadd -e -n attribwrangle style05
oplocate -x 0.80483499999999997 -y 6.1872499999999997 style05
opspareds '    group {         name    "folder1"         label   "Code"          parm {             name    "group"             baseparm             label   "Group"             export  none             bindselector uvselect "Modify Attribs"                 "Select the geometry to affect and press Enter to complete."                 0 1 0xffffffff 0 grouptype 0         }         parm {             name    "grouptype"             baseparm             label   "Group Type"             export  none         }         parm {             name    "class"             baseparm             label   "Run Over"             export  none         }         parm {             name    "vex_numcount"             baseparm             label   "Number Count"             export  none         }         parm {             name    "vex_threadjobsize"             baseparm             label   "Thread Job Size"             export  none         }         parm {             name    "snippet"             baseparm             label   "VEXpression"             export  all         }         parm {             name    "exportlist"             baseparm             label   "Attributes to Create"             export  none         }         parm {             name    "vex_strict"             baseparm             label   "Enforce Prototypes"             export  none         }     }      group {         name    "folder1_1"         label   "Bindings"          parm {             name    "autobind"             baseparm             label   "Autobind by Name"             export  none         }         multiparm {             name    "bindings"             label    "Number of Bindings"             baseparm             default 0             parmtag { "autoscope" "0000000000000000" }             parmtag { "multistartoffset" "1" }              parm {                 name    "bindname#"                 baseparm                 label   "Attribute Name"                 export  none             }             parm {                 name    "bindparm#"                 baseparm                 label   "VEX Parameter"                 export  none             }         }          parm {             name    "groupautobind"             baseparm             label   "Autobind Groups by Name"             export  none         }         multiparm {             name    "groupbindings"             label    "Group Bindings"             baseparm             default 0             parmtag { "autoscope" "0000000000000000" }             parmtag { "multistartoffset" "1" }              parm {                 name    "bindgroupname#"                 baseparm                 label   "Group Name"                 export  none             }             parm {                 name    "bindgroupparm#"                 baseparm                 label   "VEX Parameter"                 export  none             }         }          parm {             name    "vex_cwdpath"             baseparm             label   "Evaluation Node Path"             export  none         }         parm {             name    "vex_outputmask"             baseparm             label   "Export Parameters"             export  none         }         parm {             name    "vex_updatenmls"             baseparm             label   "Update Normals If Displaced"             export  none         }         parm {             name    "vex_matchattrib"             baseparm             label   "Attribute to Match"             export  none         }         parm {             name    "vex_inplace"             baseparm             label   "Compute Results In Place"             export  none         }         parm {             name    "vex_selectiongroup"             baseparm             label   "Output Selection Group"             export  none         }         parm {             name    "vex_precision"             baseparm             label   "VEX Precision"             export  none         }     }      parm {         name    "Scale"         label   "Scale"         type    float         default { "0" }         range   { 0 1 }     }     parm {         name    "rate"         label   "Rate"         type    float         default { "0" }         range   { 0 1 }     }     parm {         name    "PostMultiply"         label   "Postmultiply"         type    float         default { "0" }         range   { 0 1 }     } ' style05
opparm style05  bindings ( 0 ) groupbindings ( 0 )
opparm style05 folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( point ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( '//v.x = cos(p.y);\n//v.y = sin(p.x)/sin(p.x)/p.x;\n\nvector u = @P * ch(\'Scale\');\n\nfloat r = @Time / ch(\'rate\');\n\nfloat x = cos(u.z+r);\nfloat z = sin(u.x)/sin(u.x)/u.x;\n@N = set(x,0,z) * ch(\'PostMultiply\');' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto ) folder1 ( 0 0 ) Scale ( 10 ) rate ( 1 ) PostMultiply ( 0.05 )
chlock style05 -*
chautoscope style05 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off style05
opexprlanguage -s hscript style05
opuserdata -n '___Version___' -v '' style05

# Node current01 (Sop/attribwrangle)
opadd -e -n attribwrangle current01
oplocate -x 3.0640399999999999 -y 5.7354500000000002 current01
opspareds '    group {         name    "folder1"         label   "Code"          parm {             name    "group"             baseparm             label   "Group"             export  none             bindselector uvselect "Modify Attribs"                 "Select the geometry to affect and press Enter to complete."                 0 1 0xffffffff 0 grouptype 0         }         parm {             name    "grouptype"             baseparm             label   "Group Type"             export  none         }         parm {             name    "class"             baseparm             label   "Run Over"             export  none         }         parm {             name    "vex_numcount"             baseparm             label   "Number Count"             export  none         }         parm {             name    "vex_threadjobsize"             baseparm             label   "Thread Job Size"             export  none         }         parm {             name    "snippet"             baseparm             label   "VEXpression"             export  all         }         parm {             name    "exportlist"             baseparm             label   "Attributes to Create"             export  none         }         parm {             name    "vex_strict"             baseparm             label   "Enforce Prototypes"             export  none         }     }      group {         name    "folder1_1"         label   "Bindings"          parm {             name    "autobind"             baseparm             label   "Autobind by Name"             export  none         }         multiparm {             name    "bindings"             label    "Number of Bindings"             baseparm             default 0             parmtag { "autoscope" "0000000000000000" }             parmtag { "multistartoffset" "1" }              parm {                 name    "bindname#"                 baseparm                 label   "Attribute Name"                 export  none             }             parm {                 name    "bindparm#"                 baseparm                 label   "VEX Parameter"                 export  none             }         }          parm {             name    "groupautobind"             baseparm             label   "Autobind Groups by Name"             export  none         }         multiparm {             name    "groupbindings"             label    "Group Bindings"             baseparm             default 0             parmtag { "autoscope" "0000000000000000" }             parmtag { "multistartoffset" "1" }              parm {                 name    "bindgroupname#"                 baseparm                 label   "Group Name"                 export  none             }             parm {                 name    "bindgroupparm#"                 baseparm                 label   "VEX Parameter"                 export  none             }         }          parm {             name    "vex_cwdpath"             baseparm             label   "Evaluation Node Path"             export  none         }         parm {             name    "vex_outputmask"             baseparm             label   "Export Parameters"             export  none         }         parm {             name    "vex_updatenmls"             baseparm             label   "Update Normals If Displaced"             export  none         }         parm {             name    "vex_matchattrib"             baseparm             label   "Attribute to Match"             export  none         }         parm {             name    "vex_inplace"             baseparm             label   "Compute Results In Place"             export  none         }         parm {             name    "vex_selectiongroup"             baseparm             label   "Output Selection Group"             export  none         }         parm {             name    "vex_precision"             baseparm             label   "VEX Precision"             export  none         }     }      parm {         name    "Scale"         label   "Scale"         type    float         default { "0" }         range   { 0 1 }     }     parm {         name    "RateX"         label   "Ratex"         type    float         default { "0" }         range   { 0 1 }     }     parm {         name    "PostMultiply"         label   "Postmultiply"         type    float         default { "0" }         range   { 0 1 }     } ' current01
opparm current01  bindings ( 0 ) groupbindings ( 0 )
opparm current01 folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( point ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( '//v.x = p.x;\n//v.y = sin(p.x);\n\nvector u = @P * ch(\'Scale\');\n\nfloat xr = @Time / ch(\'RateX\');\n\nfloat x = u.x;\nfloat z = sin(u.x+xr);\n\n@N = set(x,0,z) * ch(\'PostMultiply\');' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto ) folder1 ( 0 0 ) Scale ( 12 ) RateX ( 1 ) PostMultiply ( 0.019 )
chlock current01 -*
chautoscope current01 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off current01
opexprlanguage -s hscript current01
opuserdata -n '___Version___' -v '' current01

# Node current02 (Sop/attribwrangle)
opadd -e -n attribwrangle current02
oplocate -x 5.3232400000000002 -y 5.2836499999999997 current02
opspareds '    group {         name    "folder1"         label   "Code"          parm {             name    "group"             baseparm             label   "Group"             export  none             bindselector uvselect "Modify Attribs"                 "Select the geometry to affect and press Enter to complete."                 0 1 0xffffffff 0 grouptype 0         }         parm {             name    "grouptype"             baseparm             label   "Group Type"             export  none         }         parm {             name    "class"             baseparm             label   "Run Over"             export  none         }         parm {             name    "vex_numcount"             baseparm             label   "Number Count"             export  none         }         parm {             name    "vex_threadjobsize"             baseparm             label   "Thread Job Size"             export  none         }         parm {             name    "snippet"             baseparm             label   "VEXpression"             export  all         }         parm {             name    "exportlist"             baseparm             label   "Attributes to Create"             export  none         }         parm {             name    "vex_strict"             baseparm             label   "Enforce Prototypes"             export  none         }     }      group {         name    "folder1_1"         label   "Bindings"          parm {             name    "autobind"             baseparm             label   "Autobind by Name"             export  none         }         multiparm {             name    "bindings"             label    "Number of Bindings"             baseparm             default 0             parmtag { "autoscope" "0000000000000000" }             parmtag { "multistartoffset" "1" }              parm {                 name    "bindname#"                 baseparm                 label   "Attribute Name"                 export  none             }             parm {                 name    "bindparm#"                 baseparm                 label   "VEX Parameter"                 export  none             }         }          parm {             name    "groupautobind"             baseparm             label   "Autobind Groups by Name"             export  none         }         multiparm {             name    "groupbindings"             label    "Group Bindings"             baseparm             default 0             parmtag { "autoscope" "0000000000000000" }             parmtag { "multistartoffset" "1" }              parm {                 name    "bindgroupname#"                 baseparm                 label   "Group Name"                 export  none             }             parm {                 name    "bindgroupparm#"                 baseparm                 label   "VEX Parameter"                 export  none             }         }          parm {             name    "vex_cwdpath"             baseparm             label   "Evaluation Node Path"             export  none         }         parm {             name    "vex_outputmask"             baseparm             label   "Export Parameters"             export  none         }         parm {             name    "vex_updatenmls"             baseparm             label   "Update Normals If Displaced"             export  none         }         parm {             name    "vex_matchattrib"             baseparm             label   "Attribute to Match"             export  none         }         parm {             name    "vex_inplace"             baseparm             label   "Compute Results In Place"             export  none         }         parm {             name    "vex_selectiongroup"             baseparm             label   "Output Selection Group"             export  none         }         parm {             name    "vex_precision"             baseparm             label   "VEX Precision"             export  none         }     }      parm {         name    "Scale"         label   "Scale"         type    float         default { "0" }         range   { 0 1 }     }     parm {         name    "RateX"         label   "Ratex"         type    float         default { "0" }         range   { 0 1 }     }     parm {         name    "PostMultiply"         label   "Postmultiply"         type    float         default { "0" }         range   { 0 1 }     } ' current02
opparm current02  bindings ( 0 ) groupbindings ( 0 )
opparm current02 folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( point ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( '//v.x = sin(p.y/max((length(p)+max(p.x,length(p))),cos(length(p))));\n//v.y = sin(p.y);;\n\nvector u = @P * ch(\'Scale\');\n\nfloat xr = @Time / ch(\'RateX\');\n\nfloat x = sin(u.z/max((length(@P)+max(u.x,length(@P))),cos(length(@P))) + xr);\nfloat z = sin(u.x);\n@N = set(x,0,z) * ch(\'PostMultiply\');' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto ) folder1 ( 0 0 ) Scale ( 10 ) RateX ( 0.5 ) PostMultiply ( 0.1 )
chlock current02 -*
chautoscope current02 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off current02
opexprlanguage -s hscript current02
opuserdata -n '___Version___' -v '' current02

# Node current03 (Sop/attribwrangle)
opadd -e -n attribwrangle current03
oplocate -x 7.5824400000000001 -y 4.8318500000000002 current03
opspareds '    group {         name    "folder1"         label   "Code"          parm {             name    "group"             baseparm             label   "Group"             export  none             bindselector uvselect "Modify Attribs"                 "Select the geometry to affect and press Enter to complete."                 0 1 0xffffffff 0 grouptype 0         }         parm {             name    "grouptype"             baseparm             label   "Group Type"             export  none         }         parm {             name    "class"             baseparm             label   "Run Over"             export  none         }         parm {             name    "vex_numcount"             baseparm             label   "Number Count"             export  none         }         parm {             name    "vex_threadjobsize"             baseparm             label   "Thread Job Size"             export  none         }         parm {             name    "snippet"             baseparm             label   "VEXpression"             export  all         }         parm {             name    "exportlist"             baseparm             label   "Attributes to Create"             export  none         }         parm {             name    "vex_strict"             baseparm             label   "Enforce Prototypes"             export  none         }     }      group {         name    "folder1_1"         label   "Bindings"          parm {             name    "autobind"             baseparm             label   "Autobind by Name"             export  none         }         multiparm {             name    "bindings"             label    "Number of Bindings"             baseparm             default 0             parmtag { "autoscope" "0000000000000000" }             parmtag { "multistartoffset" "1" }              parm {                 name    "bindname#"                 baseparm                 label   "Attribute Name"                 export  none             }             parm {                 name    "bindparm#"                 baseparm                 label   "VEX Parameter"                 export  none             }         }          parm {             name    "groupautobind"             baseparm             label   "Autobind Groups by Name"             export  none         }         multiparm {             name    "groupbindings"             label    "Group Bindings"             baseparm             default 0             parmtag { "autoscope" "0000000000000000" }             parmtag { "multistartoffset" "1" }              parm {                 name    "bindgroupname#"                 baseparm                 label   "Group Name"                 export  none             }             parm {                 name    "bindgroupparm#"                 baseparm                 label   "VEX Parameter"                 export  none             }         }          parm {             name    "vex_cwdpath"             baseparm             label   "Evaluation Node Path"             export  none         }         parm {             name    "vex_outputmask"             baseparm             label   "Export Parameters"             export  none         }         parm {             name    "vex_updatenmls"             baseparm             label   "Update Normals If Displaced"             export  none         }         parm {             name    "vex_matchattrib"             baseparm             label   "Attribute to Match"             export  none         }         parm {             name    "vex_inplace"             baseparm             label   "Compute Results In Place"             export  none         }         parm {             name    "vex_selectiongroup"             baseparm             label   "Output Selection Group"             export  none         }         parm {             name    "vex_precision"             baseparm             label   "VEX Precision"             export  none         }     }      parm {         name    "Scale"         label   "Scale"         type    float         default { "0" }         range   { 0 1 }     }     parm {         name    "RateX"         label   "Ratex"         type    float         default { "0" }         range   { 0 1 }     }     parm {         name    "PostMultiply"         label   "Postmultiply"         type    float         default { "0" }         range   { 0 1 }     } ' current03
opparm current03  bindings ( 0 ) groupbindings ( 0 )
opparm current03 folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( point ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( '//v.x = p.y;\n//v.y = cos(p.x);\nvector u = @P * ch(\'Scale\');\n\nfloat xr = @Time / ch(\'RateX\');\n\nfloat x = u.z;\nfloat z = cos(u.x+xr);\n@N = set(x,0,z) * ch(\'PostMultiply\');' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto ) folder1 ( 0 0 ) Scale ( 10 ) RateX ( 1 ) PostMultiply ( 0.1 )
chlock current03 -*
chautoscope current03 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off current03
opexprlanguage -s hscript current03
opuserdata -n '___Version___' -v '' current03

# Node current04 (Sop/attribwrangle)
opadd -e -n attribwrangle current04
oplocate -x 10.1008 -y 4.2661899999999999 current04
opspareds '    group {         name    "folder1"         label   "Code"          parm {             name    "group"             baseparm             label   "Group"             export  none             bindselector uvselect "Modify Attribs"                 "Select the geometry to affect and press Enter to complete."                 0 1 0xffffffff 0 grouptype 0         }         parm {             name    "grouptype"             baseparm             label   "Group Type"             export  none         }         parm {             name    "class"             baseparm             label   "Run Over"             export  none         }         parm {             name    "vex_numcount"             baseparm             label   "Number Count"             export  none         }         parm {             name    "vex_threadjobsize"             baseparm             label   "Thread Job Size"             export  none         }         parm {             name    "snippet"             baseparm             label   "VEXpression"             export  all         }         parm {             name    "exportlist"             baseparm             label   "Attributes to Create"             export  none         }         parm {             name    "vex_strict"             baseparm             label   "Enforce Prototypes"             export  none         }     }      group {         name    "folder1_1"         label   "Bindings"          parm {             name    "autobind"             baseparm             label   "Autobind by Name"             export  none         }         multiparm {             name    "bindings"             label    "Number of Bindings"             baseparm             default 0             parmtag { "autoscope" "0000000000000000" }             parmtag { "multistartoffset" "1" }              parm {                 name    "bindname#"                 baseparm                 label   "Attribute Name"                 export  none             }             parm {                 name    "bindparm#"                 baseparm                 label   "VEX Parameter"                 export  none             }         }          parm {             name    "groupautobind"             baseparm             label   "Autobind Groups by Name"             export  none         }         multiparm {             name    "groupbindings"             label    "Group Bindings"             baseparm             default 0             parmtag { "autoscope" "0000000000000000" }             parmtag { "multistartoffset" "1" }              parm {                 name    "bindgroupname#"                 baseparm                 label   "Group Name"                 export  none             }             parm {                 name    "bindgroupparm#"                 baseparm                 label   "VEX Parameter"                 export  none             }         }          parm {             name    "vex_cwdpath"             baseparm             label   "Evaluation Node Path"             export  none         }         parm {             name    "vex_outputmask"             baseparm             label   "Export Parameters"             export  none         }         parm {             name    "vex_updatenmls"             baseparm             label   "Update Normals If Displaced"             export  none         }         parm {             name    "vex_matchattrib"             baseparm             label   "Attribute to Match"             export  none         }         parm {             name    "vex_inplace"             baseparm             label   "Compute Results In Place"             export  none         }         parm {             name    "vex_selectiongroup"             baseparm             label   "Output Selection Group"             export  none         }         parm {             name    "vex_precision"             baseparm             label   "VEX Precision"             export  none         }     }      parm {         name    "Scale"         label   "Scale"         type    float         default { "0" }         range   { 0 1 }     }     parm {         name    "RateX"         label   "Ratex"         type    float         default { "0" }         range   { 0 1 }     }     parm {         name    "RateZ"         label   "Ratez"         type    float         default { "0" }         range   { 0 1 }     }     parm {         name    "PostMultiply"         label   "Postmultiply"         type    float         default { "0" }         range   { 0 1 }     } ' current04
opparm current04  bindings ( 0 ) groupbindings ( 0 )
opparm current04 folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( point ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( '//v.x = cos((p.y-p.y));\n//v.y = cos(p.x);\n\nvector u = @P * ch(\'Scale\');\n\nfloat xr = @Time / ch(\'RateX\');\nfloat zr = @Time / ch(\'RateZ\');\n\nfloat x = cos((u.y-u.y+xr));\nfloat z = cos(u.x+zr);\n\n@N = set(x,0,z) * ch(\'PostMultiply\');' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto ) folder1 ( 0 0 ) Scale ( 10 ) RateX ( 1 ) RateZ ( 1 ) PostMultiply ( 0.1 )
chlock current04 -*
chautoscope current04 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off current04
opexprlanguage -s hscript current04
opuserdata -n '___Version___' -v '' current04

# Node current05 (Sop/attribwrangle)
opadd -e -n attribwrangle current05
oplocate -x 12.1008 -y 3.9282499999999998 current05
opspareds '    group {         name    "folder1"         label   "Code"          parm {             name    "group"             baseparm             label   "Group"             export  none             bindselector uvselect "Modify Attribs"                 "Select the geometry to affect and press Enter to complete."                 0 1 0xffffffff 0 grouptype 0         }         parm {             name    "grouptype"             baseparm             label   "Group Type"             export  none         }         parm {             name    "class"             baseparm             label   "Run Over"             export  none         }         parm {             name    "vex_numcount"             baseparm             label   "Number Count"             export  none         }         parm {             name    "vex_threadjobsize"             baseparm             label   "Thread Job Size"             export  none         }         parm {             name    "snippet"             baseparm             label   "VEXpression"             export  all         }         parm {             name    "exportlist"             baseparm             label   "Attributes to Create"             export  none         }         parm {             name    "vex_strict"             baseparm             label   "Enforce Prototypes"             export  none         }     }      group {         name    "folder1_1"         label   "Bindings"          parm {             name    "autobind"             baseparm             label   "Autobind by Name"             export  none         }         multiparm {             name    "bindings"             label    "Number of Bindings"             baseparm             default 0             parmtag { "autoscope" "0000000000000000" }             parmtag { "multistartoffset" "1" }              parm {                 name    "bindname#"                 baseparm                 label   "Attribute Name"                 export  none             }             parm {                 name    "bindparm#"                 baseparm                 label   "VEX Parameter"                 export  none             }         }          parm {             name    "groupautobind"             baseparm             label   "Autobind Groups by Name"             export  none         }         multiparm {             name    "groupbindings"             label    "Group Bindings"             baseparm             default 0             parmtag { "autoscope" "0000000000000000" }             parmtag { "multistartoffset" "1" }              parm {                 name    "bindgroupname#"                 baseparm                 label   "Group Name"                 export  none             }             parm {                 name    "bindgroupparm#"                 baseparm                 label   "VEX Parameter"                 export  none             }         }          parm {             name    "vex_cwdpath"             baseparm             label   "Evaluation Node Path"             export  none         }         parm {             name    "vex_outputmask"             baseparm             label   "Export Parameters"             export  none         }         parm {             name    "vex_updatenmls"             baseparm             label   "Update Normals If Displaced"             export  none         }         parm {             name    "vex_matchattrib"             baseparm             label   "Attribute to Match"             export  none         }         parm {             name    "vex_inplace"             baseparm             label   "Compute Results In Place"             export  none         }         parm {             name    "vex_selectiongroup"             baseparm             label   "Output Selection Group"             export  none         }         parm {             name    "vex_precision"             baseparm             label   "VEX Precision"             export  none         }     }      parm {         name    "Scale"         label   "Scale"         type    float         default { "0" }         range   { 0 1 }     }     parm {         name    "RateX"         label   "Ratex"         type    float         default { "0" }         range   { 0 1 }     }     parm {         name    "RateZ"         label   "Ratez"         type    float         default { "0" }         range   { 0 1 }     }     parm {         name    "PostMultiply"         label   "Postmultiply"         type    float         default { "0" }         range   { 0 1 }     } ' current05
opparm current05  bindings ( 0 ) groupbindings ( 0 )
opparm current05 folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( point ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( '//v.x = sin(p.y/max((length(p)+max(p.x,length(p))),cos(length(p))));\n//v.y = sin(p.y)\n\nvector u = @P * ch(\'Scale\');\n\nfloat xr = @Time / ch(\'RateX\');\nfloat zr = @Time / ch(\'RateZ\');\n\nfloat x = sin(u.z/ max((length(@P)+max(u.x,length(@P)) ),cos(length(@P))) + xr);\nfloat z = sin(u.z+zr);\n@N = set(x,0,z) * ch(\'PostMultiply\');' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto ) folder1 ( 0 0 ) Scale ( 10 ) RateX ( 1 ) RateZ ( 1 ) PostMultiply ( 0.1 )
chlock current05 -*
chautoscope current05 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off current05
opexprlanguage -s hscript current05
opuserdata -n '___Version___' -v '' current05

# Node switch1 (Sop/switch)
opadd -e -n switch switch1
oplocate -x 2.1038399999999999 -y 4.8326500000000001 switch1
opspareds "" switch1
opparm -V 20.5.522 switch1 input ( 9 )
chlock switch1 -*
chautoscope switch1 -*
opcolor -c 0 0 0 switch1
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F off -c on -e on -b off switch1
opexprlanguage -s hscript switch1
opuserdata -n '___Version___' -v '20.5.522' switch1
oporder -e output0 style01 style02 style03 style04 style05 current01 current02 current03 current04 current05 switch1 
opcf ..

# Node vectorfield_object_flow (Sop/subnet)
opadd -e -n subnet vectorfield_object_flow
oplocate -x 13.5 -y 0.84999999999999998 vectorfield_object_flow
opspareds '    groupsimple {         name    "Main"         label   "Object Flow"          parm {             name    "distance"             label   "Distance"             type    float             default { "0" }             range   { 0 10 }             parmtag { "script_callback_language" "python" }         }         parm {             name    "sim"             label   "Simulate"             type    toggle             default { "0" }             parmtag { "script_callback_language" "python" }         }         parm {             name    "blast"             label   "Blast Static"             type    toggle             default { "0" }             parmtag { "script_callback_language" "python" }         }     }      parm {         name    "label1"         baseparm         label   "Input #1 Label"         invisible         export  all     }     parm {         name    "label2"         baseparm         label   "Input #2 Label"         invisible         export  all     }     parm {         name    "label3"         baseparm         label   "Input #3 Label"         invisible         export  all     }     parm {         name    "label4"         baseparm         label   "Input #4 Label"         invisible         export  all     } ' vectorfield_object_flow
opparm -V 20.5.522 vectorfield_object_flow label1 ( 'Sub-Network Input #1' ) label2 ( 'Sub-Network Input #2' ) label3 ( 'Sub-Network Input #3' ) label4 ( 'Sub-Network Input #4' ) Main ( 0 ) distance ( 0 ) sim ( off ) blast ( off )
chlock vectorfield_object_flow -*
chautoscope vectorfield_object_flow -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off vectorfield_object_flow
opexprlanguage -s hscript vectorfield_object_flow
opuserdata -n '___Version___' -v '20.5.522' vectorfield_object_flow
opcf vectorfield_object_flow

# Node output0 (Sop/output)
opadd -e -n output output0
oplocate -x 1.5016 -y -3.0122599999999999 output0
opspareds "" output0
opparm -V 20.5.522 output0 outputidx ( 0 )
chlock output0 -*
chautoscope output0 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off output0
opexprlanguage -s hscript output0
opuserdata -n '___Version___' -v '20.5.522' output0

# Node object_flow (Sop/attribwrangle)
opadd -e -n attribwrangle object_flow
oplocate -x 1.4970000000000001 -y 1.8101 object_flow
opspareds '    group {         name    "folder1"         label   "Code"          parm {             name    "group"             baseparm             label   "Group"             export  none             bindselector uvselect "Modify Attribs"                 "Select the geometry to affect and press Enter to complete."                 0 1 0xffffffff 0 grouptype 0         }         parm {             name    "grouptype"             baseparm             label   "Group Type"             export  none         }         parm {             name    "class"             baseparm             label   "Run Over"             export  none         }         parm {             name    "vex_numcount"             baseparm             label   "Number Count"             export  none         }         parm {             name    "vex_threadjobsize"             baseparm             label   "Thread Job Size"             export  none         }         groupsimple {             name    "folder_generatedparms_snippet"             label   "Generated Channel Parameters"             grouptag { "group_type" "simple" }             grouptag { "sidefx::look" "blank" }              parm {                 name    "Distance"                 label   "Distance"                 type    float                 default { "0" }                 range   { 0 1 }             }         }          parm {             name    "snippet"             baseparm             label   "VEXpression"             export  all         }         parm {             name    "exportlist"             baseparm             label   "Attributes to Create"             export  none         }         parm {             name    "vex_strict"             baseparm             label   "Enforce Prototypes"             export  none         }     }      group {         name    "folder1_1"         label   "Bindings"          parm {             name    "autobind"             baseparm             label   "Autobind by Name"             export  none         }         multiparm {             name    "bindings"             label    "Number of Bindings"             baseparm             default 0             parmtag { "autoscope" "0000000000000000" }             parmtag { "multistartoffset" "1" }              parm {                 name    "bindname#"                 baseparm                 label   "Attribute Name"                 export  none             }             parm {                 name    "bindparm#"                 baseparm                 label   "VEX Parameter"                 export  none             }         }          parm {             name    "groupautobind"             baseparm             label   "Autobind Groups by Name"             export  none         }         multiparm {             name    "groupbindings"             label    "Group Bindings"             baseparm             default 0             parmtag { "autoscope" "0000000000000000" }             parmtag { "multistartoffset" "1" }              parm {                 name    "bindgroupname#"                 baseparm                 label   "Group Name"                 export  none             }             parm {                 name    "bindgroupparm#"                 baseparm                 label   "VEX Parameter"                 export  none             }         }          parm {             name    "vex_cwdpath"             baseparm             label   "Evaluation Node Path"             export  none         }         parm {             name    "vex_outputmask"             baseparm             label   "Export Parameters"             export  none         }         parm {             name    "vex_updatenmls"             baseparm             label   "Update Normals If Displaced"             export  none         }         parm {             name    "vex_matchattrib"             baseparm             label   "Attribute to Match"             export  none         }         parm {             name    "vex_inplace"             baseparm             label   "Compute Results In Place"             export  none         }         parm {             name    "vex_selectiongroup"             baseparm             label   "Output Selection Group"             export  none         }         parm {             name    "vex_precision"             baseparm             label   "VEX Precision"             export  none         }     }  ' object_flow
opparm object_flow  bindings ( 0 ) groupbindings ( 0 )
chblockbegin
chadd -t 0.58333333333333337 0.58333333333333337 object_flow Distance
chkey -t 0.58333333333333337 -v 5 -m 0 -a 0 -A 0 -T a  -F 'ch("../distance")' object_flow/Distance
chblockend
opparm object_flow folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( point ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( '// vectors\nvector e = normalize(minpos(1, @P) - @P); vector n = point(1, \'N\', nearpoint(1, @P)); vector v = normalize(point(1, \'v\', 0));\n\n// object flow vector\nfloat distance = fit(xyzdist(1, @P), 0, ch(\'Distance\'), 1, 0);\nvector q = normalize(cross(e, v)); vector r = normalize(cross(e, q));\nv@objectflow = r * distance;\n' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto ) folder1 ( 0 0 ) folder_generatedparms_snippet ( 0 ) Distance ( Distance )
chlock object_flow -*
chautoscope object_flow -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off object_flow
opexprlanguage -s hscript object_flow
opuserdata -n '___Version___' -v '' object_flow

# Node object_vectors (Sop/attribwrangle)
opadd -e -n attribwrangle object_vectors
oplocate -x 1.4970000000000001 -y 2.8100999999999998 object_vectors
opspareds "" object_vectors
opparm object_vectors  bindings ( 0 ) groupbindings ( 0 )
opparm object_vectors folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( point ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( '@N = @N; v@v = detail(1, \'v\');' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto )
chlock object_vectors -*
chautoscope object_vectors -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off object_vectors
opexprlanguage -s hscript object_vectors
opuserdata -n '___Version___' -v '' object_vectors

# Node trail1 (Sop/trail)
opadd -e -n trail trail1
oplocate -x 3.5 -y 4.8110999999999997 trail1
opspareds "" trail1
opparm -V 20.5.522 trail1 result ( velocity ) length ( 2 ) inc ( 1 ) cache ( 2 ) clear ( 0 ) evalframe ( off ) surftype ( quads ) close ( on ) velscale ( 1 ) velapproximation ( 'Backward Difference' ) computeaccel ( off ) accelattribute ( accel ) computeangular ( off ) matchbyattribute ( off ) attributetomatch ( id )
chlock trail1 -*
chautoscope trail1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off trail1
opexprlanguage -s hscript trail1
opuserdata -n '___Version___' -v '20.5.522' trail1

# Node attribpromote2 (Sop/attribpromote)
opadd -e -n attribpromote attribpromote2
oplocate -x 3.49655 -y 3.8111000000000002 attribpromote2
opspareds "" attribpromote2
opparm -V 20.5.522 attribpromote2 inname ( v ) inclass ( point ) outclass ( detail ) usepieceattrib ( off ) pieceattrib ( name ) method ( mean ) useoutname ( off ) outname ( "" ) deletein ( off )
chlock attribpromote2 -*
chautoscope attribpromote2 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off attribpromote2
opexprlanguage -s hscript attribpromote2
opuserdata -n '___Version___' -v '20.5.522' attribpromote2

# Node solver1 (Sop/solver)
opadd -e -n solver solver1
oplocate -x -0.5 -y 0.81110000000000004 solver1
opspareds "" solver1
opparm solver1 resimulate ( 0 ) useinitialsop ( off ) initialsop ( "" ) startframe ( 15 ) substep ( 1 ) cacheenabled ( on ) cachetodisk ( off ) cachemaxsize ( 5000 )
chlock solver1 -*
chautoscope solver1 -*
opcolor -c 0.47499999403953552 0.81199997663497925 0.20399999618530273 solver1
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F off -c on -e on -b off solver1
opexprlanguage -s hscript solver1
opuserdata -n '___Version___' -v '' solver1

# Editable subnode
opcf solver1/d

# Node s (Dop/sopsolver)
opadd -e -n sopsolver s
oplocate -x 1.88226 -y 0.51761800000000002 s
opspareds "" s
opparm s  numinputs ( 0 ) numoutputs ( 0 ) numstamps ( 0 )
opparm -V 20.5.522 s parmop_usesoppath ( default ) usesoppath ( off ) parmop_soppath ( default ) soppath ( "" ) parmop_datapath ( default ) datapath ( Geometry ) parmop_doinvoke ( default ) doinvoke ( off ) parmop_primaryinputname ( default ) primaryinputname ( data ) parmop_numinputs ( default ) numinputs ( 0 ) parmop_numoutputs ( default ) numoutputs ( 0 ) parmop_transformsopoutput ( default ) transformsopoutput ( on ) parmop_solveinitframe ( default ) solveinitframe ( on ) parmop_numstamps ( default ) numstamps ( 0 ) parmop_usetimestep ( default ) usetimestep ( on ) parmop_timescale ( default ) timescale ( 1 ) defaultparmop ( initial ) addaffectors ( on ) group ( * ) dataname ( '$OS' ) uniquedataname ( on ) solverperobject ( off )
chlock s -*
chautoscope s -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 s
opset -d on -r off -h off -f off -y off -t off -l off -s off -u off -F off -c on -e on -b off s
opexprlanguage -s hscript s
opuserdata -n '___Version___' -v '20.5.522' s
opcf s

# Node Input_5 (Sop/object_merge)
opadd -e -n object_merge Input_5
oplocate -x 0 -y 0 Input_5
opspareds "" Input_5
opparm Input_5  numobj ( 1 )
opparm -V 20.5.522 Input_5 numobj ( 1 ) _separator ( ) xformtype ( object ) xformpath ( "" ) invertxform ( off ) createptgroups ( off ) ptgroupprefix ( _ptgrp_ ) createprimgroups ( off ) primgroupprefix ( _primgrp_ ) verbosegroups ( off ) suffixfirstgroup ( on ) createptstring ( off ) createprimstring ( off ) pathattrib ( objname ) pack ( off ) pivot ( centroid ) viewportlod ( full ) addpath ( on ) enable1 ( on ) objpath1 ( "" ) group1 ( "" ) expand1 ( off )
chlock Input_5 -*
chautoscope Input_5 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off Input_5
opexprlanguage -s hscript Input_5
opuserdata -n '___Version___' -v '20.5.522' Input_5

# Node Input_6 (Sop/object_merge)
opadd -e -n object_merge Input_6
oplocate -x 0 -y 0 Input_6
opspareds "" Input_6
opparm Input_6  numobj ( 1 )
opparm -V 20.5.522 Input_6 numobj ( 1 ) _separator ( ) xformtype ( object ) xformpath ( "" ) invertxform ( off ) createptgroups ( off ) ptgroupprefix ( _ptgrp_ ) createprimgroups ( off ) primgroupprefix ( _primgrp_ ) verbosegroups ( off ) suffixfirstgroup ( on ) createptstring ( off ) createprimstring ( off ) pathattrib ( objname ) pack ( off ) pivot ( centroid ) viewportlod ( full ) addpath ( on ) enable1 ( on ) objpath1 ( "" ) group1 ( "" ) expand1 ( off )
chlock Input_6 -*
chautoscope Input_6 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off Input_6
opexprlanguage -s hscript Input_6
opuserdata -n '___Version___' -v '20.5.522' Input_6

# Node Input_7 (Sop/object_merge)
opadd -e -n object_merge Input_7
oplocate -x 0 -y 0 Input_7
opspareds "" Input_7
opparm Input_7  numobj ( 1 )
opparm -V 20.5.522 Input_7 numobj ( 1 ) _separator ( ) xformtype ( object ) xformpath ( "" ) invertxform ( off ) createptgroups ( off ) ptgroupprefix ( _ptgrp_ ) createprimgroups ( off ) primgroupprefix ( _primgrp_ ) verbosegroups ( off ) suffixfirstgroup ( on ) createptstring ( off ) createprimstring ( off ) pathattrib ( objname ) pack ( off ) pivot ( centroid ) viewportlod ( full ) addpath ( on ) enable1 ( on ) objpath1 ( "" ) group1 ( "" ) expand1 ( off )
chlock Input_7 -*
chautoscope Input_7 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off Input_7
opexprlanguage -s hscript Input_7
opuserdata -n '___Version___' -v '20.5.522' Input_7

# Node Input_8 (Sop/object_merge)
opadd -e -n object_merge Input_8
oplocate -x 0 -y 0 Input_8
opspareds "" Input_8
opparm Input_8  numobj ( 1 )
opparm -V 20.5.522 Input_8 numobj ( 1 ) _separator ( ) xformtype ( object ) xformpath ( "" ) invertxform ( off ) createptgroups ( off ) ptgroupprefix ( _ptgrp_ ) createprimgroups ( off ) primgroupprefix ( _primgrp_ ) verbosegroups ( off ) suffixfirstgroup ( on ) createptstring ( off ) createprimstring ( off ) pathattrib ( objname ) pack ( off ) pivot ( centroid ) viewportlod ( full ) addpath ( on ) enable1 ( on ) objpath1 ( "" ) group1 ( "" ) expand1 ( off )
chlock Input_8 -*
chautoscope Input_8 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off Input_8
opexprlanguage -s hscript Input_8
opuserdata -n '___Version___' -v '20.5.522' Input_8

# Node Prev_Frame1 (Sop/dopimport::2.0)
opadd -e -n dopimport::2.0 Prev_Frame1
oplocate -x 0 -y 0 Prev_Frame1
opspareds "" Prev_Frame1
chblockbegin
chadd -t 0 0 Prev_Frame1 integrateovertime
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '1/$FPS' Prev_Frame1/integrateovertime
chblockend
opparm -V 20.5.522 Prev_Frame1 doppath ( "" ) objpattern ( * ) relpattern ( "" ) donotsim ( off ) folder_geometry ( 0 ) importstyle ( fetch ) spacer ( "" ) pointsquicksetup ( menu ) geodatapath ( "" ) pack ( off ) pivot ( centroid ) viewportlod ( full ) adddopobjectpath ( off ) adddopobjectname ( off ) dopobjectnameattrib ( dopobjectname ) adddopdatapath ( off ) dopdatapathattrib ( dopdatapath ) transferattributes ( "" ) transfergroups ( "" ) folder_xform ( 0 ) doposxform ( on ) dogeoxform ( on ) keepworldspacepos ( on ) pointvels ( none ) integrateovertime ( integrateovertime ) addtoexistingvel ( on )
chlock Prev_Frame1 -*
chautoscope Prev_Frame1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off Prev_Frame1
opexprlanguage -s hscript Prev_Frame1
opuserdata -n '___Version___' -v '20.5.522' Prev_Frame1

# Node OUT1 (Sop/output)
opadd -e -n output OUT1
oplocate -x 0 -y 0 OUT1
opspareds "" OUT1
chblockbegin
chadd -t 0 0 OUT1 outputidx
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F 'max(opdigits("."),0)' OUT1/outputidx
chblockend
opparm -V 20.5.522 OUT1 outputidx ( outputidx )
chlock OUT1 -*
chautoscope OUT1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off OUT1
opexprlanguage -s hscript OUT1
opuserdata -n '___Version___' -v '20.5.522' OUT1

# Node Input_1 (Sop/object_merge)
opadd -e -n object_merge Input_1
oplocate -x 5.1241599999999998 -y -0.029861800000000001 Input_1
opspareds "" Input_1
opparm Input_1  numobj ( 1 )
opparm -V 20.5.522 Input_1 numobj ( 1 ) _separator ( ) xformtype ( object ) xformpath ( "" ) invertxform ( off ) createptgroups ( off ) ptgroupprefix ( _ptgrp_ ) createprimgroups ( off ) primgroupprefix ( _primgrp_ ) verbosegroups ( off ) suffixfirstgroup ( on ) createptstring ( off ) createprimstring ( off ) pathattrib ( objname ) pack ( off ) pivot ( centroid ) viewportlod ( full ) addpath ( on ) enable1 ( on ) objpath1 ( '`opinputpath("../..", 0)`' ) group1 ( "" ) expand1 ( off )
chlock Input_1 -*
chautoscope Input_1 -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 Input_1
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F off -c on -e on -b off Input_1
opexprlanguage -s hscript Input_1
opuserdata -n '___Version___' -v '20.5.522' Input_1

# Node Input_2 (Sop/object_merge)
opadd -e -n object_merge Input_2
oplocate -x 1.49875 -y -0.14845 Input_2
opspareds "" Input_2
opparm Input_2  numobj ( 1 )
opparm -V 20.5.522 Input_2 numobj ( 1 ) _separator ( ) xformtype ( object ) xformpath ( "" ) invertxform ( off ) createptgroups ( off ) ptgroupprefix ( _ptgrp_ ) createprimgroups ( off ) primgroupprefix ( _primgrp_ ) verbosegroups ( off ) suffixfirstgroup ( on ) createptstring ( off ) createprimstring ( off ) pathattrib ( objname ) pack ( off ) pivot ( centroid ) viewportlod ( full ) addpath ( on ) enable1 ( on ) objpath1 ( '`opinputpath("../..", 1)`' ) group1 ( "" ) expand1 ( off )
chlock Input_2 -*
chautoscope Input_2 -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 Input_2
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F off -c on -e on -b off Input_2
opexprlanguage -s hscript Input_2
opuserdata -n '___Version___' -v '20.5.522' Input_2

# Node Input_3 (Sop/object_merge)
opadd -e -n object_merge Input_3
oplocate -x 1.49875 -y 1.85155 Input_3
opspareds "" Input_3
opparm Input_3  numobj ( 1 )
opparm -V 20.5.522 Input_3 numobj ( 1 ) _separator ( ) xformtype ( object ) xformpath ( "" ) invertxform ( off ) createptgroups ( off ) ptgroupprefix ( _ptgrp_ ) createprimgroups ( off ) primgroupprefix ( _primgrp_ ) verbosegroups ( off ) suffixfirstgroup ( on ) createptstring ( off ) createprimstring ( off ) pathattrib ( objname ) pack ( off ) pivot ( centroid ) viewportlod ( full ) addpath ( on ) enable1 ( on ) objpath1 ( '`opinputpath("../..", 2)`' ) group1 ( "" ) expand1 ( off )
chlock Input_3 -*
chautoscope Input_3 -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 Input_3
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F off -c on -e on -b off Input_3
opexprlanguage -s hscript Input_3
opuserdata -n '___Version___' -v '20.5.522' Input_3

# Node Input_4 (Sop/object_merge)
opadd -e -n object_merge Input_4
oplocate -x 1.49875 -y 2.85155 Input_4
opspareds "" Input_4
opparm Input_4  numobj ( 1 )
opparm -V 20.5.522 Input_4 numobj ( 1 ) _separator ( ) xformtype ( object ) xformpath ( "" ) invertxform ( off ) createptgroups ( off ) ptgroupprefix ( _ptgrp_ ) createprimgroups ( off ) primgroupprefix ( _primgrp_ ) verbosegroups ( off ) suffixfirstgroup ( on ) createptstring ( off ) createprimstring ( off ) pathattrib ( objname ) pack ( off ) pivot ( centroid ) viewportlod ( full ) addpath ( on ) enable1 ( on ) objpath1 ( '`opinputpath("../..", 3)`' ) group1 ( "" ) expand1 ( off )
chlock Input_4 -*
chautoscope Input_4 -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 Input_4
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F off -c on -e on -b off Input_4
opexprlanguage -s hscript Input_4
opuserdata -n '___Version___' -v '20.5.522' Input_4

# Node Prev_Frame (Sop/dopimport::2.0)
opadd -e -n dopimport::2.0 Prev_Frame
oplocate -x -0.5 -y -0.14999999999999999 Prev_Frame
opspareds "" Prev_Frame
chblockbegin
chadd -t 0 0 Prev_Frame integrateovertime
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '1/$FPS' Prev_Frame/integrateovertime
chblockend
opparm -V 20.5.522 Prev_Frame doppath ( '`stamps("..", "DOPNET", "../..")`' ) objpattern ( '`stamps("..", "OBJID", arg(dopnodeobjs(".."),0))`' ) relpattern ( "" ) donotsim ( on ) folder_geometry ( 0 ) importstyle ( fetch ) spacer ( "" ) pointsquicksetup ( menu ) geodatapath ( '`stamps("..", "DATANAME", chs("../datapath"))`' ) pack ( off ) pivot ( centroid ) viewportlod ( full ) adddopobjectpath ( off ) adddopobjectname ( off ) dopobjectnameattrib ( dopobjectname ) adddopdatapath ( off ) dopdatapathattrib ( dopdatapath ) transferattributes ( "" ) transfergroups ( "" ) folder_xform ( 0 ) doposxform ( on ) dogeoxform ( on ) keepworldspacepos ( on ) pointvels ( none ) integrateovertime ( integrateovertime ) addtoexistingvel ( on )
chlock Prev_Frame -*
chautoscope Prev_Frame -*
opcolor -c 0.56499999761581421 0.49399998784065247 0.86299997568130493 Prev_Frame
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F off -c on -e on -b off Prev_Frame
opexprlanguage -s hscript Prev_Frame
opuserdata -n '___Version___' -v '20.5.522' Prev_Frame

# Node OUT (Sop/output)
opadd -e -n output OUT
oplocate -x 1.5 -y -6.1500000000000004 OUT
opspareds "" OUT
opparm -V 20.5.522 OUT outputidx ( 0 )
chlock OUT -*
chautoscope OUT -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off OUT
opexprlanguage -s hscript OUT
opuserdata -n '___Version___' -v '20.5.522' OUT

# Node attribwrangle1 (Sop/attribwrangle)
opadd -e -n attribwrangle attribwrangle1
oplocate -x 1.4970000000000001 -y -1.151 attribwrangle1
opspareds "" attribwrangle1
opparm attribwrangle1  bindings ( 0 ) groupbindings ( 0 )
opparm attribwrangle1 folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( point ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( 'int t = nearpoint(1, @P); vector objectflow = point(1, \'objectflow\', i@__id); @P += objectflow;' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto )
chlock attribwrangle1 -*
chautoscope attribwrangle1 -*
opset -d on -r on -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off attribwrangle1
opexprlanguage -s hscript attribwrangle1
opuserdata -n '___Version___' -v '' attribwrangle1
oporder -e Input_5 Input_6 Input_7 Input_8 Prev_Frame1 OUT1 Input_1 Input_2 Input_3 Input_4 Prev_Frame OUT attribwrangle1 
opcf ..

# End of editable subnode
opcf ../..


# Node attribwrangle4 (Sop/attribwrangle)
opadd -e -n attribwrangle attribwrangle4
oplocate -x -0.503 -y 1.849 attribwrangle4
opspareds "" attribwrangle4
opparm attribwrangle4  bindings ( 0 ) groupbindings ( 0 )
opparm attribwrangle4 folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( point ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( 'i@__id = @ptnum;' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto )
chlock attribwrangle4 -*
chautoscope attribwrangle4 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off attribwrangle4
opexprlanguage -s hscript attribwrangle4
opuserdata -n '___Version___' -v '' attribwrangle4

# Node trail2 (Sop/trail)
opadd -e -n trail trail2
oplocate -x -0.5 -y -0.18890000000000001 trail2
opspareds "" trail2
opparm -V 20.5.522 trail2 result ( velocity ) length ( 2 ) inc ( 1 ) cache ( 2 ) clear ( 0 ) evalframe ( off ) surftype ( quads ) close ( on ) velscale ( 1 ) velapproximation ( 'Backward Difference' ) computeaccel ( off ) accelattribute ( accel ) computeangular ( off ) matchbyattribute ( off ) attributetomatch ( id )
chlock trail2 -*
chautoscope trail2 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off trail2
opexprlanguage -s hscript trail2
opuserdata -n '___Version___' -v '20.5.522' trail2

# Node blast (Sop/attribwrangle)
opadd -e -n attribwrangle blast
oplocate -x 1.4970000000000001 -y -2.1899000000000002 blast
opspareds '    group {         name    "folder1"         label   "Code"          parm {             name    "group"             baseparm             label   "Group"             export  none             bindselector uvselect "Modify Attribs"                 "Select the geometry to affect and press Enter to complete."                 0 1 0xffffffff 0 grouptype 0         }         parm {             name    "grouptype"             baseparm             label   "Group Type"             export  none         }         parm {             name    "class"             baseparm             label   "Run Over"             export  none         }         parm {             name    "vex_numcount"             baseparm             label   "Number Count"             export  none         }         parm {             name    "vex_threadjobsize"             baseparm             label   "Thread Job Size"             export  none         }         groupsimple {             name    "folder_generatedparms_snippet"             label   "Generated Channel Parameters"             grouptag { "group_type" "simple" }             grouptag { "sidefx::look" "blank" }              parm {                 name    "Mode"                 label   "Mode"                 type    integer                 default { "0" }                 range   { 0 10 }             }         }          parm {             name    "snippet"             baseparm             label   "VEXpression"             export  all         }         parm {             name    "exportlist"             baseparm             label   "Attributes to Create"             export  none         }         parm {             name    "vex_strict"             baseparm             label   "Enforce Prototypes"             export  none         }     }      group {         name    "folder1_1"         label   "Bindings"          parm {             name    "autobind"             baseparm             label   "Autobind by Name"             export  none         }         multiparm {             name    "bindings"             label    "Number of Bindings"             baseparm             default 0             parmtag { "autoscope" "0000000000000000" }             parmtag { "multistartoffset" "1" }              parm {                 name    "bindname#"                 baseparm                 label   "Attribute Name"                 export  none             }             parm {                 name    "bindparm#"                 baseparm                 label   "VEX Parameter"                 export  none             }         }          parm {             name    "groupautobind"             baseparm             label   "Autobind Groups by Name"             export  none         }         multiparm {             name    "groupbindings"             label    "Group Bindings"             baseparm             default 0             parmtag { "autoscope" "0000000000000000" }             parmtag { "multistartoffset" "1" }              parm {                 name    "bindgroupname#"                 baseparm                 label   "Group Name"                 export  none             }             parm {                 name    "bindgroupparm#"                 baseparm                 label   "VEX Parameter"                 export  none             }         }          parm {             name    "vex_cwdpath"             baseparm             label   "Evaluation Node Path"             export  none         }         parm {             name    "vex_outputmask"             baseparm             label   "Export Parameters"             export  none         }         parm {             name    "vex_updatenmls"             baseparm             label   "Update Normals If Displaced"             export  none         }         parm {             name    "vex_matchattrib"             baseparm             label   "Attribute to Match"             export  none         }         parm {             name    "vex_inplace"             baseparm             label   "Compute Results In Place"             export  none         }         parm {             name    "vex_selectiongroup"             baseparm             label   "Output Selection Group"             export  none         }         parm {             name    "vex_precision"             baseparm             label   "VEX Precision"             export  none         }     }  ' blast
opparm blast  bindings ( 0 ) groupbindings ( 0 )
chblockbegin
chadd -t 0.58333333333333337 0.58333333333333337 blast Mode
chkey -t 0.58333333333333337 -v 0 -m 0 -a 0 -A 0 -T a  -F 'ch("../blast")' blast/Mode
chblockend
opparm blast folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( point ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( '/*\n// vectors\nvector e = normalize(minpos(1, @P) - @P); vector n = point(1, \'N\', nearpoint(1, @P)); vector v = normalize(point(1, \'v\', 0));\n// blast inside\nfloat alpha = degrees(acos(dot(n, e))); removepoint(0, alpha < ch(\'Beta\') ? @ptnum : -1);\n*/\n\n// blast zero magnitude\nint mode = chi(\'Mode\');\nif ( mode == 1 ) { removepoint(0, length(v@objectflow) == 0 ? @ptnum : -1); }' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto ) folder1 ( 0 0 ) folder_generatedparms_snippet ( 0 ) Mode ( Mode )
chlock blast -*
chautoscope blast -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off blast
opexprlanguage -s hscript blast
opuserdata -n '___Version___' -v '' blast

# Node switch1 (Sop/switch)
opadd -e -n switch switch1
oplocate -x 1.5049999999999999 -y -1.1939 switch1
opspareds "" switch1
chblockbegin
chadd -t 0.58333333333333337 0.58333333333333337 switch1 input
chkey -t 0.58333333333333337 -v 0 -m 0 -a 0 -A 0 -T a  -F 'ch("../sim")' switch1/input
chblockend
opparm -V 20.5.522 switch1 input ( input )
chlock switch1 -*
chautoscope switch1 -*
opcolor -c 0 0 0 switch1
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F off -c on -e on -b off switch1
opexprlanguage -s hscript switch1
opuserdata -n '___Version___' -v '20.5.522' switch1
opuserdata -n 'nodeshape' -v 'circle' switch1

# Node set (Sop/attribwrangle)
opadd -e -n attribwrangle set
oplocate -x -0.503 -y -1.2287999999999999 set
opspareds "" set
opparm set  bindings ( 0 ) groupbindings ( 0 )
opparm set folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( point ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( 'v@objectflow = v@v; removepointattrib(0, \'v\'); removepointattrib(0, \'__id\');' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto )
chlock set -*
chautoscope set -*
opset -d on -r on -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off set
opexprlanguage -s hscript set
opuserdata -n '___Version___' -v '' set
oporder -e output0 object_flow object_vectors trail1 attribpromote2 solver1 attribwrangle4 trail2 blast switch1 set 
opcf ..

# Node vector_project (Sop/subnet)
opadd -e -n subnet vector_project
oplocate -x 13.5 -y -0.14999999999999999 vector_project
opspareds '    groupsimple {         name    "Main"         label   "Vector Project"          parm {             name    "projectionmode"             label   "Mode"             type    ordinal             default { "0" }             menu {                 "0" "Tangent Plane"                 "1" "Onto"             }             parmtag { "script_callback_language" "python" }         }         parm {             name    "vector"             label   "Vector"             type    string             default { "" }             help    "The vector to be projected."             parmtag { "editor" "0" }             parmtag { "script_callback_language" "python" }         }         parm {             name    "target"             label   "Target"             type    string             default { "" }             help    "The reference vector."             parmtag { "script_callback_language" "python" }         }     }      parm {         name    "label1"         baseparm         label   "Input #1 Label"         invisible         export  all     }     parm {         name    "label2"         baseparm         label   "Input #2 Label"         invisible         export  all     }     parm {         name    "label3"         baseparm         label   "Input #3 Label"         invisible         export  all     }     parm {         name    "label4"         baseparm         label   "Input #4 Label"         invisible         export  all     } ' vector_project
opparm -V 20.5.522 vector_project label1 ( 'Sub-Network Input #1' ) label2 ( 'Sub-Network Input #2' ) label3 ( 'Sub-Network Input #3' ) label4 ( 'Sub-Network Input #4' ) Main ( 0 ) projectionmode ( 0 ) vector ( "" ) target ( "" )
chlock vector_project -*
chautoscope vector_project -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off vector_project
opexprlanguage -s hscript vector_project
opuserdata -n '___Version___' -v '20.5.522' vector_project
opcf vector_project

# Node output0 (Sop/output)
opadd -e -n output output0
oplocate -x -0.49840000000000001 -y 1.8471500000000001 output0
opspareds "" output0
opparm -V 20.5.522 output0 outputidx ( 0 )
chlock output0 -*
chautoscope output0 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off output0
opexprlanguage -s hscript output0
opuserdata -n '___Version___' -v '20.5.522' output0

# Node tangentplane (Sop/attribwrangle)
opadd -e -n attribwrangle tangentplane
oplocate -x -0.503 -y 3.8490000000000002 tangentplane
opspareds '    group {         name    "folder1"         label   "Code"          parm {             name    "group"             baseparm             label   "Group"             export  none             bindselector uvselect "Modify Attribs"                 "Select the geometry to affect and press Enter to complete."                 0 1 0xffffffff 0 grouptype 0         }         parm {             name    "grouptype"             baseparm             label   "Group Type"             export  none         }         parm {             name    "class"             baseparm             label   "Run Over"             export  none         }         parm {             name    "vex_numcount"             baseparm             label   "Number Count"             export  none         }         parm {             name    "vex_threadjobsize"             baseparm             label   "Thread Job Size"             export  none         }         groupsimple {             name    "folder_generatedparms_snippet"             label   "Generated Channel Parameters"             grouptag { "group_type" "simple" }             grouptag { "sidefx::look" "blank" }              parm {                 name    "Target"                 label   "Target"                 type    string                 default { "" }             }             parm {                 name    "Vector"                 label   "Vector"                 type    string                 default { "" }             }         }          parm {             name    "snippet"             baseparm             label   "VEXpression"             export  all         }         parm {             name    "exportlist"             baseparm             label   "Attributes to Create"             export  none         }         parm {             name    "vex_strict"             baseparm             label   "Enforce Prototypes"             export  none         }     }      group {         name    "folder1_1"         label   "Bindings"          parm {             name    "autobind"             baseparm             label   "Autobind by Name"             export  none         }         multiparm {             name    "bindings"             label    "Number of Bindings"             baseparm             default 0             parmtag { "autoscope" "0000000000000000" }             parmtag { "multistartoffset" "1" }              parm {                 name    "bindname#"                 baseparm                 label   "Attribute Name"                 export  none             }             parm {                 name    "bindparm#"                 baseparm                 label   "VEX Parameter"                 export  none             }         }          parm {             name    "groupautobind"             baseparm             label   "Autobind Groups by Name"             export  none         }         multiparm {             name    "groupbindings"             label    "Group Bindings"             baseparm             default 0             parmtag { "autoscope" "0000000000000000" }             parmtag { "multistartoffset" "1" }              parm {                 name    "bindgroupname#"                 baseparm                 label   "Group Name"                 export  none             }             parm {                 name    "bindgroupparm#"                 baseparm                 label   "VEX Parameter"                 export  none             }         }          parm {             name    "vex_cwdpath"             baseparm             label   "Evaluation Node Path"             export  none         }         parm {             name    "vex_outputmask"             baseparm             label   "Export Parameters"             export  none         }         parm {             name    "vex_updatenmls"             baseparm             label   "Update Normals If Displaced"             export  none         }         parm {             name    "vex_matchattrib"             baseparm             label   "Attribute to Match"             export  none         }         parm {             name    "vex_inplace"             baseparm             label   "Compute Results In Place"             export  none         }         parm {             name    "vex_selectiongroup"             baseparm             label   "Output Selection Group"             export  none         }         parm {             name    "vex_precision"             baseparm             label   "VEX Precision"             export  none         }     }  ' tangentplane
opparm tangentplane  bindings ( 0 ) groupbindings ( 0 )
opparm tangentplane folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( point ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( '//\nstring aname = chs(\'Target\'); string bname = chs(\'Vector\');\n// error handle\nint hasa = haspointattrib(0, aname); int hasb = haspointattrib(0, bname);\nif ( hasa == 0 ) error(\'Input does not have the vector A\');\nif ( hasb == 0 ) error(\'Input does not have the vector B\');\n\n//\nvector a = normalize(point(0, aname, @ptnum)); vector b = normalize(point(0, bname, @ptnum));\nvector c = normalize(b - ((dot(b, a)) * a));\n\nsetpointattrib(0, bname, @ptnum, c, \'set\');\n   ' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto ) folder1 ( 0 0 ) folder_generatedparms_snippet ( 0 ) Target ( '`chs("../target")`' ) Vector ( '`chs("../vector")`' )
chlock tangentplane -*
chautoscope tangentplane -*
opset -d on -r on -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off tangentplane
opexprlanguage -s hscript tangentplane
opuserdata -n '___Version___' -v '' tangentplane

# Node onto (Sop/attribwrangle)
opadd -e -n attribwrangle onto
oplocate -x 1.4970000000000001 -y 3.8490000000000002 onto
opspareds '    group {         name    "folder1"         label   "Code"          parm {             name    "group"             baseparm             label   "Group"             export  none             bindselector uvselect "Modify Attribs"                 "Select the geometry to affect and press Enter to complete."                 0 1 0xffffffff 0 grouptype 0         }         parm {             name    "grouptype"             baseparm             label   "Group Type"             export  none         }         parm {             name    "class"             baseparm             label   "Run Over"             export  none         }         parm {             name    "vex_numcount"             baseparm             label   "Number Count"             export  none         }         parm {             name    "vex_threadjobsize"             baseparm             label   "Thread Job Size"             export  none         }         groupsimple {             name    "folder_generatedparms_snippet"             label   "Generated Channel Parameters"             grouptag { "sidefx::look" "blank" }              parm {                 name    "Target"                 label   "Target"                 type    string                 default { "" }             }             parm {                 name    "Vector"                 label   "Vector"                 type    string                 default { "" }             }         }          parm {             name    "snippet"             baseparm             label   "VEXpression"             export  all         }         parm {             name    "exportlist"             baseparm             label   "Attributes to Create"             export  none         }         parm {             name    "vex_strict"             baseparm             label   "Enforce Prototypes"             export  none         }     }      group {         name    "folder1_1"         label   "Bindings"          parm {             name    "autobind"             baseparm             label   "Autobind by Name"             export  none         }         multiparm {             name    "bindings"             label    "Number of Bindings"             baseparm             default 0             parmtag { "autoscope" "0000000000000000" }             parmtag { "multistartoffset" "1" }              parm {                 name    "bindname#"                 baseparm                 label   "Attribute Name"                 export  none             }             parm {                 name    "bindparm#"                 baseparm                 label   "VEX Parameter"                 export  none             }         }          parm {             name    "groupautobind"             baseparm             label   "Autobind Groups by Name"             export  none         }         multiparm {             name    "groupbindings"             label    "Group Bindings"             baseparm             default 0             parmtag { "autoscope" "0000000000000000" }             parmtag { "multistartoffset" "1" }              parm {                 name    "bindgroupname#"                 baseparm                 label   "Group Name"                 export  none             }             parm {                 name    "bindgroupparm#"                 baseparm                 label   "VEX Parameter"                 export  none             }         }          parm {             name    "vex_cwdpath"             baseparm             label   "Evaluation Node Path"             export  none         }         parm {             name    "vex_outputmask"             baseparm             label   "Export Parameters"             export  none         }         parm {             name    "vex_updatenmls"             baseparm             label   "Update Normals If Displaced"             export  none         }         parm {             name    "vex_matchattrib"             baseparm             label   "Attribute to Match"             export  none         }         parm {             name    "vex_inplace"             baseparm             label   "Compute Results In Place"             export  none         }         parm {             name    "vex_selectiongroup"             baseparm             label   "Output Selection Group"             export  none         }         parm {             name    "vex_precision"             baseparm             label   "VEX Precision"             export  none         }     }  ' onto
opparm onto  bindings ( 0 ) groupbindings ( 0 )
opparm onto folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( point ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( '//\nstring aname = chs(\'Target\'); string bname = chs(\'Vector\');\n// error handle\nint hasa = haspointattrib(0, aname); int hasb = haspointattrib(0, bname);\nif ( hasa == 0 ) error(\'Input does not have the vector A\');\nif ( hasb == 0 ) error(\'Input does not have the vector B\');\n\n//\nvector a = point(0, aname, @ptnum); vector b = point(0, bname, @ptnum);\n\n// Calculate dot product of a and b\nfloat d = dot(b, a);\n\n// Calculate the magnitude of a\nfloat a_magnitude = length(a);\n\n// Normalize d by dividing by the magnitude of a\nd = d / a_magnitude;\n\n// set projection\nvector q = d * normalize(a);\nsetpointattrib(0, bname, @ptnum, q, \'set\');\n    ' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto ) folder1 ( 0 0 ) folder_generatedparms_snippet ( 0 ) Target ( '`chs("../target")`' ) Vector ( '`chs("../vector")`' )
chlock onto -*
chautoscope onto -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off onto
opexprlanguage -s hscript onto
opuserdata -n '___Version___' -v '' onto

# Node switch1 (Sop/switch)
opadd -e -n switch switch1
oplocate -x -0.495 -y 2.8450000000000002 switch1
opspareds "" switch1
chblockbegin
chadd -t 0 0 switch1 input
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F 'ch("../projectionmode")' switch1/input
chblockend
opparm -V 20.5.522 switch1 input ( input )
chlock switch1 -*
chautoscope switch1 -*
opcolor -c 0 0 0 switch1
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F off -c on -e on -b off switch1
opexprlanguage -s hscript switch1
opuserdata -n '___Version___' -v '20.5.522' switch1
opuserdata -n 'nodeshape' -v 'circle' switch1
oporder -e output0 tangentplane onto switch1 
opcf ..

# Node array_remove_duplicate (Sop/subnet)
opadd -e -n subnet array_remove_duplicate
oplocate -x 17.5 -y 2.8499999940395355 array_remove_duplicate
opspareds '    groupsimple {         name    "main"         label   "Array Remove Duplicate"         grouptag { "group_type" "simple" }          parm {             name    "runover"             label   "Run Over"             type    ordinal             default { "0" }             menu {                 "0" "Detail"                 "1" "Primitives"                 "2" "Points"             }             parmtag { "script_callback_language" "python" }         }         parm {             name    "datatype"             label   "Data Type"             type    ordinal             default { "0" }             menu {                 "0" "Integer      "                 "1" "Float"                 "2" "String"             }             parmtag { "script_callback_language" "python" }         }         parm {             name    "attribute"             label   "Attribute"             type    string             default { "" }             parmtag { "script_callback_language" "python" }         }     }      group {         name    "folder0"         label   "Folder Name"         invisibletab          parm {             name    "label1"             baseparm             label   "Input #1 Label"             export  dialog         }         parm {             name    "label2"             baseparm             label   "Input #2 Label"             export  dialog         }         parm {             name    "label3"             baseparm             label   "Input #3 Label"             export  dialog         }         parm {             name    "label4"             baseparm             label   "Input #4 Label"             export  dialog         }     }  ' array_remove_duplicate
opparm -V 20.5.522 array_remove_duplicate label1 ( 'Sub-Network Input #1' ) label2 ( 'Sub-Network Input #2' ) label3 ( 'Sub-Network Input #3' ) label4 ( 'Sub-Network Input #4' ) main ( 0 ) runover ( 0 ) datatype ( 0 ) attribute ( "" ) folder0 ( 0 )
chlock array_remove_duplicate -*
chautoscope array_remove_duplicate -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off array_remove_duplicate
opexprlanguage -s hscript array_remove_duplicate
opcf array_remove_duplicate

# Node detail_int (Sop/attribwrangle)
opadd -e -n attribwrangle detail_int
oplocate -x -0.5 -y 8.8499999999999996 detail_int
opspareds '    group {         name    "folder1"         label   "Code"          parm {             name    "group"             baseparm             label   "Group"             export  none             bindselector uvselect "Modify Attribs"                 "Select the geometry to affect and press Enter to complete."                 0 1 0xffffffff 0 grouptype 0         }         parm {             name    "grouptype"             baseparm             label   "Group Type"             export  none         }         parm {             name    "class"             baseparm             label   "Run Over"             export  none         }         parm {             name    "vex_numcount"             baseparm             label   "Number Count"             export  none         }         parm {             name    "vex_threadjobsize"             baseparm             label   "Thread Job Size"             export  none         }         groupsimple {             name    "folder_generatedparms_snippet"             label   "Generated Channel Parameters"             grouptag { "group_type" "simple" }             grouptag { "sidefx::look" "blank" }              parm {                 name    "attribute"                 label   "Attribute"                 type    string                 default { "" }             }         }          parm {             name    "snippet"             baseparm             label   "VEXpression"             export  all         }         parm {             name    "exportlist"             baseparm             label   "Attributes to Create"             export  none         }         parm {             name    "vex_strict"             baseparm             label   "Enforce Prototypes"             export  none         }     }      group {         name    "folder1_1"         label   "Bindings"          parm {             name    "autobind"             baseparm             label   "Autobind by Name"             export  none         }         multiparm {             name    "bindings"             label    "Number of Bindings"             baseparm             default 0             parmtag { "autoscope" "0000000000000000" }             parmtag { "multistartoffset" "1" }              parm {                 name    "bindname#"                 baseparm                 label   "Attribute Name"                 export  none             }             parm {                 name    "bindparm#"                 baseparm                 label   "VEX Parameter"                 export  none             }         }          parm {             name    "groupautobind"             baseparm             label   "Autobind Groups by Name"             export  none         }         multiparm {             name    "groupbindings"             label    "Group Bindings"             baseparm             default 0             parmtag { "autoscope" "0000000000000000" }             parmtag { "multistartoffset" "1" }              parm {                 name    "bindgroupname#"                 baseparm                 label   "Group Name"                 export  none             }             parm {                 name    "bindgroupparm#"                 baseparm                 label   "VEX Parameter"                 export  none             }         }          parm {             name    "vex_cwdpath"             baseparm             label   "Evaluation Node Path"             export  none         }         parm {             name    "vex_outputmask"             baseparm             label   "Export Parameters"             export  none         }         parm {             name    "vex_updatenmls"             baseparm             label   "Update Normals If Displaced"             export  none         }         parm {             name    "vex_matchattrib"             baseparm             label   "Attribute to Match"             export  none         }         parm {             name    "vex_inplace"             baseparm             label   "Compute Results In Place"             export  none         }         parm {             name    "vex_selectiongroup"             baseparm             label   "Output Selection Group"             export  none         }         parm {             name    "vex_precision"             baseparm             label   "VEX Precision"             export  none         }     }  ' detail_int
opparm detail_int  bindings ( 0 ) groupbindings ( 0 )
chblockbegin
chadd -t 0 0 detail_int attribute
chkey -t 0 -v 0 -m 0 -a 0.33333333333333331 -A 0.33333333333333331 -T a  -o mM  -F 'chs("../attribute")' detail_int/attribute
chblockend
opparm detail_int folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( detail ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( '//\nstring name = chs(\'attribute\'); \n\n//\nhasdetailattrib(0, name)  != 1 ? error(\'Input does not have a @\' + name + \' attribute.\') : -1;\n\n//\nint arr [] = detail(0, name); int sortasc [] = sort(arr); i[]@sorted;\n\n//\nforeach( int i; int u; sortasc )\n{\n    int current = getcomp(sortasc, i);\n    int previou = getcomp(sortasc, i + 1);\n    if (current != previou ) append(@sorted, current);\n}\n\nsetdetailattrib(0, name, @sorted, \'set\'); removedetailattrib(0, \'sorted\');\n\n\n\n\n\n\n\n\n\n' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto ) folder1 ( 0 0 ) folder_generatedparms_snippet ( 0 ) attribute ( attribute )
chlock detail_int -*
chautoscope detail_int -* +attribute
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off detail_int
opexprlanguage -s hscript detail_int
opuserdata -n '___Version___' -v '' detail_int

# Node detail_float (Sop/attribwrangle)
opadd -e -n attribwrangle detail_float
oplocate -x 1.5 -y 7.8499999999999996 detail_float
opspareds '    group {         name    "folder1"         label   "Code"          parm {             name    "group"             baseparm             label   "Group"             export  none             bindselector uvselect "Modify Attribs"                 "Select the geometry to affect and press Enter to complete."                 0 1 0xffffffff 0 grouptype 0         }         parm {             name    "grouptype"             baseparm             label   "Group Type"             export  none         }         parm {             name    "class"             baseparm             label   "Run Over"             export  none         }         parm {             name    "vex_numcount"             baseparm             label   "Number Count"             export  none         }         parm {             name    "vex_threadjobsize"             baseparm             label   "Thread Job Size"             export  none         }         groupsimple {             name    "folder_generatedparms_snippet"             label   "Generated Channel Parameters"             grouptag { "group_type" "simple" }             grouptag { "sidefx::look" "blank" }              parm {                 name    "attribute"                 label   "Attribute"                 type    string                 default { "" }             }         }          parm {             name    "snippet"             baseparm             label   "VEXpression"             export  all         }         parm {             name    "exportlist"             baseparm             label   "Attributes to Create"             export  none         }         parm {             name    "vex_strict"             baseparm             label   "Enforce Prototypes"             export  none         }     }      group {         name    "folder1_1"         label   "Bindings"          parm {             name    "autobind"             baseparm             label   "Autobind by Name"             export  none         }         multiparm {             name    "bindings"             label    "Number of Bindings"             baseparm             default 0             parmtag { "autoscope" "0000000000000000" }             parmtag { "multistartoffset" "1" }              parm {                 name    "bindname#"                 baseparm                 label   "Attribute Name"                 export  none             }             parm {                 name    "bindparm#"                 baseparm                 label   "VEX Parameter"                 export  none             }         }          parm {             name    "groupautobind"             baseparm             label   "Autobind Groups by Name"             export  none         }         multiparm {             name    "groupbindings"             label    "Group Bindings"             baseparm             default 0             parmtag { "autoscope" "0000000000000000" }             parmtag { "multistartoffset" "1" }              parm {                 name    "bindgroupname#"                 baseparm                 label   "Group Name"                 export  none             }             parm {                 name    "bindgroupparm#"                 baseparm                 label   "VEX Parameter"                 export  none             }         }          parm {             name    "vex_cwdpath"             baseparm             label   "Evaluation Node Path"             export  none         }         parm {             name    "vex_outputmask"             baseparm             label   "Export Parameters"             export  none         }         parm {             name    "vex_updatenmls"             baseparm             label   "Update Normals If Displaced"             export  none         }         parm {             name    "vex_matchattrib"             baseparm             label   "Attribute to Match"             export  none         }         parm {             name    "vex_inplace"             baseparm             label   "Compute Results In Place"             export  none         }         parm {             name    "vex_selectiongroup"             baseparm             label   "Output Selection Group"             export  none         }         parm {             name    "vex_precision"             baseparm             label   "VEX Precision"             export  none         }     }  ' detail_float
opparm detail_float  bindings ( 0 ) groupbindings ( 0 )
chblockbegin
chadd -t 0 0 detail_float attribute
chkey -t 0 -v 0 -m 0 -a 0.33333333333333331 -A 0.33333333333333331 -T a  -o mM  -F 'chs("../attribute")' detail_float/attribute
chblockend
opparm detail_float folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( detail ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( '//\nstring name = chs(\'attribute\'); \n\n//\nhasdetailattrib(0, name)  != 1 ? error(\'Input does not have a @\' + name + \' attribute.\') : -1;\n\n//\nfloat arr [] = detail(0, name); float sortasc [] = sort(arr); f[]@sorted;\n\n//\nforeach( int i; float u; sortasc )\n{\n    float current = getcomp(sortasc, i);\n    float previou = getcomp(sortasc, i + 1);\n    if (current != previou ) append(@sorted, current);\n}\n\nsetdetailattrib(0, name, @sorted, \'set\'); removedetailattrib(0, \'sorted\');\n\n\n\n\n\n\n\n\n\n' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto ) folder1 ( 0 0 ) folder_generatedparms_snippet ( 0 ) attribute ( attribute )
chlock detail_float -*
chautoscope detail_float -* +attribute
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off detail_float
opexprlanguage -s hscript detail_float
opuserdata -n '___Version___' -v '' detail_float

# Node detail_string (Sop/attribwrangle)
opadd -e -n attribwrangle detail_string
oplocate -x 3.5 -y 6.8499999999999996 detail_string
opspareds '    group {         name    "folder1"         label   "Code"          parm {             name    "group"             baseparm             label   "Group"             export  none             bindselector uvselect "Modify Attribs"                 "Select the geometry to affect and press Enter to complete."                 0 1 0xffffffff 0 grouptype 0         }         parm {             name    "grouptype"             baseparm             label   "Group Type"             export  none         }         parm {             name    "class"             baseparm             label   "Run Over"             export  none         }         parm {             name    "vex_numcount"             baseparm             label   "Number Count"             export  none         }         parm {             name    "vex_threadjobsize"             baseparm             label   "Thread Job Size"             export  none         }         groupsimple {             name    "folder_generatedparms_snippet"             label   "Generated Channel Parameters"             grouptag { "group_type" "simple" }             grouptag { "sidefx::look" "blank" }              parm {                 name    "attribute"                 label   "Attribute"                 type    string                 default { "" }             }         }          parm {             name    "snippet"             baseparm             label   "VEXpression"             export  all         }         parm {             name    "exportlist"             baseparm             label   "Attributes to Create"             export  none         }         parm {             name    "vex_strict"             baseparm             label   "Enforce Prototypes"             export  none         }     }      group {         name    "folder1_1"         label   "Bindings"          parm {             name    "autobind"             baseparm             label   "Autobind by Name"             export  none         }         multiparm {             name    "bindings"             label    "Number of Bindings"             baseparm             default 0             parmtag { "autoscope" "0000000000000000" }             parmtag { "multistartoffset" "1" }              parm {                 name    "bindname#"                 baseparm                 label   "Attribute Name"                 export  none             }             parm {                 name    "bindparm#"                 baseparm                 label   "VEX Parameter"                 export  none             }         }          parm {             name    "groupautobind"             baseparm             label   "Autobind Groups by Name"             export  none         }         multiparm {             name    "groupbindings"             label    "Group Bindings"             baseparm             default 0             parmtag { "autoscope" "0000000000000000" }             parmtag { "multistartoffset" "1" }              parm {                 name    "bindgroupname#"                 baseparm                 label   "Group Name"                 export  none             }             parm {                 name    "bindgroupparm#"                 baseparm                 label   "VEX Parameter"                 export  none             }         }          parm {             name    "vex_cwdpath"             baseparm             label   "Evaluation Node Path"             export  none         }         parm {             name    "vex_outputmask"             baseparm             label   "Export Parameters"             export  none         }         parm {             name    "vex_updatenmls"             baseparm             label   "Update Normals If Displaced"             export  none         }         parm {             name    "vex_matchattrib"             baseparm             label   "Attribute to Match"             export  none         }         parm {             name    "vex_inplace"             baseparm             label   "Compute Results In Place"             export  none         }         parm {             name    "vex_selectiongroup"             baseparm             label   "Output Selection Group"             export  none         }         parm {             name    "vex_precision"             baseparm             label   "VEX Precision"             export  none         }     }  ' detail_string
opparm detail_string  bindings ( 0 ) groupbindings ( 0 )
chblockbegin
chadd -t 0 0 detail_string attribute
chkey -t 0 -v 0 -m 0 -a 0.33333333333333331 -A 0.33333333333333331 -T a  -o mM  -F 'chs("../attribute")' detail_string/attribute
chblockend
opparm detail_string folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( detail ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( '//\nstring name = chs(\'attribute\'); \n\n//\nhasdetailattrib(0, name)  != 1 ? error(\'Input does not have a @\' + name + \' attribute.\') : -1;\n\n//\nstring arr [] = detail(0, name); string sortasc [] = sort(arr); s[]@sorted;\n\n//\nforeach( int i; string u; sortasc )\n{\n    string current = getcomp(sortasc, i);\n    string previou = getcomp(sortasc, i + 1);\n    if (current != previou ) append(@sorted, current);\n}\n\nsetdetailattrib(0, name, @sorted, \'set\'); removedetailattrib(0, \'sorted\');\n\n\n\n\n\n\n\n\n\n' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto ) folder1 ( 0 0 ) folder_generatedparms_snippet ( 0 ) attribute ( attribute )
chlock detail_string -*
chautoscope detail_string -* +attribute
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off detail_string
opexprlanguage -s hscript detail_string
opuserdata -n '___Version___' -v '' detail_string

# Node prim_int (Sop/attribwrangle)
opadd -e -n attribwrangle prim_int
oplocate -x 5.5 -y 8.8499999999999996 prim_int
opspareds '    group {         name    "folder1"         label   "Code"          parm {             name    "group"             baseparm             label   "Group"             export  none             bindselector uvselect "Modify Attribs"                 "Select the geometry to affect and press Enter to complete."                 0 1 0xffffffff 0 grouptype 0         }         parm {             name    "grouptype"             baseparm             label   "Group Type"             export  none         }         parm {             name    "class"             baseparm             label   "Run Over"             export  none         }         parm {             name    "vex_numcount"             baseparm             label   "Number Count"             export  none         }         parm {             name    "vex_threadjobsize"             baseparm             label   "Thread Job Size"             export  none         }         groupsimple {             name    "folder_generatedparms_snippet"             label   "Generated Channel Parameters"             grouptag { "group_type" "simple" }             grouptag { "sidefx::look" "blank" }              parm {                 name    "attribute"                 label   "Attribute"                 type    string                 default { "" }             }         }          parm {             name    "snippet"             baseparm             label   "VEXpression"             export  all         }         parm {             name    "exportlist"             baseparm             label   "Attributes to Create"             export  none         }         parm {             name    "vex_strict"             baseparm             label   "Enforce Prototypes"             export  none         }     }      group {         name    "folder1_1"         label   "Bindings"          parm {             name    "autobind"             baseparm             label   "Autobind by Name"             export  none         }         multiparm {             name    "bindings"             label    "Number of Bindings"             baseparm             default 0             parmtag { "autoscope" "0000000000000000" }             parmtag { "multistartoffset" "1" }              parm {                 name    "bindname#"                 baseparm                 label   "Attribute Name"                 export  none             }             parm {                 name    "bindparm#"                 baseparm                 label   "VEX Parameter"                 export  none             }         }          parm {             name    "groupautobind"             baseparm             label   "Autobind Groups by Name"             export  none         }         multiparm {             name    "groupbindings"             label    "Group Bindings"             baseparm             default 0             parmtag { "autoscope" "0000000000000000" }             parmtag { "multistartoffset" "1" }              parm {                 name    "bindgroupname#"                 baseparm                 label   "Group Name"                 export  none             }             parm {                 name    "bindgroupparm#"                 baseparm                 label   "VEX Parameter"                 export  none             }         }          parm {             name    "vex_cwdpath"             baseparm             label   "Evaluation Node Path"             export  none         }         parm {             name    "vex_outputmask"             baseparm             label   "Export Parameters"             export  none         }         parm {             name    "vex_updatenmls"             baseparm             label   "Update Normals If Displaced"             export  none         }         parm {             name    "vex_matchattrib"             baseparm             label   "Attribute to Match"             export  none         }         parm {             name    "vex_inplace"             baseparm             label   "Compute Results In Place"             export  none         }         parm {             name    "vex_selectiongroup"             baseparm             label   "Output Selection Group"             export  none         }         parm {             name    "vex_precision"             baseparm             label   "VEX Precision"             export  none         }     }  ' prim_int
opparm prim_int  bindings ( 0 ) groupbindings ( 0 )
chblockbegin
chadd -t 0 0 prim_int attribute
chkey -t 0 -v 0 -m 0 -a 0.33333333333333331 -A 0.33333333333333331 -T a  -o mM  -F 'chs("../attribute")' prim_int/attribute
chblockend
opparm prim_int folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( primitive ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( '//\nstring name = chs(\'attribute\'); \n\n//\nhasprimattrib(0, name)  != 1 ? error(\'Input does not have a @\' + name + \' attribute.\') : -1;\n\n//\nint arr [] = prim(0, name, @primnum); int sortasc [] = sort(arr); i[]@sorted;\n\n//\nforeach( int i; int u; sortasc )\n{\n    int current = getcomp(sortasc, i);\n    int previou = getcomp(sortasc, i + 1);\n    if (current != previou ) append(@sorted, current);\n}\n\nsetprimattrib(0, name, @primnum, @sorted, \'set\'); removeprimattrib(0, \'sorted\');\n\n\n\n\n\n\n\n\n\n' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto ) folder1 ( 0 0 ) folder_generatedparms_snippet ( 0 ) attribute ( attribute )
chlock prim_int -*
chautoscope prim_int -* +attribute
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off prim_int
opexprlanguage -s hscript prim_int
opuserdata -n '___Version___' -v '' prim_int

# Node prim_float (Sop/attribwrangle)
opadd -e -n attribwrangle prim_float
oplocate -x 7.5 -y 7.8499999999999996 prim_float
opspareds '    group {         name    "folder1"         label   "Code"          parm {             name    "group"             baseparm             label   "Group"             export  none             bindselector uvselect "Modify Attribs"                 "Select the geometry to affect and press Enter to complete."                 0 1 0xffffffff 0 grouptype 0         }         parm {             name    "grouptype"             baseparm             label   "Group Type"             export  none         }         parm {             name    "class"             baseparm             label   "Run Over"             export  none         }         parm {             name    "vex_numcount"             baseparm             label   "Number Count"             export  none         }         parm {             name    "vex_threadjobsize"             baseparm             label   "Thread Job Size"             export  none         }         groupsimple {             name    "folder_generatedparms_snippet"             label   "Generated Channel Parameters"             grouptag { "group_type" "simple" }             grouptag { "sidefx::look" "blank" }              parm {                 name    "attribute"                 label   "Attribute"                 type    string                 default { "" }             }         }          parm {             name    "snippet"             baseparm             label   "VEXpression"             export  all         }         parm {             name    "exportlist"             baseparm             label   "Attributes to Create"             export  none         }         parm {             name    "vex_strict"             baseparm             label   "Enforce Prototypes"             export  none         }     }      group {         name    "folder1_1"         label   "Bindings"          parm {             name    "autobind"             baseparm             label   "Autobind by Name"             export  none         }         multiparm {             name    "bindings"             label    "Number of Bindings"             baseparm             default 0             parmtag { "autoscope" "0000000000000000" }             parmtag { "multistartoffset" "1" }              parm {                 name    "bindname#"                 baseparm                 label   "Attribute Name"                 export  none             }             parm {                 name    "bindparm#"                 baseparm                 label   "VEX Parameter"                 export  none             }         }          parm {             name    "groupautobind"             baseparm             label   "Autobind Groups by Name"             export  none         }         multiparm {             name    "groupbindings"             label    "Group Bindings"             baseparm             default 0             parmtag { "autoscope" "0000000000000000" }             parmtag { "multistartoffset" "1" }              parm {                 name    "bindgroupname#"                 baseparm                 label   "Group Name"                 export  none             }             parm {                 name    "bindgroupparm#"                 baseparm                 label   "VEX Parameter"                 export  none             }         }          parm {             name    "vex_cwdpath"             baseparm             label   "Evaluation Node Path"             export  none         }         parm {             name    "vex_outputmask"             baseparm             label   "Export Parameters"             export  none         }         parm {             name    "vex_updatenmls"             baseparm             label   "Update Normals If Displaced"             export  none         }         parm {             name    "vex_matchattrib"             baseparm             label   "Attribute to Match"             export  none         }         parm {             name    "vex_inplace"             baseparm             label   "Compute Results In Place"             export  none         }         parm {             name    "vex_selectiongroup"             baseparm             label   "Output Selection Group"             export  none         }         parm {             name    "vex_precision"             baseparm             label   "VEX Precision"             export  none         }     }  ' prim_float
opparm prim_float  bindings ( 0 ) groupbindings ( 0 )
chblockbegin
chadd -t 0 0 prim_float attribute
chkey -t 0 -v 0 -m 0 -a 0.33333333333333331 -A 0.33333333333333331 -T a  -o mM  -F 'chs("../attribute")' prim_float/attribute
chblockend
opparm prim_float folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( primitive ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( '//\nstring name = chs(\'attribute\'); \n\n//\nhasprimattrib(0, name)  != 1 ? error(\'Input does not have a @\' + name + \' attribute.\') : -1;\n\n//\nfloat arr [] = prim(0, name, @primnum); float sortasc [] = sort(arr); f[]@sorted;\n\n//\nforeach( int i; float u; sortasc )\n{\n    float current = getcomp(sortasc, i);\n    float previou = getcomp(sortasc, i + 1);\n    if (current != previou ) append(@sorted, current);\n}\n\nsetprimattrib(0, name, @primnum, @sorted, \'set\'); removeprimattrib(0, \'sorted\');\n\n\n\n\n\n\n\n\n\n' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto ) folder1 ( 0 0 ) folder_generatedparms_snippet ( 0 ) attribute ( attribute )
chlock prim_float -*
chautoscope prim_float -* +attribute
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off prim_float
opexprlanguage -s hscript prim_float
opuserdata -n '___Version___' -v '' prim_float

# Node prim_string (Sop/attribwrangle)
opadd -e -n attribwrangle prim_string
oplocate -x 9.5 -y 6.8499999999999996 prim_string
opspareds '    group {         name    "folder1"         label   "Code"          parm {             name    "group"             baseparm             label   "Group"             export  none             bindselector uvselect "Modify Attribs"                 "Select the geometry to affect and press Enter to complete."                 0 1 0xffffffff 0 grouptype 0         }         parm {             name    "grouptype"             baseparm             label   "Group Type"             export  none         }         parm {             name    "class"             baseparm             label   "Run Over"             export  none         }         parm {             name    "vex_numcount"             baseparm             label   "Number Count"             export  none         }         parm {             name    "vex_threadjobsize"             baseparm             label   "Thread Job Size"             export  none         }         groupsimple {             name    "folder_generatedparms_snippet"             label   "Generated Channel Parameters"             grouptag { "group_type" "simple" }             grouptag { "sidefx::look" "blank" }              parm {                 name    "attribute"                 label   "Attribute"                 type    string                 default { "" }             }         }          parm {             name    "snippet"             baseparm             label   "VEXpression"             export  all         }         parm {             name    "exportlist"             baseparm             label   "Attributes to Create"             export  none         }         parm {             name    "vex_strict"             baseparm             label   "Enforce Prototypes"             export  none         }     }      group {         name    "folder1_1"         label   "Bindings"          parm {             name    "autobind"             baseparm             label   "Autobind by Name"             export  none         }         multiparm {             name    "bindings"             label    "Number of Bindings"             baseparm             default 0             parmtag { "autoscope" "0000000000000000" }             parmtag { "multistartoffset" "1" }              parm {                 name    "bindname#"                 baseparm                 label   "Attribute Name"                 export  none             }             parm {                 name    "bindparm#"                 baseparm                 label   "VEX Parameter"                 export  none             }         }          parm {             name    "groupautobind"             baseparm             label   "Autobind Groups by Name"             export  none         }         multiparm {             name    "groupbindings"             label    "Group Bindings"             baseparm             default 0             parmtag { "autoscope" "0000000000000000" }             parmtag { "multistartoffset" "1" }              parm {                 name    "bindgroupname#"                 baseparm                 label   "Group Name"                 export  none             }             parm {                 name    "bindgroupparm#"                 baseparm                 label   "VEX Parameter"                 export  none             }         }          parm {             name    "vex_cwdpath"             baseparm             label   "Evaluation Node Path"             export  none         }         parm {             name    "vex_outputmask"             baseparm             label   "Export Parameters"             export  none         }         parm {             name    "vex_updatenmls"             baseparm             label   "Update Normals If Displaced"             export  none         }         parm {             name    "vex_matchattrib"             baseparm             label   "Attribute to Match"             export  none         }         parm {             name    "vex_inplace"             baseparm             label   "Compute Results In Place"             export  none         }         parm {             name    "vex_selectiongroup"             baseparm             label   "Output Selection Group"             export  none         }         parm {             name    "vex_precision"             baseparm             label   "VEX Precision"             export  none         }     }  ' prim_string
opparm prim_string  bindings ( 0 ) groupbindings ( 0 )
chblockbegin
chadd -t 0 0 prim_string attribute
chkey -t 0 -v 0 -m 0 -a 0.33333333333333331 -A 0.33333333333333331 -T a  -o mM  -F 'chs("../attribute")' prim_string/attribute
chblockend
opparm prim_string folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( primitive ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( '//\nstring name = chs(\'attribute\'); \n\n//\nhasprimattrib(0, name)  != 1 ? error(\'Input does not have a @\' + name + \' attribute.\') : -1;\n\n//\nstring arr [] = prim(0, name, @primnum); string sortasc [] = sort(arr); s[]@sorted;\n\n//\nforeach( int i; string u; sortasc )\n{\n    string current = getcomp(sortasc, i);\n    string previou = getcomp(sortasc, i + 1);\n    if (current != previou ) append(@sorted, current);\n}\n\nsetprimattrib(0, name, @primnum, @sorted, \'set\'); removeprimattrib(0, \'sorted\');\n\n\n\n\n\n\n\n\n\n' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto ) folder1 ( 0 0 ) folder_generatedparms_snippet ( 0 ) attribute ( attribute )
chlock prim_string -*
chautoscope prim_string -* +attribute
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off prim_string
opexprlanguage -s hscript prim_string
opuserdata -n '___Version___' -v '' prim_string

# Node point_int (Sop/attribwrangle)
opadd -e -n attribwrangle point_int
oplocate -x 11.5 -y 8.8499999999999996 point_int
opspareds '    group {         name    "folder1"         label   "Code"          parm {             name    "group"             baseparm             label   "Group"             export  none             bindselector uvselect "Modify Attribs"                 "Select the geometry to affect and press Enter to complete."                 0 1 0xffffffff 0 grouptype 0         }         parm {             name    "grouptype"             baseparm             label   "Group Type"             export  none         }         parm {             name    "class"             baseparm             label   "Run Over"             export  none         }         parm {             name    "vex_numcount"             baseparm             label   "Number Count"             export  none         }         parm {             name    "vex_threadjobsize"             baseparm             label   "Thread Job Size"             export  none         }         groupsimple {             name    "folder_generatedparms_snippet"             label   "Generated Channel Parameters"             grouptag { "group_type" "simple" }             grouptag { "sidefx::look" "blank" }              parm {                 name    "attribute"                 label   "Attribute"                 type    string                 default { "" }             }         }          parm {             name    "snippet"             baseparm             label   "VEXpression"             export  all         }         parm {             name    "exportlist"             baseparm             label   "Attributes to Create"             export  none         }         parm {             name    "vex_strict"             baseparm             label   "Enforce Prototypes"             export  none         }     }      group {         name    "folder1_1"         label   "Bindings"          parm {             name    "autobind"             baseparm             label   "Autobind by Name"             export  none         }         multiparm {             name    "bindings"             label    "Number of Bindings"             baseparm             default 0             parmtag { "autoscope" "0000000000000000" }             parmtag { "multistartoffset" "1" }              parm {                 name    "bindname#"                 baseparm                 label   "Attribute Name"                 export  none             }             parm {                 name    "bindparm#"                 baseparm                 label   "VEX Parameter"                 export  none             }         }          parm {             name    "groupautobind"             baseparm             label   "Autobind Groups by Name"             export  none         }         multiparm {             name    "groupbindings"             label    "Group Bindings"             baseparm             default 0             parmtag { "autoscope" "0000000000000000" }             parmtag { "multistartoffset" "1" }              parm {                 name    "bindgroupname#"                 baseparm                 label   "Group Name"                 export  none             }             parm {                 name    "bindgroupparm#"                 baseparm                 label   "VEX Parameter"                 export  none             }         }          parm {             name    "vex_cwdpath"             baseparm             label   "Evaluation Node Path"             export  none         }         parm {             name    "vex_outputmask"             baseparm             label   "Export Parameters"             export  none         }         parm {             name    "vex_updatenmls"             baseparm             label   "Update Normals If Displaced"             export  none         }         parm {             name    "vex_matchattrib"             baseparm             label   "Attribute to Match"             export  none         }         parm {             name    "vex_inplace"             baseparm             label   "Compute Results In Place"             export  none         }         parm {             name    "vex_selectiongroup"             baseparm             label   "Output Selection Group"             export  none         }         parm {             name    "vex_precision"             baseparm             label   "VEX Precision"             export  none         }     }  ' point_int
opparm point_int  bindings ( 0 ) groupbindings ( 0 )
chblockbegin
chadd -t 0 0 point_int attribute
chkey -t 0 -v 0 -m 0 -a 0.33333333333333331 -A 0.33333333333333331 -T a  -o mM  -F 'chs("../attribute")' point_int/attribute
chblockend
opparm point_int folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( point ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( '//\nstring name = chs(\'attribute\'); \n\n//\nhaspointattrib(0, name)  != 1 ? error(\'Input does not have a @\' + name + \' attribute.\') : -1;\n\n//\nint arr [] = point(0, name, @ptnum); int sortasc [] = sort(arr); i[]@sorted;\n\n//\nforeach( int i; int u; sortasc )\n{\n    int current = getcomp(sortasc, i);\n    int previou = getcomp(sortasc, i + 1);\n    if (current != previou ) append(@sorted, current);\n}\n\nsetpointattrib(0, name, @ptnum, @sorted, \'set\'); removepointattrib(0, \'sorted\');\n\n\n\n\n\n\n\n\n\n' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto ) folder1 ( 0 0 ) folder_generatedparms_snippet ( 0 ) attribute ( attribute )
chlock point_int -*
chautoscope point_int -* +attribute
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off point_int
opexprlanguage -s hscript point_int
opuserdata -n '___Version___' -v '' point_int

# Node point_float (Sop/attribwrangle)
opadd -e -n attribwrangle point_float
oplocate -x 13.5 -y 7.8499999999999996 point_float
opspareds '    group {         name    "folder1"         label   "Code"          parm {             name    "group"             baseparm             label   "Group"             export  none             bindselector uvselect "Modify Attribs"                 "Select the geometry to affect and press Enter to complete."                 0 1 0xffffffff 0 grouptype 0         }         parm {             name    "grouptype"             baseparm             label   "Group Type"             export  none         }         parm {             name    "class"             baseparm             label   "Run Over"             export  none         }         parm {             name    "vex_numcount"             baseparm             label   "Number Count"             export  none         }         parm {             name    "vex_threadjobsize"             baseparm             label   "Thread Job Size"             export  none         }         groupsimple {             name    "folder_generatedparms_snippet"             label   "Generated Channel Parameters"             grouptag { "group_type" "simple" }             grouptag { "sidefx::look" "blank" }              parm {                 name    "attribute"                 label   "Attribute"                 type    string                 default { "" }             }         }          parm {             name    "snippet"             baseparm             label   "VEXpression"             export  all         }         parm {             name    "exportlist"             baseparm             label   "Attributes to Create"             export  none         }         parm {             name    "vex_strict"             baseparm             label   "Enforce Prototypes"             export  none         }     }      group {         name    "folder1_1"         label   "Bindings"          parm {             name    "autobind"             baseparm             label   "Autobind by Name"             export  none         }         multiparm {             name    "bindings"             label    "Number of Bindings"             baseparm             default 0             parmtag { "autoscope" "0000000000000000" }             parmtag { "multistartoffset" "1" }              parm {                 name    "bindname#"                 baseparm                 label   "Attribute Name"                 export  none             }             parm {                 name    "bindparm#"                 baseparm                 label   "VEX Parameter"                 export  none             }         }          parm {             name    "groupautobind"             baseparm             label   "Autobind Groups by Name"             export  none         }         multiparm {             name    "groupbindings"             label    "Group Bindings"             baseparm             default 0             parmtag { "autoscope" "0000000000000000" }             parmtag { "multistartoffset" "1" }              parm {                 name    "bindgroupname#"                 baseparm                 label   "Group Name"                 export  none             }             parm {                 name    "bindgroupparm#"                 baseparm                 label   "VEX Parameter"                 export  none             }         }          parm {             name    "vex_cwdpath"             baseparm             label   "Evaluation Node Path"             export  none         }         parm {             name    "vex_outputmask"             baseparm             label   "Export Parameters"             export  none         }         parm {             name    "vex_updatenmls"             baseparm             label   "Update Normals If Displaced"             export  none         }         parm {             name    "vex_matchattrib"             baseparm             label   "Attribute to Match"             export  none         }         parm {             name    "vex_inplace"             baseparm             label   "Compute Results In Place"             export  none         }         parm {             name    "vex_selectiongroup"             baseparm             label   "Output Selection Group"             export  none         }         parm {             name    "vex_precision"             baseparm             label   "VEX Precision"             export  none         }     }  ' point_float
opparm point_float  bindings ( 0 ) groupbindings ( 0 )
chblockbegin
chadd -t 0 0 point_float attribute
chkey -t 0 -v 0 -m 0 -a 0.33333333333333331 -A 0.33333333333333331 -T a  -o mM  -F 'chs("../attribute")' point_float/attribute
chblockend
opparm point_float folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( point ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( '//\nstring name = chs(\'attribute\'); \n\n//\nhaspointattrib(0, name)  != 1 ? error(\'Input does not have a @\' + name + \' attribute.\') : -1;\n\n//\nfloat arr [] = point(0, name, @ptnum); float sortasc [] = sort(arr); f[]@sorted;\n\n//\nforeach( int i; float u; sortasc )\n{\n    float current = getcomp(sortasc, i);\n    float previou = getcomp(sortasc, i + 1);\n    if (current != previou ) append(@sorted, current);\n}\n\nsetpointattrib(0, name, @ptnum, @sorted, \'set\'); removepointattrib(0, \'sorted\');\n\n\n\n\n\n\n\n\n\n' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto ) folder1 ( 0 0 ) folder_generatedparms_snippet ( 0 ) attribute ( attribute )
chlock point_float -*
chautoscope point_float -* +attribute
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off point_float
opexprlanguage -s hscript point_float
opuserdata -n '___Version___' -v '' point_float

# Node point_string (Sop/attribwrangle)
opadd -e -n attribwrangle point_string
oplocate -x 15.5 -y 6.8499999999999996 point_string
opspareds '    group {         name    "folder1"         label   "Code"          parm {             name    "group"             baseparm             label   "Group"             export  none             bindselector uvselect "Modify Attribs"                 "Select the geometry to affect and press Enter to complete."                 0 1 0xffffffff 0 grouptype 0         }         parm {             name    "grouptype"             baseparm             label   "Group Type"             export  none         }         parm {             name    "class"             baseparm             label   "Run Over"             export  none         }         parm {             name    "vex_numcount"             baseparm             label   "Number Count"             export  none         }         parm {             name    "vex_threadjobsize"             baseparm             label   "Thread Job Size"             export  none         }         groupsimple {             name    "folder_generatedparms_snippet"             label   "Generated Channel Parameters"             grouptag { "group_type" "simple" }             grouptag { "sidefx::look" "blank" }              parm {                 name    "attribute"                 label   "Attribute"                 type    string                 default { "" }             }         }          parm {             name    "snippet"             baseparm             label   "VEXpression"             export  all         }         parm {             name    "exportlist"             baseparm             label   "Attributes to Create"             export  none         }         parm {             name    "vex_strict"             baseparm             label   "Enforce Prototypes"             export  none         }     }      group {         name    "folder1_1"         label   "Bindings"          parm {             name    "autobind"             baseparm             label   "Autobind by Name"             export  none         }         multiparm {             name    "bindings"             label    "Number of Bindings"             baseparm             default 0             parmtag { "autoscope" "0000000000000000" }             parmtag { "multistartoffset" "1" }              parm {                 name    "bindname#"                 baseparm                 label   "Attribute Name"                 export  none             }             parm {                 name    "bindparm#"                 baseparm                 label   "VEX Parameter"                 export  none             }         }          parm {             name    "groupautobind"             baseparm             label   "Autobind Groups by Name"             export  none         }         multiparm {             name    "groupbindings"             label    "Group Bindings"             baseparm             default 0             parmtag { "autoscope" "0000000000000000" }             parmtag { "multistartoffset" "1" }              parm {                 name    "bindgroupname#"                 baseparm                 label   "Group Name"                 export  none             }             parm {                 name    "bindgroupparm#"                 baseparm                 label   "VEX Parameter"                 export  none             }         }          parm {             name    "vex_cwdpath"             baseparm             label   "Evaluation Node Path"             export  none         }         parm {             name    "vex_outputmask"             baseparm             label   "Export Parameters"             export  none         }         parm {             name    "vex_updatenmls"             baseparm             label   "Update Normals If Displaced"             export  none         }         parm {             name    "vex_matchattrib"             baseparm             label   "Attribute to Match"             export  none         }         parm {             name    "vex_inplace"             baseparm             label   "Compute Results In Place"             export  none         }         parm {             name    "vex_selectiongroup"             baseparm             label   "Output Selection Group"             export  none         }         parm {             name    "vex_precision"             baseparm             label   "VEX Precision"             export  none         }     }  ' point_string
opparm point_string  bindings ( 0 ) groupbindings ( 0 )
chblockbegin
chadd -t 0 0 point_string attribute
chkey -t 0 -v 0 -m 0 -a 0.33333333333333331 -A 0.33333333333333331 -T a  -o mM  -F 'chs("../attribute")' point_string/attribute
chblockend
opparm point_string folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( point ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( '//\nstring name = chs(\'attribute\'); \n\n//\nhaspointattrib(0, name)  != 1 ? error(\'Input does not have a @\' + name + \' attribute.\') : -1;\n\n//\nstring arr [] = point(0, name, @ptnum); string sortasc [] = sort(arr); s[]@sorted;\n\n//\nforeach( int i; string u; sortasc )\n{\n    string current = getcomp(sortasc, i);\n    string previou = getcomp(sortasc, i + 1);\n    if (current != previou ) append(@sorted, current);\n}\n\nsetpointattrib(0, name, @ptnum, @sorted, \'set\'); removepointattrib(0, \'sorted\');\n\n\n\n\n\n\n\n\n\n' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto ) folder1 ( 0 0 ) folder_generatedparms_snippet ( 0 ) attribute ( attribute )
chlock point_string -*
chautoscope point_string -* +attribute
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off point_string
opexprlanguage -s hscript point_string
opuserdata -n '___Version___' -v '' point_string

# Node output0 (Sop/output)
opadd -e -n output output0
oplocate -x 7.5 -y 0.59999999999999998 output0
opspareds "" output0
opparm -V 20.5.522 output0 outputidx ( 0 )
chlock output0 -*
chautoscope output0 -*
opset -d on -r on -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off output0
opexprlanguage -s hscript output0

# Node switch2 (Sop/switch)
opadd -e -n switch switch2
oplocate -x -0.5 -y 5.8300000000000001 switch2
opspareds "" switch2
chblockbegin
chadd -t 0 0 switch2 input
chkey -t 0 -v 0 -V 0 -m 0 -M 0 -a 0 -A 0 -F 'ch("../datatype")' switch2/input
chblockend
opparm -V 20.5.522 switch2 input ( input )
chlock switch2 -*
chautoscope switch2 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off switch2
opexprlanguage -s hscript switch2

# Node switch3 (Sop/switch)
opadd -e -n switch switch3
oplocate -x 5.5 -y 5.8300000000000001 switch3
opspareds "" switch3
chblockbegin
chadd -t 0 0 switch3 input
chkey -t 0 -v 0 -V 0 -m 0 -M 0 -a 0 -A 0 -F 'ch("../datatype")' switch3/input
chblockend
opparm -V 20.5.522 switch3 input ( input )
chlock switch3 -*
chautoscope switch3 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off switch3
opexprlanguage -s hscript switch3

# Node switch4 (Sop/switch)
opadd -e -n switch switch4
oplocate -x 11.5 -y 5.8300000000000001 switch4
opspareds "" switch4
chblockbegin
chadd -t 0 0 switch4 input
chkey -t 0 -v 0 -V 0 -m 0 -M 0 -a 0 -A 0 -F 'ch("../datatype")' switch4/input
chblockend
opparm -V 20.5.522 switch4 input ( input )
chlock switch4 -*
chautoscope switch4 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off switch4
opexprlanguage -s hscript switch4

# Node switch5 (Sop/switch)
opadd -e -n switch switch5
oplocate -x 7.5 -y 2.8300000000000001 switch5
opspareds "" switch5
chblockbegin
chadd -t 0 0 switch5 input
chkey -t 0 -v 0 -V 0 -m 0 -M 0 -a 0 -A 0 -F 'ch("../runover")' switch5/input
chblockend
opparm -V 20.5.522 switch5 input ( input )
chlock switch5 -*
chautoscope switch5 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off switch5
opexprlanguage -s hscript switch5
oporder -e detail_int detail_float detail_string prim_int prim_float prim_string point_int point_float point_string output0 switch2 switch3 switch4 switch5 
opcf ..

# Node attribute_range (Sop/subnet)
opadd -e -n subnet attribute_range
oplocate -x 1.5 -y -1.1499999999999999 attribute_range
opspareds '    groupsimple {         name    "main"         label   "Attribute Range"         grouptag { "group_type" "simple" }          parm {             name    "runover"             label   "Run Over"             type    ordinal             default { "0" }             menu {                 "0" "Primitives"                 "1" "Points"             }             parmtag { "script_callback_language" "python" }         }         parm {             name    "exportas"             label   "Export Normalization As"             type    ordinal             default { "0" }             help    "The method for exporting the normalized attribute. With \'New Attribute\', a new attribute will be created with the original name appended with \'_n\'."             menu {                 "0" "Overwrite Existing"                 "1" "New Attribute"                 "2" "Do Not Export"             }             parmtag { "script_callback_language" "python" }         }         parm {             name    "sample"             label   "Sample"             type    ordinal             default { "0" }             help    "Whether to sample the current frame or the frame range. Divisor will divide the start/end frame and only sample those frames (the value of Divisor defines the nth frame to sample)."             menu {                 "0" "Current Frame       "                 "1" "Frame Range"             }             parmtag { "script_callback_language" "python" }         }         parm {             name    "startframe"             label   "Start"             type    integer             default { "0" }             hidewhen "{ sample != 1 }"             range   { 0 10 }             parmtag { "script_callback_language" "python" }         }         parm {             name    "endframe"             label   "End"             type    integer             default { "0" }             hidewhen "{ sample != 1 }"             range   { 0 10 }             parmtag { "script_callback_language" "python" }         }         parm {             name    "divisor"             label   "Divisor"             type    integer             default { "0" }             hidewhen "{ sample != 1 }"             range   { 1 10 }             parmtag { "script_callback_language" "python" }         }         parm {             name    "exportbounds"             label   "Export Bounds"             type    toggle             default { "0" }             help    "A detail array of two components (min/max) of the attributes will be exported as the attribute name appended with \'range\'."             parmtag { "script_callback_language" "python" }         }         parm {             name    "sepparm"             label   "sepparm"             type    separator             default { "" }         }         multiscroll {             name    "list"             label    "List Of Attributes"             default 0             parmtag { "group_type" "simple" }              parm {                 name    "attribute#"                 label   "Attribute"                 type    string                 default { "" }                 parmtag { "script_callback_language" "python" }             }         }      }      group {         name    "folder0"         label   "Folder Name"         invisibletab          parm {             name    "label1"             baseparm             label   "Input #1 Label"             export  dialog         }         parm {             name    "label2"             baseparm             label   "Input #2 Label"             export  dialog         }         parm {             name    "label3"             baseparm             label   "Input #3 Label"             export  dialog         }         parm {             name    "label4"             baseparm             label   "Input #4 Label"             export  dialog         }     }  ' attribute_range
opparm attribute_range  list ( 1 )
chblockbegin
chadd -t 0 0 attribute_range startframe
chkey -t 0 -v 0 -V 0 -m 0 -M 0 -a 0 -A 0 -F '$FSTART' attribute_range/startframe
chadd -t 0 0 attribute_range endframe
chkey -t 0 -v 0 -V 0 -m 0 -M 0 -a 0 -A 0 -F '$FEND' attribute_range/endframe
chblockend
opparm -V 20.5.522 attribute_range label1 ( 'Sub-Network Input #1' ) label2 ( 'Sub-Network Input #2' ) label3 ( 'Sub-Network Input #3' ) label4 ( 'Sub-Network Input #4' ) main ( 0 ) runover ( 1 ) exportas ( 0 ) sample ( 0 ) startframe ( startframe ) endframe ( endframe ) divisor ( 1 ) exportbounds ( off ) sepparm ( ) list ( 1 ) folder0 ( 0 ) attribute1 ( "" )
chlock attribute_range -*
chautoscope attribute_range -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off attribute_range
opexprlanguage -s hscript attribute_range
opcf attribute_range

# Node output0 (Sop/output)
opadd -e -n output output0
oplocate -x -0.5 -y -1.1499999999999999 output0
opspareds "" output0
opparm -V 20.5.522 output0 outputidx ( 0 )
chlock output0 -*
chautoscope output0 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off output0
opexprlanguage -s hscript output0

# Node export_point (Sop/attribwrangle)
opadd -e -n attribwrangle export_point
oplocate -x -6.5 -y 2.8500000000000001 export_point
opspareds '    group {         name    "folder1"         label   "Code"          parm {             name    "group"             baseparm             label   "Group"             export  none             bindselector uvselect "Modify Attribs"                 "Select the geometry to affect and press Enter to complete."                 0 1 0xffffffff 0 grouptype 0         }         parm {             name    "grouptype"             baseparm             label   "Group Type"             export  none         }         parm {             name    "class"             baseparm             label   "Run Over"             export  none         }         parm {             name    "vex_numcount"             baseparm             label   "Number Count"             export  none         }         parm {             name    "vex_threadjobsize"             baseparm             label   "Thread Job Size"             export  none         }         groupsimple {             name    "folder_generatedparms_snippet"             label   "Generated Channel Parameters"             grouptag { "group_type" "simple" }             grouptag { "sidefx::look" "blank" }              parm {                 name    "attribute"                 label   "Attribute"                 type    string                 default { "" }             }             parm {                 name    "export_mode"                 label   "Export Mode"                 type    integer                 default { "0" }                 range   { 0 10 }             }             parm {                 name    "array_mode"                 label   "Array Mode"                 type    integer                 default { "0" }                 range   { 0 10 }             }         }          parm {             name    "snippet"             baseparm             label   "VEXpression"             export  all         }         parm {             name    "exportlist"             baseparm             label   "Attributes to Create"             export  none         }         parm {             name    "vex_strict"             baseparm             label   "Enforce Prototypes"             export  none         }     }      group {         name    "folder1_1"         label   "Bindings"          parm {             name    "autobind"             baseparm             label   "Autobind by Name"             export  none         }         multiparm {             name    "bindings"             label    "Number of Bindings"             baseparm             default 0             parmtag { "autoscope" "0000000000000000" }             parmtag { "multistartoffset" "1" }              parm {                 name    "bindname#"                 baseparm                 label   "Attribute Name"                 export  none             }             parm {                 name    "bindparm#"                 baseparm                 label   "VEX Parameter"                 export  none             }         }          parm {             name    "groupautobind"             baseparm             label   "Autobind Groups by Name"             export  none         }         multiparm {             name    "groupbindings"             label    "Group Bindings"             baseparm             default 0             parmtag { "autoscope" "0000000000000000" }             parmtag { "multistartoffset" "1" }              parm {                 name    "bindgroupname#"                 baseparm                 label   "Group Name"                 export  none             }             parm {                 name    "bindgroupparm#"                 baseparm                 label   "VEX Parameter"                 export  none             }         }          parm {             name    "vex_cwdpath"             baseparm             label   "Evaluation Node Path"             export  none         }         parm {             name    "vex_outputmask"             baseparm             label   "Export Parameters"             export  none         }         parm {             name    "vex_updatenmls"             baseparm             label   "Update Normals If Displaced"             export  none         }         parm {             name    "vex_matchattrib"             baseparm             label   "Attribute to Match"             export  none         }         parm {             name    "vex_inplace"             baseparm             label   "Compute Results In Place"             export  none         }         parm {             name    "vex_selectiongroup"             baseparm             label   "Output Selection Group"             export  none         }         parm {             name    "vex_precision"             baseparm             label   "VEX Precision"             export  none         }     }  ' export_point
opparm export_point  bindings ( 0 ) groupbindings ( 0 )
chblockbegin
chadd -t 0 0 export_point export_mode
chkey -t 0 -v 0 -V 0 -m 0 -M 0 -a 0 -A 0 -F 'ch("../exportas")' export_point/export_mode
chadd -t 0 0 export_point array_mode
chkey -t 0 -v 0 -V 0 -m 0 -M 0 -a 0 -A 0 -F 'ch("../exportbounds")' export_point/array_mode
chblockend
opparm export_point folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( point ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( '//- Fetch the name of the attribute, and the value\nstring handle = chs(\'attribute\');\nfloat attribute = point(0, handle, @ptnum);\n\n//- Fetch the bounds calculated by attribute promote\nfloat min = detail(1, handle, 0); float max = detail(2, handle, 0);\n\n//- Normalize the attribute\nfloat normalized = fit(attribute, min, max, 0, 1);\n\n//- Mode as described in UI tooltip\nint exportmode = chi(\'export_mode\');\n\n//- Overwrite Existing\nif (exportmode == 0) { setpointattrib(0, handle, @ptnum, normalized, \'set\'); }\n\n//- Export New Attribute\nif (exportmode == 1) { setpointattrib(0, concat(handle, \'_n\'), @ptnum, normalized, \'set\'); }\n\n//- If \'Export Bounds\' is enabled\nint arrmode = chi(\'array_mode\');\n\nif ( arrmode == 1 )\n{\n    //- Store bounds in a array\n    float arr [] = array(min, max); \n    \n    //- \n    string arrname = concat(handle, \'range\');\n    setdetailattrib(0, arrname, arr, \'set\');\n}\n' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto ) folder1 ( 0 0 ) folder_generatedparms_snippet ( 0 ) attribute ( "" ) export_mode ( export_mode ) array_mode ( array_mode )
chlock export_point -*
chautoscope export_point -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off export_point
opexprlanguage -s hscript export_point
opuserdata -n '___Version___' -v '' export_point

# Node min (Sop/attribpromote)
opadd -e -n attribpromote min
oplocate -x -4.5 -y 3.8500000000000001 min
opspareds "" min
chblockbegin
chadd -t 0 0 min inclass
chkey -t 0 -v 0 -V 0 -m 0 -M 0 -a 0 -A 0 -F 'ch("../runover") + 1' min/inclass
chblockend
opparm -V 20.5.522 min inname ( '`chs("../export_point/attribute")`' ) inclass ( inclass ) outclass ( detail ) usepieceattrib ( off ) pieceattrib ( name ) method ( min ) useoutname ( off ) outname ( "" ) deletein ( on )
chlock min -*
chautoscope min -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off min
opexprlanguage -s hscript min

# Node max (Sop/attribpromote)
opadd -e -n attribpromote max
oplocate -x -2.6899999999999999 -y 3.8500000000000001 max
opspareds "" max
chblockbegin
chadd -t 0 0 max inclass
chkey -t 0 -v 0 -V 0 -m 0 -M 0 -a 0 -A 0 -F 'ch("../runover") + 1' max/inclass
chblockend
opparm -V 20.5.522 max inname ( '`chs("../export_point/attribute")`' ) inclass ( inclass ) outclass ( detail ) usepieceattrib ( off ) pieceattrib ( name ) method ( max ) useoutname ( off ) outname ( "" ) deletein ( on )
chlock max -*
chautoscope max -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off max
opexprlanguage -s hscript max

# Node sample_range (Sop/solver)
opadd -e -n solver sample_range
oplocate -x 3.5 -y 6.8499999999999996 sample_range
opspareds "" sample_range
opparm sample_range resimulate ( 0 ) useinitialsop ( off ) initialsop ( "" ) startframe ( 1 ) substep ( 1 ) cacheenabled ( on ) cachetodisk ( off ) cachemaxsize ( 5000 )
chlock sample_range -*
chautoscope sample_range -*
opcolor -c 0.8399999737739563 0.8399999737739563 0.8399999737739563 sample_range
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F off -c on -e on -b off sample_range
opexprlanguage -s hscript sample_range
opuserdata -n '___Version___' -v '' sample_range

# Editable subnode
opcf sample_range/d

# Node s (Dop/sopsolver)
opadd -e -n sopsolver s
oplocate -x 1.88226 -y 0.51761800000000002 s
opspareds "" s
opparm s  numinputs ( 0 ) numoutputs ( 0 ) numstamps ( 0 )
opparm -V 20.5.522 s parmop_usesoppath ( default ) usesoppath ( off ) parmop_soppath ( default ) soppath ( "" ) parmop_datapath ( default ) datapath ( Geometry ) parmop_doinvoke ( default ) doinvoke ( off ) parmop_primaryinputname ( default ) primaryinputname ( data ) parmop_numinputs ( default ) numinputs ( 0 ) parmop_numoutputs ( default ) numoutputs ( 0 ) parmop_transformsopoutput ( default ) transformsopoutput ( on ) parmop_solveinitframe ( default ) solveinitframe ( on ) parmop_numstamps ( default ) numstamps ( 0 ) parmop_usetimestep ( default ) usetimestep ( on ) parmop_timescale ( default ) timescale ( 1 ) defaultparmop ( initial ) addaffectors ( on ) group ( * ) dataname ( '$OS' ) uniquedataname ( on ) solverperobject ( off )
chlock s -*
chautoscope s -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 s
opset -d on -r off -h off -f off -y off -t off -l off -s off -u off -F off -c on -e on -b off s
opexprlanguage -s hscript s
opuserdata -n '___Version___' -v '20.5.522' s
opcf s

# Node Prev_Frame (Sop/dopimport::2.0)
opadd -e -n dopimport::2.0 Prev_Frame
oplocate -x -4.5 -y -3.1499999999999999 Prev_Frame
opspareds "" Prev_Frame
chblockbegin
chadd -t 0 0 Prev_Frame integrateovertime
chkey -t 0 -v 0 -V 0 -m 0 -M 0 -a 0 -A 0 -F '1/$FPS' Prev_Frame/integrateovertime
chblockend
opparm -V 20.5.522 Prev_Frame doppath ( '`stamps("..", "DOPNET", "../..")`' ) objpattern ( '`stamps("..", "OBJID", arg(dopnodeobjs(".."),0))`' ) relpattern ( "" ) donotsim ( on ) folder_geometry ( 0 ) importstyle ( fetch ) spacer ( "" ) pointsquicksetup ( menu ) geodatapath ( '`stamps("..", "DATANAME", chs("../datapath"))`' ) pack ( off ) pivot ( centroid ) viewportlod ( full ) adddopobjectpath ( off ) adddopobjectname ( off ) dopobjectnameattrib ( dopobjectname ) adddopdatapath ( off ) dopdatapathattrib ( dopdatapath ) transferattributes ( "" ) transfergroups ( "" ) folder_xform ( 0 ) doposxform ( on ) dogeoxform ( on ) keepworldspacepos ( on ) pointvels ( none ) integrateovertime ( integrateovertime ) addtoexistingvel ( on )
chlock Prev_Frame -*
chautoscope Prev_Frame -*
opcolor -c 0.56000000238418579 0.49000000953674316 0.86000001430511475 Prev_Frame
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F off -c on -e on -b off Prev_Frame
opexprlanguage -s hscript Prev_Frame

# Node OUT (Sop/output)
opadd -e -n output OUT
oplocate -x -2.5 -y -10.15 OUT
opspareds "" OUT
opparm -V 20.5.522 OUT outputidx ( 0 )
chlock OUT -*
chautoscope OUT -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off OUT
opexprlanguage -s hscript OUT

# Node export_point (Sop/attribwrangle)
opadd -e -n attribwrangle export_point
oplocate -x -2.5 -y -0.14999999999999999 export_point
opspareds '    group {         name    "folder1"         label   "Code"          parm {             name    "group"             baseparm             label   "Group"             export  none             bindselector uvselect "Modify Attribs"                 "Select the geometry to affect and press Enter to complete."                 0 1 0xffffffff 0 grouptype 0         }         parm {             name    "grouptype"             baseparm             label   "Group Type"             export  none         }         parm {             name    "class"             baseparm             label   "Run Over"             export  none         }         parm {             name    "vex_numcount"             baseparm             label   "Number Count"             export  none         }         parm {             name    "vex_threadjobsize"             baseparm             label   "Thread Job Size"             export  none         }         groupsimple {             name    "folder_generatedparms_snippet"             label   "Generated Channel Parameters"             grouptag { "group_type" "simple" }             grouptag { "sidefx::look" "blank" }              parm {                 name    "attribute"                 label   "Attribute"                 type    string                 default { "" }             }             parm {                 name    "export_mode"                 label   "Export Mode"                 type    integer                 default { "0" }                 range   { 0 10 }             }         }          parm {             name    "snippet"             baseparm             label   "VEXpression"             export  all         }         parm {             name    "exportlist"             baseparm             label   "Attributes to Create"             export  none         }         parm {             name    "vex_strict"             baseparm             label   "Enforce Prototypes"             export  none         }     }      group {         name    "folder1_1"         label   "Bindings"          parm {             name    "autobind"             baseparm             label   "Autobind by Name"             export  none         }         multiparm {             name    "bindings"             label    "Number of Bindings"             baseparm             default 0             parmtag { "autoscope" "0000000000000000" }             parmtag { "multistartoffset" "1" }              parm {                 name    "bindname#"                 baseparm                 label   "Attribute Name"                 export  none             }             parm {                 name    "bindparm#"                 baseparm                 label   "VEX Parameter"                 export  none             }         }          parm {             name    "groupautobind"             baseparm             label   "Autobind Groups by Name"             export  none         }         multiparm {             name    "groupbindings"             label    "Group Bindings"             baseparm             default 0             parmtag { "autoscope" "0000000000000000" }             parmtag { "multistartoffset" "1" }              parm {                 name    "bindgroupname#"                 baseparm                 label   "Group Name"                 export  none             }             parm {                 name    "bindgroupparm#"                 baseparm                 label   "VEX Parameter"                 export  none             }         }          parm {             name    "vex_cwdpath"             baseparm             label   "Evaluation Node Path"             export  none         }         parm {             name    "vex_outputmask"             baseparm             label   "Export Parameters"             export  none         }         parm {             name    "vex_updatenmls"             baseparm             label   "Update Normals If Displaced"             export  none         }         parm {             name    "vex_matchattrib"             baseparm             label   "Attribute to Match"             export  none         }         parm {             name    "vex_inplace"             baseparm             label   "Compute Results In Place"             export  none         }         parm {             name    "vex_selectiongroup"             baseparm             label   "Output Selection Group"             export  none         }         parm {             name    "vex_precision"             baseparm             label   "VEX Precision"             export  none         }     }  ' export_point
opparm export_point  bindings ( 0 ) groupbindings ( 0 )
chblockbegin
chadd -t 0 0 export_point export_mode
chkey -t 0 -v 0 -V 0 -m 0 -M 0 -a 0 -A 0 -F 'ch("../exportas")' export_point/export_mode
chblockend
opparm export_point folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( point ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( '//- Fetch the name of the attribute, and the value\nstring handle = chs(\'attribute\');\nfloat attribute = point(0, handle, @ptnum);\n\n//- Fetch the bounds calculated by attribute promote\nfloat min = detail(1, handle, 0); float max = detail(2, handle, 0);\n\n//- Store bounds in a array\nfloat arr [] = array(min, max); \n\n//- \nstring arrname = concat(handle, \'range\');\nsetdetailattrib(0, arrname, arr, \'set\');\n\n' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto ) folder1 ( 0 0 ) folder_generatedparms_snippet ( 0 ) attribute ( ptfoo ) export_mode ( export_mode )
chlock export_point -*
chautoscope export_point -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off export_point
opexprlanguage -s hscript export_point
opuserdata -n '___Version___' -v '' export_point

# Node min (Sop/attribpromote)
opadd -e -n attribpromote min
oplocate -x -0.5 -y 0.84999999999999998 min
opspareds "" min
chblockbegin
chadd -t 0 0 min inclass
chkey -t 0 -v 0 -V 0 -m 0 -M 0 -a 0 -A 0 -F 'ch("../../../../runover") + 1' min/inclass
chblockend
opparm -V 20.5.522 min inname ( '`chs("../export_point/attribute")`' ) inclass ( inclass ) outclass ( detail ) usepieceattrib ( off ) pieceattrib ( name ) method ( min ) useoutname ( off ) outname ( "" ) deletein ( on )
chlock min -*
chautoscope min -*
opset -d on -r on -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off min
opexprlanguage -s hscript min

# Node max (Sop/attribpromote)
opadd -e -n attribpromote max
oplocate -x 1.3100000000000001 -y 0.84999999999999998 max
opspareds "" max
chblockbegin
chadd -t 0 0 max inclass
chkey -t 0 -v 0 -V 0 -m 0 -M 0 -a 0 -A 0 -F 'ch("../../../../runover") + 1' max/inclass
chblockend
opparm -V 20.5.522 max inname ( '`chs("../export_point/attribute")`' ) inclass ( inclass ) outclass ( detail ) usepieceattrib ( off ) pieceattrib ( name ) method ( max ) useoutname ( off ) outname ( "" ) deletein ( on )
chlock max -*
chautoscope max -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off max
opexprlanguage -s hscript max

# Node fetch (Sop/attribwrangle)
opadd -e -n attribwrangle fetch
oplocate -x -2.5 -y -6.1500000000000004 fetch
opspareds '    group {         name    "folder1"         label   "Code"          parm {             name    "group"             baseparm             label   "Group"             export  none             bindselector uvselect "Modify Attribs"                 "Select the geometry to affect and press Enter to complete."                 0 1 0xffffffff 0 grouptype 0         }         parm {             name    "grouptype"             baseparm             label   "Group Type"             export  none         }         parm {             name    "class"             baseparm             label   "Run Over"             export  none         }         parm {             name    "vex_numcount"             baseparm             label   "Number Count"             export  none         }         parm {             name    "vex_threadjobsize"             baseparm             label   "Thread Job Size"             export  none         }         groupsimple {             name    "folder_generatedparms_snippet"             label   "Generated Channel Parameters"             grouptag { "group_type" "simple" }             grouptag { "sidefx::look" "blank" }              parm {                 name    "attribute"                 label   "Attribute"                 type    string                 default { "" }             }         }          parm {             name    "snippet"             baseparm             label   "VEXpression"             export  all         }         parm {             name    "exportlist"             baseparm             label   "Attributes to Create"             export  none         }         parm {             name    "vex_strict"             baseparm             label   "Enforce Prototypes"             export  none         }     }      group {         name    "folder1_1"         label   "Bindings"          parm {             name    "autobind"             baseparm             label   "Autobind by Name"             export  none         }         multiparm {             name    "bindings"             label    "Number of Bindings"             baseparm             default 0             parmtag { "autoscope" "0000000000000000" }             parmtag { "multistartoffset" "1" }              parm {                 name    "bindname#"                 baseparm                 label   "Attribute Name"                 export  none             }             parm {                 name    "bindparm#"                 baseparm                 label   "VEX Parameter"                 export  none             }         }          parm {             name    "groupautobind"             baseparm             label   "Autobind Groups by Name"             export  none         }         multiparm {             name    "groupbindings"             label    "Group Bindings"             baseparm             default 0             parmtag { "autoscope" "0000000000000000" }             parmtag { "multistartoffset" "1" }              parm {                 name    "bindgroupname#"                 baseparm                 label   "Group Name"                 export  none             }             parm {                 name    "bindgroupparm#"                 baseparm                 label   "VEX Parameter"                 export  none             }         }          parm {             name    "vex_cwdpath"             baseparm             label   "Evaluation Node Path"             export  none         }         parm {             name    "vex_outputmask"             baseparm             label   "Export Parameters"             export  none         }         parm {             name    "vex_updatenmls"             baseparm             label   "Update Normals If Displaced"             export  none         }         parm {             name    "vex_matchattrib"             baseparm             label   "Attribute to Match"             export  none         }         parm {             name    "vex_inplace"             baseparm             label   "Compute Results In Place"             export  none         }         parm {             name    "vex_selectiongroup"             baseparm             label   "Output Selection Group"             export  none         }         parm {             name    "vex_precision"             baseparm             label   "VEX Precision"             export  none         }     }  ' fetch
opparm fetch  bindings ( 0 ) groupbindings ( 0 )
opparm fetch folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( detail ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( '//- name of the array from second input\nstring attribute = concat(chs(\'attribute\'), \'range\');\n\n//- value of that array\nfloat arr [] = detail(1, attribute);\n\n//- first frame corner case, set to second input array\nint has = hasdetailattrib(0, attribute);\nif (has == 0) { setdetailattrib(0, attribute, arr, \'set\'); }\n\n//- check min/max of second input array of lower/higher and current array needs to update\nelse\n{\n    //- my current array and bounds\n    float myarray [] = detail(0, attribute);\n    float mymin = getcomp(myarray, 0); float mymax = getcomp(myarray, 1);\n    \n    //- second input bounds\n    float newmin = getcomp(arr, 0); float newmax = getcomp(arr, 1);\n    \n    //-\n    if ( newmin < mymin ) setcomp(myarray, newmin, 0);\n    if ( newmax > mymax ) setcomp(myarray, newmax, 1);\n    \n    setdetailattrib(0, attribute, myarray, \'set\');\n\n}\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto ) folder1 ( 0 0 ) folder_generatedparms_snippet ( 0 ) attribute ( ptfoo )
chlock fetch -*
chautoscope fetch -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off fetch
opexprlanguage -s hscript fetch
opuserdata -n '___Version___' -v '' fetch

# Node debug (Sop/attribwrangle)
opadd -e -n attribwrangle debug
oplocate -x -2.5 -y -8.1500000000000004 debug
opspareds "" debug
opparm debug  bindings ( 0 ) groupbindings ( 0 )
opparm debug folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( detail ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( 'i@framessampled += 1;' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto )
chlock debug -*
chautoscope debug -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b on debug
opexprlanguage -s hscript debug
opuserdata -n '___Version___' -v '' debug

# Node export_prim (Sop/attribwrangle)
opadd -e -n attribwrangle export_prim
oplocate -x -4.5099999999999998 -y -0.14999999999999999 export_prim
opspareds '    group {         name    "folder1"         label   "Code"          parm {             name    "group"             baseparm             label   "Group"             export  none             bindselector uvselect "Modify Attribs"                 "Select the geometry to affect and press Enter to complete."                 0 1 0xffffffff 0 grouptype 0         }         parm {             name    "grouptype"             baseparm             label   "Group Type"             export  none         }         parm {             name    "class"             baseparm             label   "Run Over"             export  none         }         parm {             name    "vex_numcount"             baseparm             label   "Number Count"             export  none         }         parm {             name    "vex_threadjobsize"             baseparm             label   "Thread Job Size"             export  none         }         groupsimple {             name    "folder_generatedparms_snippet"             label   "Generated Channel Parameters"             grouptag { "group_type" "simple" }             grouptag { "sidefx::look" "blank" }              parm {                 name    "attribute"                 label   "Attribute"                 type    string                 default { "" }             }             parm {                 name    "export_mode"                 label   "Export Mode"                 type    integer                 default { "0" }                 range   { 0 10 }             }         }          parm {             name    "snippet"             baseparm             label   "VEXpression"             export  all         }         parm {             name    "exportlist"             baseparm             label   "Attributes to Create"             export  none         }         parm {             name    "vex_strict"             baseparm             label   "Enforce Prototypes"             export  none         }     }      group {         name    "folder1_1"         label   "Bindings"          parm {             name    "autobind"             baseparm             label   "Autobind by Name"             export  none         }         multiparm {             name    "bindings"             label    "Number of Bindings"             baseparm             default 0             parmtag { "autoscope" "0000000000000000" }             parmtag { "multistartoffset" "1" }              parm {                 name    "bindname#"                 baseparm                 label   "Attribute Name"                 export  none             }             parm {                 name    "bindparm#"                 baseparm                 label   "VEX Parameter"                 export  none             }         }          parm {             name    "groupautobind"             baseparm             label   "Autobind Groups by Name"             export  none         }         multiparm {             name    "groupbindings"             label    "Group Bindings"             baseparm             default 0             parmtag { "autoscope" "0000000000000000" }             parmtag { "multistartoffset" "1" }              parm {                 name    "bindgroupname#"                 baseparm                 label   "Group Name"                 export  none             }             parm {                 name    "bindgroupparm#"                 baseparm                 label   "VEX Parameter"                 export  none             }         }          parm {             name    "vex_cwdpath"             baseparm             label   "Evaluation Node Path"             export  none         }         parm {             name    "vex_outputmask"             baseparm             label   "Export Parameters"             export  none         }         parm {             name    "vex_updatenmls"             baseparm             label   "Update Normals If Displaced"             export  none         }         parm {             name    "vex_matchattrib"             baseparm             label   "Attribute to Match"             export  none         }         parm {             name    "vex_inplace"             baseparm             label   "Compute Results In Place"             export  none         }         parm {             name    "vex_selectiongroup"             baseparm             label   "Output Selection Group"             export  none         }         parm {             name    "vex_precision"             baseparm             label   "VEX Precision"             export  none         }     }  ' export_prim
opparm export_prim  bindings ( 0 ) groupbindings ( 0 )
chblockbegin
chadd -t 0 0 export_prim export_mode
chkey -t 0 -v 0 -V 0 -m 0 -M 0 -a 0 -A 0 -F 'ch("../exportas")' export_prim/export_mode
chblockend
opparm export_prim folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( primitive ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( '//- Fetch the name of the attribute, and the value\nstring handle = chs(\'attribute\');\nfloat attribute = prim(0, handle, @primnum);\n\n//- Fetch the bounds calculated by attribute promote\nfloat min = detail(1, handle, 0); float max = detail(2, handle, 0);\n\n//- Store bounds in a array\nfloat arr [] = array(min, max); \n\n//- \nstring arrname = concat(handle, \'range\');\nsetdetailattrib(0, arrname, arr, \'set\');\n\n' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto ) folder1 ( 0 0 ) folder_generatedparms_snippet ( 0 ) attribute ( ptfoo ) export_mode ( export_mode )
chlock export_prim -*
chautoscope export_prim -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off export_prim
opexprlanguage -s hscript export_prim
opuserdata -n '___Version___' -v '' export_prim

# Node Input_1 (Sop/object_merge)
opadd -e -n object_merge Input_1
oplocate -x -2.5 -y 2.8500000000000001 Input_1
opspareds "" Input_1
opparm Input_1  numobj ( 1 )
opparm -V 20.5.522 Input_1 numobj ( 1 ) _separator ( ) xformtype ( object ) xformpath ( "" ) invertxform ( off ) createptgroups ( off ) ptgroupprefix ( _ptgrp_ ) createprimgroups ( off ) primgroupprefix ( _primgrp_ ) verbosegroups ( off ) suffixfirstgroup ( on ) createptstring ( off ) createprimstring ( off ) pathattrib ( objname ) pack ( off ) pivot ( centroid ) viewportlod ( full ) addpath ( on ) enable1 ( on ) objpath1 ( '`opinputpath("../..", 0)`' ) group1 ( "" ) expand1 ( off )
chlock Input_1 -*
chautoscope Input_1 -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 Input_1
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F off -c on -e on -b off Input_1
opexprlanguage -s hscript Input_1

# Node foreach_end1 (Sop/block_end)
opadd -e -n block_end foreach_end1
oplocate -x -2.5 -y -2.1499999999999999 foreach_end1
opspareds "" foreach_end1
chblockbegin
chadd -t 0 0 foreach_end1 iterations
chkey -t 0 -v 0 -V 0 -m 0 -M 0 -a 0 -A 0 -F 'ch("../../../../list")' foreach_end1/iterations
chblockend
opparm -V 20.5.522 foreach_end1 itermethod ( count ) method ( feedback ) iterations ( iterations ) startvalue ( 1 ) increment ( 1 ) class ( point ) useattrib ( on ) attrib ( "" ) usemaxiter ( off ) maxiter ( 10 ) blockpath ( ../foreach_begin1 ) templatepath ( ../foreach_begin1 ) resetcookpass ( 0 ) dosinglepass ( off ) singlepass ( 0 ) stopcondition ( 0 ) multithread ( off )
chlock foreach_end1 -*
chautoscope foreach_end1 -*
opcolor -c 0.75 0.40000000596046448 0 foreach_end1
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F off -c on -e on -b off foreach_end1
opexprlanguage -s hscript foreach_end1

# Node foreach_begin1 (Sop/block_begin)
opadd -e -n block_begin foreach_begin1
oplocate -x -2.5 -y 1.8500000000000001 foreach_begin1
opspareds "" foreach_begin1
opparm -V 20.5.522 foreach_begin1 method ( feedback ) blockpath ( ../foreach_end1 ) resetcookpass ( 0 ) createmetablock ( 0 ) label1 ( 'iteration, numiterations, value, ivalue' )
chlock foreach_begin1 -*
chautoscope foreach_begin1 -*
opcolor -c 0.75 0.40000000596046448 0 foreach_begin1
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F off -c on -e on -b off foreach_begin1
opexprlanguage -s hscript foreach_begin1

# Node foreach_count1 (Sop/block_begin)
opadd -e -n block_begin foreach_count1
oplocate -x -4.5 -y 1.8500000000000001 foreach_count1
opspareds "" foreach_count1
opparm -V 20.5.522 foreach_count1 method ( metadata ) blockpath ( ../foreach_end1 ) resetcookpass ( 0 ) createmetablock ( 0 ) label1 ( 'iteration, numiterations, value, ivalue' )
chlock foreach_count1 -*
chautoscope foreach_count1 -*
opcolor -c 0.75 0.40000000596046448 0 foreach_count1
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F off -c on -e on -b off foreach_count1
opexprlanguage -s hscript foreach_count1

# Node python1 (Sop/python)
opadd -e -n python python1
oplocate -x -2.5 -y 0.84999999999999998 python1
opspareds '    parm {         name    "python"         baseparm         label   "Python Code"         export  none     }     parm {         name    "maintainstate"         baseparm         label   "Maintain State"         export  none     }     parm {         name    "spare_input0"         label   "Spare Input 0"         type    oppath         default { "" }         help    "Refer to this in expressions as -1, such as: npoints(-1)"         parmtag { "cook_dependent" "1" }         parmtag { "opfilter" "!!SOP!!" }         parmtag { "oprelative" "." }     } ' python1
opparm -V 20.5.522 python1 python ( '#- Me\nnode = hou.pwd()\n\n#- Geometry of metadata block\ngeo = node.inputs()[1].geometry()\n\n#- parent node (tool ui)\nlevelup = node.parent().parent().parent().parent();\nprint(levelup)\n\n#- Get iteration number, add 1 as multiblocks are 1 - based\niteration = str(geo.intAttribValue("iteration") + 1)\n\n#- In the ui, attribute fields are labelled \'attribute\' plus the index (mapping to iteration)\nlookup    = f"attribute{iteration}"\n\n#- Fetch the attribute name as depicted in the ui\nattribute = levelup.parm(lookup).eval()\n#print(attribute)\n\n#- Set the \'attribute\' parameter on the \'export\' wrangle, the attrib promotes are linked\nnet = hou.pwd().parent().node(\'export_point\').parm(\'attribute\').set(attribute)\nnet = hou.pwd().parent().node(\'export_prim\').parm(\'attribute\').set(attribute)\n#print(net)\n\n\n\n\n\n\n' ) maintainstate ( off ) spare_input0 ( "" )
chlock python1 -*
chautoscope python1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off python1
opexprlanguage -s hscript python1

# Node foreach_begin2_metadata1 (Sop/block_begin)
opadd -e -n block_begin foreach_begin2_metadata1
oplocate -x -2.5 -y -4.1500000000000004 foreach_begin2_metadata1
opspareds "" foreach_begin2_metadata1
opparm -V 20.5.522 foreach_begin2_metadata1 method ( input ) blockpath ( ../foreach_end2 ) resetcookpass ( 0 ) createmetablock ( 0 ) label1 ( 'iteration, numiterations, value, ivalue' )
chlock foreach_begin2_metadata1 -*
chautoscope foreach_begin2_metadata1 -*
opcolor -c 0.75 0.40000000596046448 0 foreach_begin2_metadata1
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F off -c on -e on -b off foreach_begin2_metadata1
opexprlanguage -s hscript foreach_begin2_metadata1

# Node Input_2 (Sop/object_merge)
opadd -e -n object_merge Input_2
oplocate -x 7.4699999999999998 -y -2.23 Input_2
opspareds "" Input_2
opparm Input_2  numobj ( 1 )
opparm -V 20.5.522 Input_2 numobj ( 1 ) _separator ( ) xformtype ( object ) xformpath ( "" ) invertxform ( off ) createptgroups ( off ) ptgroupprefix ( _ptgrp_ ) createprimgroups ( off ) primgroupprefix ( _primgrp_ ) verbosegroups ( off ) suffixfirstgroup ( on ) createptstring ( off ) createprimstring ( off ) pathattrib ( objname ) pack ( off ) pivot ( centroid ) viewportlod ( full ) addpath ( on ) enable1 ( on ) objpath1 ( '`opinputpath("../..", 1)`' ) group1 ( "" ) expand1 ( off )
chlock Input_2 -*
chautoscope Input_2 -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 Input_2
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F off -c on -e on -b off Input_2
opexprlanguage -s hscript Input_2

# Node foreach_end2 (Sop/block_end)
opadd -e -n block_end foreach_end2
oplocate -x -2.5 -y -7.1500000000000004 foreach_end2
opspareds "" foreach_end2
chblockbegin
chadd -t 0 0 foreach_end2 iterations
chkey -t 0 -v 0 -V 0 -m 0 -M 0 -a 0 -A 0 -F 'ch("../../../../list")' foreach_end2/iterations
chblockend
opparm -V 20.5.522 foreach_end2 itermethod ( count ) method ( feedback ) iterations ( iterations ) startvalue ( 1 ) increment ( 1 ) class ( point ) useattrib ( on ) attrib ( "" ) usemaxiter ( off ) maxiter ( 10 ) blockpath ( ../foreach_begin2 ) templatepath ( ../foreach_begin2 ) resetcookpass ( 0 ) dosinglepass ( off ) singlepass ( 0 ) stopcondition ( 0 ) multithread ( off )
chlock foreach_end2 -*
chautoscope foreach_end2 -*
opcolor -c 0.75 0.40000000596046448 0 foreach_end2
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F off -c on -e on -b off foreach_end2
opexprlanguage -s hscript foreach_end2

# Node foreach_begin2 (Sop/block_begin)
opadd -e -n block_begin foreach_begin2
oplocate -x -4.5 -y -4.1500000000000004 foreach_begin2
opspareds "" foreach_begin2
opparm -V 20.5.522 foreach_begin2 method ( feedback ) blockpath ( ../foreach_end2 ) resetcookpass ( 0 ) createmetablock ( 0 ) label1 ( 'iteration, numiterations, value, ivalue' )
chlock foreach_begin2 -*
chautoscope foreach_begin2 -*
opcolor -c 0.75 0.40000000596046448 0 foreach_begin2
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F off -c on -e on -b off foreach_begin2
opexprlanguage -s hscript foreach_begin2

# Node foreach_count2 (Sop/block_begin)
opadd -e -n block_begin foreach_count2
oplocate -x -6.5 -y -4.1500000000000004 foreach_count2
opspareds "" foreach_count2
opparm -V 20.5.522 foreach_count2 method ( metadata ) blockpath ( ../foreach_end2 ) resetcookpass ( 0 ) createmetablock ( 0 ) label1 ( 'iteration, numiterations, value, ivalue' )
chlock foreach_count2 -*
chautoscope foreach_count2 -*
opcolor -c 0.75 0.40000000596046448 0 foreach_count2
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F off -c on -e on -b off foreach_count2
opexprlanguage -s hscript foreach_count2

# Node python2 (Sop/python)
opadd -e -n python python2
oplocate -x -4.5 -y -5.1500000000000004 python2
opspareds '    parm {         name    "python"         baseparm         label   "Python Code"         export  none     }     parm {         name    "maintainstate"         baseparm         label   "Maintain State"         export  none     }     parm {         name    "spare_input0"         label   "Spare Input 0"         type    oppath         default { "" }         help    "Refer to this in expressions as -1, such as: npoints(-1)"         parmtag { "cook_dependent" "1" }         parmtag { "opfilter" "!!SOP!!" }         parmtag { "oprelative" "." }     } ' python2
opparm -V 20.5.522 python2 python ( '#- Me\nnode = hou.pwd()\n\n#- Geometry of metadata block\ngeo = node.inputs()[1].geometry()\n\n#- parent node (tool ui)\nlevelup = node.parent().parent().parent().parent();\nprint(levelup)\n\n#- Get iteration number, add 1 as multiblocks are 1 - based\niteration = str(geo.intAttribValue("iteration") + 1)\n\n#- In the ui, attribute fields are labelled \'attribute\' plus the index (mapping to iteration)\nlookup    = f"attribute{iteration}"\n\n#- Fetch the attribute name as depicted in the ui\nattribute = levelup.parm(lookup).eval()\n#print(attribute)\n\n#- Set the \'attribute\' parameter on the \'export\' wrangle, the attrib promotes are linked\nnet = hou.pwd().parent().node(\'fetch\').parm(\'attribute\').set(attribute)\n#print(net)\n\n\n\n\n\n\n' ) maintainstate ( off ) spare_input0 ( "" )
chlock python2 -*
chautoscope python2 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off python2
opexprlanguage -s hscript python2

# Node Input_3 (Sop/object_merge)
opadd -e -n object_merge Input_3
oplocate -x 8.7699999999999996 -y -2.8500000000000001 Input_3
opspareds "" Input_3
opparm Input_3  numobj ( 1 )
opparm -V 20.5.522 Input_3 numobj ( 1 ) _separator ( ) xformtype ( object ) xformpath ( "" ) invertxform ( off ) createptgroups ( off ) ptgroupprefix ( _ptgrp_ ) createprimgroups ( off ) primgroupprefix ( _primgrp_ ) verbosegroups ( off ) suffixfirstgroup ( on ) createptstring ( off ) createprimstring ( off ) pathattrib ( objname ) pack ( off ) pivot ( centroid ) viewportlod ( full ) addpath ( on ) enable1 ( on ) objpath1 ( '`opinputpath("../..", 2)`' ) group1 ( "" ) expand1 ( off )
chlock Input_3 -*
chautoscope Input_3 -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 Input_3
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F off -c on -e on -b off Input_3
opexprlanguage -s hscript Input_3

# Node switch3 (Sop/switch)
opadd -e -n switch switch3
oplocate -x -2.5 -y -1.1499999999999999 switch3
opspareds "" switch3
chblockbegin
chadd -t 0 0 switch3 input
chkey -t 0 -v 0 -V 0 -m 0 -M 0 -a 0 -A 0 -F 'ch("../runover")' switch3/input
chblockend
opparm -V 20.5.522 switch3 input ( input )
chlock switch3 -*
chautoscope switch3 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off switch3
opexprlanguage -s hscript switch3
opuserdata -n 'nodeshape' -v 'rect' switch3

# Node Input_4 (Sop/object_merge)
opadd -e -n object_merge Input_4
oplocate -x 10.289999999999999 -y -3.3999999999999999 Input_4
opspareds "" Input_4
opparm Input_4  numobj ( 1 )
opparm -V 20.5.522 Input_4 numobj ( 1 ) _separator ( ) xformtype ( object ) xformpath ( "" ) invertxform ( off ) createptgroups ( off ) ptgroupprefix ( _ptgrp_ ) createprimgroups ( off ) primgroupprefix ( _primgrp_ ) verbosegroups ( off ) suffixfirstgroup ( on ) createptstring ( off ) createprimstring ( off ) pathattrib ( objname ) pack ( off ) pivot ( centroid ) viewportlod ( full ) addpath ( on ) enable1 ( on ) objpath1 ( '`opinputpath("../..", 3)`' ) group1 ( "" ) expand1 ( off )
chlock Input_4 -*
chautoscope Input_4 -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 Input_4
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F off -c on -e on -b off Input_4
opexprlanguage -s hscript Input_4
oporder -e Prev_Frame OUT export_point min max fetch debug export_prim Input_1 foreach_end1 foreach_begin1 foreach_count1 python1 foreach_begin2_metadata1 Input_2 foreach_end2 foreach_begin2 foreach_count2 python2 Input_3 switch3 Input_4 
opcf ..

# End of editable subnode
opcf ../..


# Node export_prim (Sop/attribwrangle)
opadd -e -n attribwrangle export_prim
oplocate -x -8.5 -y 2.8500000000000001 export_prim
opspareds '    group {         name    "folder1"         label   "Code"          parm {             name    "group"             baseparm             label   "Group"             export  none             bindselector uvselect "Modify Attribs"                 "Select the geometry to affect and press Enter to complete."                 0 1 0xffffffff 0 grouptype 0         }         parm {             name    "grouptype"             baseparm             label   "Group Type"             export  none         }         parm {             name    "class"             baseparm             label   "Run Over"             export  none         }         parm {             name    "vex_numcount"             baseparm             label   "Number Count"             export  none         }         parm {             name    "vex_threadjobsize"             baseparm             label   "Thread Job Size"             export  none         }         groupsimple {             name    "folder_generatedparms_snippet"             label   "Generated Channel Parameters"             grouptag { "group_type" "simple" }             grouptag { "sidefx::look" "blank" }              parm {                 name    "attribute"                 label   "Attribute"                 type    string                 default { "" }             }             parm {                 name    "export_mode"                 label   "Export Mode"                 type    integer                 default { "0" }                 range   { 0 10 }             }             parm {                 name    "array_mode"                 label   "Array Mode"                 type    integer                 default { "0" }                 range   { 0 10 }             }         }          parm {             name    "snippet"             baseparm             label   "VEXpression"             export  all         }         parm {             name    "exportlist"             baseparm             label   "Attributes to Create"             export  none         }         parm {             name    "vex_strict"             baseparm             label   "Enforce Prototypes"             export  none         }     }      group {         name    "folder1_1"         label   "Bindings"          parm {             name    "autobind"             baseparm             label   "Autobind by Name"             export  none         }         multiparm {             name    "bindings"             label    "Number of Bindings"             baseparm             default 0             parmtag { "autoscope" "0000000000000000" }             parmtag { "multistartoffset" "1" }              parm {                 name    "bindname#"                 baseparm                 label   "Attribute Name"                 export  none             }             parm {                 name    "bindparm#"                 baseparm                 label   "VEX Parameter"                 export  none             }         }          parm {             name    "groupautobind"             baseparm             label   "Autobind Groups by Name"             export  none         }         multiparm {             name    "groupbindings"             label    "Group Bindings"             baseparm             default 0             parmtag { "autoscope" "0000000000000000" }             parmtag { "multistartoffset" "1" }              parm {                 name    "bindgroupname#"                 baseparm                 label   "Group Name"                 export  none             }             parm {                 name    "bindgroupparm#"                 baseparm                 label   "VEX Parameter"                 export  none             }         }          parm {             name    "vex_cwdpath"             baseparm             label   "Evaluation Node Path"             export  none         }         parm {             name    "vex_outputmask"             baseparm             label   "Export Parameters"             export  none         }         parm {             name    "vex_updatenmls"             baseparm             label   "Update Normals If Displaced"             export  none         }         parm {             name    "vex_matchattrib"             baseparm             label   "Attribute to Match"             export  none         }         parm {             name    "vex_inplace"             baseparm             label   "Compute Results In Place"             export  none         }         parm {             name    "vex_selectiongroup"             baseparm             label   "Output Selection Group"             export  none         }         parm {             name    "vex_precision"             baseparm             label   "VEX Precision"             export  none         }     }  ' export_prim
opparm export_prim  bindings ( 0 ) groupbindings ( 0 )
chblockbegin
chadd -t 0 0 export_prim export_mode
chkey -t 0 -v 0 -V 0 -m 0 -M 0 -a 0 -A 0 -F 'ch("../exportas")' export_prim/export_mode
chadd -t 0 0 export_prim array_mode
chkey -t 0 -v 0 -V 0 -m 0 -M 0 -a 0 -A 0 -F 'ch("../exportbounds")' export_prim/array_mode
chblockend
opparm export_prim folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( primitive ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( '//- Fetch the name of the attribute, and the value\nstring handle = chs(\'attribute\');\nfloat attribute = prim(0, handle, @primnum);\n\n//- Fetch the bounds calculated by attribute promote\nfloat min = detail(1, handle, 0); float max = detail(2, handle, 0);\n\n//- Normalize the attribute\nfloat normalized = fit(attribute, min, max, 0, 1);\n\n//- Mode as described in UI tooltip\nint exportmode = chi(\'export_mode\');\n\n//- Overwrite Existing\nif (exportmode == 0) { setprimattrib(0, handle, @primnum, normalized, \'set\'); }\n\n//- Export New Attribute\nif (exportmode == 1) { setprimattrib(0, concat(handle, \'_n\'), @primnum, normalized, \'set\'); }\n\n//- If \'Export Bounds\' is enabled\nint arrmode = chi(\'array_mode\');\n\nif ( arrmode == 1 )\n{\n    //- Store bounds in a array\n    float arr [] = array(min, max); \n    \n    //- \n    string arrname = concat(handle, \'range\');\n    setdetailattrib(0, arrname, arr, \'set\');\n}\n' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto ) folder1 ( 0 0 ) folder_generatedparms_snippet ( 0 ) attribute ( "" ) export_mode ( export_mode ) array_mode ( array_mode )
chlock export_prim -*
chautoscope export_prim -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off export_prim
opexprlanguage -s hscript export_prim
opuserdata -n '___Version___' -v '' export_prim

# Node foreach_end1 (Sop/block_end)
opadd -e -n block_end foreach_end1
oplocate -x -6.5 -y 0.84999999999999998 foreach_end1
opspareds "" foreach_end1
chblockbegin
chadd -t 0 0 foreach_end1 iterations
chkey -t 0 -v 0 -V 0 -m 0 -M 0 -a 0 -A 0 -F 'ch("../list")' foreach_end1/iterations
chblockend
opparm -V 20.5.522 foreach_end1 itermethod ( count ) method ( feedback ) iterations ( iterations ) startvalue ( 1 ) increment ( 1 ) class ( point ) useattrib ( on ) attrib ( "" ) usemaxiter ( off ) maxiter ( 10 ) blockpath ( ../foreach_begin1 ) templatepath ( ../foreach_begin1 ) resetcookpass ( 0 ) dosinglepass ( off ) singlepass ( 0 ) stopcondition ( 0 ) multithread ( off )
chlock foreach_end1 -*
chautoscope foreach_end1 -*
opcolor -c 0.75 0.40000000596046448 0 foreach_end1
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F off -c on -e on -b off foreach_end1
opexprlanguage -s hscript foreach_end1

# Node foreach_begin1 (Sop/block_begin)
opadd -e -n block_begin foreach_begin1
oplocate -x -6.5 -y 4.8499999999999996 foreach_begin1
opspareds "" foreach_begin1
opparm -V 20.5.522 foreach_begin1 method ( feedback ) blockpath ( ../foreach_end1 ) resetcookpass ( 0 ) createmetablock ( 0 ) label1 ( 'iteration, numiterations, value, ivalue' )
chlock foreach_begin1 -*
chautoscope foreach_begin1 -*
opcolor -c 0.75 0.40000000596046448 0 foreach_begin1
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F off -c on -e on -b off foreach_begin1
opexprlanguage -s hscript foreach_begin1

# Node foreach_count1 (Sop/block_begin)
opadd -e -n block_begin foreach_count1
oplocate -x -8.5 -y 4.8499999999999996 foreach_count1
opspareds "" foreach_count1
opparm -V 20.5.522 foreach_count1 method ( metadata ) blockpath ( ../foreach_end1 ) resetcookpass ( 0 ) createmetablock ( 0 ) label1 ( 'iteration, numiterations, value, ivalue' )
chlock foreach_count1 -*
chautoscope foreach_count1 -*
opcolor -c 0.75 0.40000000596046448 0 foreach_count1
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F off -c on -e on -b off foreach_count1
opexprlanguage -s hscript foreach_count1

# Node null1 (Sop/null)
opadd -e -n null null1
oplocate -x -6.5 -y 5.8200000000000003 null1
opspareds "" null1
opparm -V 20.5.522 null1 copyinput ( on ) cacheinput ( off )
chlock null1 -*
chautoscope null1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off null1
opexprlanguage -s hscript null1

# Node python1 (Sop/python)
opadd -e -n python python1
oplocate -x -6.5 -y 3.8500000000000001 python1
opspareds '    parm {         name    "python"         baseparm         label   "Python Code"         export  none     }     parm {         name    "maintainstate"         baseparm         label   "Maintain State"         export  none     }     parm {         name    "spare_input0"         label   "Spare Input 0"         type    oppath         default { "" }         help    "Refer to this in expressions as -1, such as: npoints(-1)"         parmtag { "cook_dependent" "1" }         parmtag { "opfilter" "!!SOP!!" }         parmtag { "oprelative" "." }     } ' python1
opparm -V 20.5.522 python1 python ( '#- Me\nnode = hou.pwd()\n\n#- Geometry of metadata block\ngeo = node.inputs()[1].geometry()\n\n#- parent node (tool ui)\nlevelup = node.parent();\n\n#- Get iteration number, add 1 as multiblocks are 1 - based\niteration = str(geo.intAttribValue("iteration") + 1)\n\n#- In the ui, attribute fields are labelled \'attribute\' plus the index (mapping to iteration)\nlookup    = f"attribute{iteration}"\n\n#- Fetch the attribute name as depicted in the ui\nattribute = levelup.parm(lookup).eval()\n#print(attribute)\n\n#- Set the \'attribute\' parameter on the \'export\' wrangle, the attrib promotes are linked\nnet = hou.pwd().parent().node(\'export_point\').parm(\'attribute\').set(attribute)\nnet = hou.pwd().parent().node(\'export_prim\').parm(\'attribute\').set(attribute)\n#print(net)\n\n\n\n\n\n\n' ) maintainstate ( off ) spare_input0 ( "" )
chlock python1 -*
chautoscope python1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off python1
opexprlanguage -s hscript python1

# Node retime1 (Sop/retime)
opadd -e -n retime retime1
oplocate -x 3.5 -y 7.8499999999999996 retime1
opspareds "" retime1
chblockbegin
chadd -t 0 0 retime1 frame
chkey -t 0 -v 0 -V 0 -m 0 -M 0 -a 0 -A 0 -F '$FF' retime1/frame
chadd -t 0 0 retime1 time
chkey -t 0 -v 0 -V 0 -m 0 -M 0 -a 0 -A 0 -F '$T' retime1/time
chadd -t 0 0 retime1 startframe
chkey -t 0 -v 0 -V 0 -m 0 -M 0 -a 0 -A 0 -F 'ch("inputrangex")' retime1/startframe
chadd -t 0 0 retime1 outputrangex
chkey -t 0 -v 0 -V 0 -m 0 -M 0 -a 0 -A 0 -F 'ch("../startframe")' retime1/outputrangex
chadd -t 0 0 retime1 outputrangey
chkey -t 0 -v 0 -V 0 -m 0 -M 0 -a 0 -A 0 -F 'ch("../endframe") / ch("../divisor")' retime1/outputrangey
chadd -t 0 0 retime1 inputrangex
chkey -t 0 -v 0 -V 0 -m 0 -M 0 -a 0 -A 0 -F 'ch("../startframe")' retime1/inputrangex
chadd -t 0 0 retime1 inputrangey
chkey -t 0 -v 0 -V 0 -m 0 -M 0 -a 0 -A 0 -F 'ch("../endframe")' retime1/inputrangey
chadd -t 0 0 retime1 timestep
chkey -t 0 -v 0 -V 0 -m 0 -M 0 -a 0 -A 0 -F '1 / $FPS' retime1/timestep
chblockend
opparm retime1 folder0 ( 0 ) evalmode ( fit ) frame ( frame ) time ( time ) startframe ( startframe ) speed ( 1 ) shiftframe ( 1 ) outputrange ( outputrangex outputrangey ) opreb ( hold ) opostb ( hold ) inputrange ( inputrangex inputrangey ) ipreb ( hold ) ipostb ( hold ) substep ( 1 ) folder3 ( 0 ) addframeattribs ( off ) outframeattrib ( output_frame ) inframeattrib ( input_frame ) _ ( "" ) sepparm ( ) folder2 ( 0 ) interpolate ( on ) doslerp ( on ) interp ( linear ) timestep ( timestep ) usevforpinterp ( on ) scalevel ( off ) folder1 ( 0 0 ) attribs ( * ) ptidattr ( id ) unmatchedpts ( freeze ) unmatchedgroup ( unmatched ) primidattr ( name ) voxelblend ( none ) vel ( vel ) advdt ( 0.02 ) interpvel ( off )
chlock retime1 -*
chautoscope retime1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off retime1
opexprlanguage -s hscript retime1
opuserdata -n '___Version___' -v '' retime1

# Node switch1 (Sop/switch)
opadd -e -n switch switch1
oplocate -x -0.5 -y -0.17000000000000001 switch1
opspareds "" switch1
chblockbegin
chadd -t 0 0 switch1 input
chkey -t 0 -v 0 -V 0 -m 0 -M 0 -a 0 -A 0 -F 'ch("../sample")' switch1/input
chblockend
opparm -V 20.5.522 switch1 input ( input )
chlock switch1 -*
chautoscope switch1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off switch1
opexprlanguage -s hscript switch1

# Node export_point1 (Sop/attribwrangle)
opadd -e -n attribwrangle export_point1
oplocate -x 3.5 -y 2.8500000000000001 export_point1
opspareds '    group {         name    "folder1"         label   "Code"          parm {             name    "group"             baseparm             label   "Group"             export  none             bindselector uvselect "Modify Attribs"                 "Select the geometry to affect and press Enter to complete."                 0 1 0xffffffff 0 grouptype 0         }         parm {             name    "grouptype"             baseparm             label   "Group Type"             export  none         }         parm {             name    "class"             baseparm             label   "Run Over"             export  none         }         parm {             name    "vex_numcount"             baseparm             label   "Number Count"             export  none         }         parm {             name    "vex_threadjobsize"             baseparm             label   "Thread Job Size"             export  none         }         groupsimple {             name    "folder_generatedparms_snippet"             label   "Generated Channel Parameters"             grouptag { "group_type" "simple" }             grouptag { "sidefx::look" "blank" }              parm {                 name    "attribute"                 label   "Attribute"                 type    string                 default { "" }             }             parm {                 name    "export_mode"                 label   "Export Mode"                 type    integer                 default { "0" }                 range   { 0 10 }             }             parm {                 name    "array_mode"                 label   "Array Mode"                 type    integer                 default { "0" }                 range   { 0 10 }             }         }          parm {             name    "snippet"             baseparm             label   "VEXpression"             export  all         }         parm {             name    "exportlist"             baseparm             label   "Attributes to Create"             export  none         }         parm {             name    "vex_strict"             baseparm             label   "Enforce Prototypes"             export  none         }     }      group {         name    "folder1_1"         label   "Bindings"          parm {             name    "autobind"             baseparm             label   "Autobind by Name"             export  none         }         multiparm {             name    "bindings"             label    "Number of Bindings"             baseparm             default 0             parmtag { "autoscope" "0000000000000000" }             parmtag { "multistartoffset" "1" }              parm {                 name    "bindname#"                 baseparm                 label   "Attribute Name"                 export  none             }             parm {                 name    "bindparm#"                 baseparm                 label   "VEX Parameter"                 export  none             }         }          parm {             name    "groupautobind"             baseparm             label   "Autobind Groups by Name"             export  none         }         multiparm {             name    "groupbindings"             label    "Group Bindings"             baseparm             default 0             parmtag { "autoscope" "0000000000000000" }             parmtag { "multistartoffset" "1" }              parm {                 name    "bindgroupname#"                 baseparm                 label   "Group Name"                 export  none             }             parm {                 name    "bindgroupparm#"                 baseparm                 label   "VEX Parameter"                 export  none             }         }          parm {             name    "vex_cwdpath"             baseparm             label   "Evaluation Node Path"             export  none         }         parm {             name    "vex_outputmask"             baseparm             label   "Export Parameters"             export  none         }         parm {             name    "vex_updatenmls"             baseparm             label   "Update Normals If Displaced"             export  none         }         parm {             name    "vex_matchattrib"             baseparm             label   "Attribute to Match"             export  none         }         parm {             name    "vex_inplace"             baseparm             label   "Compute Results In Place"             export  none         }         parm {             name    "vex_selectiongroup"             baseparm             label   "Output Selection Group"             export  none         }         parm {             name    "vex_precision"             baseparm             label   "VEX Precision"             export  none         }     }  ' export_point1
opparm export_point1  bindings ( 0 ) groupbindings ( 0 )
chblockbegin
chadd -t 0 0 export_point1 export_mode
chkey -t 0 -v 0 -V 0 -m 0 -M 0 -a 0 -A 0 -F 'ch("../exportas")' export_point1/export_mode
chadd -t 0 0 export_point1 array_mode
chkey -t 0 -v 0 -V 0 -m 0 -M 0 -a 0 -A 0 -F 'ch("../exportbounds")' export_point1/array_mode
chblockend
opparm export_point1 folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( point ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( '//- Fetch the name of the attribute, and the value\nstring handle = chs(\'attribute\'); \nfloat attribute = point(0, handle, @ptnum);\n\n//- Fetch the bounds array of second input\nstring boundname = concat(handle,\'range\'); float bounds [] = detail(1, boundname, 0);\n\n//- Extract min/max from bounds\nfloat min = getcomp(bounds, 0); float max = getcomp(bounds, 1);\n\n//- Normalize the attribute\nfloat normalized = fit(attribute, min, max, 0, 1);\n\n//- Mode as described in UI tooltip\nint exportmode = chi(\'export_mode\');\n\n//- Overwrite Existing\nif (exportmode == 0) { setpointattrib(0, handle, @ptnum, normalized, \'set\'); }\n\n//- Export New Attribute\nif (exportmode == 1) { setpointattrib(0, concat(handle, \'_n\'), @ptnum, normalized, \'set\'); }\n\n//- If \'Export Bounds\' is enabled\nint arrmode = chi(\'array_mode\');\n\nif ( arrmode == 1 )\n{\n    setdetailattrib(0, boundname, bounds, \'set\');\n}\n' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto ) folder1 ( 0 0 ) folder_generatedparms_snippet ( 0 ) attribute ( ptfoo ) export_mode ( export_mode ) array_mode ( array_mode )
chlock export_point1 -*
chautoscope export_point1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off export_point1
opexprlanguage -s hscript export_point1
opuserdata -n '___Version___' -v '' export_point1

# Node foreach_begin2_metadata1 (Sop/block_begin)
opadd -e -n block_begin foreach_begin2_metadata1
oplocate -x 3.5 -y 4.8499999999999996 foreach_begin2_metadata1
opspareds "" foreach_begin2_metadata1
opparm -V 20.5.522 foreach_begin2_metadata1 method ( input ) blockpath ( ../foreach_end2 ) resetcookpass ( 0 ) createmetablock ( 0 ) label1 ( 'iteration, numiterations, value, ivalue' )
chlock foreach_begin2_metadata1 -*
chautoscope foreach_begin2_metadata1 -*
opcolor -c 0.75 0.40000000596046448 0 foreach_begin2_metadata1
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F off -c on -e on -b off foreach_begin2_metadata1
opexprlanguage -s hscript foreach_begin2_metadata1

# Node export_prim1 (Sop/attribwrangle)
opadd -e -n attribwrangle export_prim1
oplocate -x 1.5 -y 2.8500000000000001 export_prim1
opspareds '    group {         name    "folder1"         label   "Code"          parm {             name    "group"             baseparm             label   "Group"             export  none             bindselector uvselect "Modify Attribs"                 "Select the geometry to affect and press Enter to complete."                 0 1 0xffffffff 0 grouptype 0         }         parm {             name    "grouptype"             baseparm             label   "Group Type"             export  none         }         parm {             name    "class"             baseparm             label   "Run Over"             export  none         }         parm {             name    "vex_numcount"             baseparm             label   "Number Count"             export  none         }         parm {             name    "vex_threadjobsize"             baseparm             label   "Thread Job Size"             export  none         }         groupsimple {             name    "folder_generatedparms_snippet"             label   "Generated Channel Parameters"             grouptag { "group_type" "simple" }             grouptag { "sidefx::look" "blank" }              parm {                 name    "attribute"                 label   "Attribute"                 type    string                 default { "" }             }             parm {                 name    "export_mode"                 label   "Export Mode"                 type    integer                 default { "0" }                 range   { 0 10 }             }             parm {                 name    "array_mode"                 label   "Array Mode"                 type    integer                 default { "0" }                 range   { 0 10 }             }         }          parm {             name    "snippet"             baseparm             label   "VEXpression"             export  all         }         parm {             name    "exportlist"             baseparm             label   "Attributes to Create"             export  none         }         parm {             name    "vex_strict"             baseparm             label   "Enforce Prototypes"             export  none         }     }      group {         name    "folder1_1"         label   "Bindings"          parm {             name    "autobind"             baseparm             label   "Autobind by Name"             export  none         }         multiparm {             name    "bindings"             label    "Number of Bindings"             baseparm             default 0             parmtag { "autoscope" "0000000000000000" }             parmtag { "multistartoffset" "1" }              parm {                 name    "bindname#"                 baseparm                 label   "Attribute Name"                 export  none             }             parm {                 name    "bindparm#"                 baseparm                 label   "VEX Parameter"                 export  none             }         }          parm {             name    "groupautobind"             baseparm             label   "Autobind Groups by Name"             export  none         }         multiparm {             name    "groupbindings"             label    "Group Bindings"             baseparm             default 0             parmtag { "autoscope" "0000000000000000" }             parmtag { "multistartoffset" "1" }              parm {                 name    "bindgroupname#"                 baseparm                 label   "Group Name"                 export  none             }             parm {                 name    "bindgroupparm#"                 baseparm                 label   "VEX Parameter"                 export  none             }         }          parm {             name    "vex_cwdpath"             baseparm             label   "Evaluation Node Path"             export  none         }         parm {             name    "vex_outputmask"             baseparm             label   "Export Parameters"             export  none         }         parm {             name    "vex_updatenmls"             baseparm             label   "Update Normals If Displaced"             export  none         }         parm {             name    "vex_matchattrib"             baseparm             label   "Attribute to Match"             export  none         }         parm {             name    "vex_inplace"             baseparm             label   "Compute Results In Place"             export  none         }         parm {             name    "vex_selectiongroup"             baseparm             label   "Output Selection Group"             export  none         }         parm {             name    "vex_precision"             baseparm             label   "VEX Precision"             export  none         }     }  ' export_prim1
opparm export_prim1  bindings ( 0 ) groupbindings ( 0 )
chblockbegin
chadd -t 0 0 export_prim1 export_mode
chkey -t 0 -v 0 -V 0 -m 0 -M 0 -a 0 -A 0 -F 'ch("../exportas")' export_prim1/export_mode
chadd -t 0 0 export_prim1 array_mode
chkey -t 0 -v 0 -V 0 -m 0 -M 0 -a 0 -A 0 -F 'ch("../exportbounds")' export_prim1/array_mode
chblockend
opparm export_prim1 folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( primitive ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( '//- Fetch the name of the attribute, and the value\nstring handle = chs(\'attribute\'); \nfloat attribute = prim(0, handle, @primnum);\n\n//- Fetch the bounds array of second input\nstring boundname = concat(handle,\'range\'); float bounds [] = detail(1, boundname, 0);\n\n//- Extract min/max from bounds\nfloat min = getcomp(bounds, 0); float max = getcomp(bounds, 1);\n\n//- Normalize the attribute\nfloat normalized = fit(attribute, min, max, 0, 1);\n\n//- Mode as described in UI tooltip\nint exportmode = chi(\'export_mode\');\n\n//- Overwrite Existing\nif (exportmode == 0) { setprimattrib(0, handle, @primnum, normalized, \'set\'); }\n\n//- Export New Attribute\nif (exportmode == 1) { setprimattrib(0, concat(handle, \'_n\'), @primnum, normalized, \'set\'); }\n\n//- If \'Export Bounds\' is enabled\nint arrmode = chi(\'array_mode\');\n\nif ( arrmode == 1 )\n{\n    setdetailattrib(0, boundname, bounds, \'set\');\n}\n' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto ) folder1 ( 0 0 ) folder_generatedparms_snippet ( 0 ) attribute ( ptfoo ) export_mode ( export_mode ) array_mode ( array_mode )
chlock export_prim1 -*
chautoscope export_prim1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off export_prim1
opexprlanguage -s hscript export_prim1
opuserdata -n '___Version___' -v '' export_prim1

# Node timeshift2 (Sop/timeshift)
opadd -e -n timeshift timeshift2
oplocate -x 3.5 -y 5.8499999999999996 timeshift2
opspareds "" timeshift2
chblockbegin
chadd -t 0 0 timeshift2 frame
chkey -t 0 -v 0 -V 0 -m 0 -M 0 -a 0 -A 0 -F 'ch("../retime1/outputrangey")' timeshift2/frame
chadd -t 0 0 timeshift2 time
chkey -t 0 -v 0 -V 0 -m 0 -M 0 -a 0 -A 0 -F '$T' timeshift2/time
chadd -t 0 0 timeshift2 frange1
chkey -t 0 -v 0 -V 0 -m 0 -M 0 -a 0 -A 0 -F '$FSTART' timeshift2/frange1
chadd -t 0 0 timeshift2 frange2
chkey -t 0 -v 0 -V 0 -m 0 -M 0 -a 0 -A 0 -F '$FEND' timeshift2/frange2
chadd -t 0 0 timeshift2 trange1
chkey -t 0 -v 0 -V 0 -m 0 -M 0 -a 0 -A 0 -F '$TSTART' timeshift2/trange1
chadd -t 0 0 timeshift2 trange2
chkey -t 0 -v 0 -V 0 -m 0 -M 0 -a 0 -A 0 -F '$TEND' timeshift2/trange2
chblockend
opparm -V 20.5.522 timeshift2 method ( byframe ) frame ( frame ) integerframe ( on ) time ( time ) rangeclamp ( none ) frange ( frange1 frange2 ) trange ( trange1 trange2 )
chlock timeshift2 -*
chautoscope timeshift2 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off timeshift2
opexprlanguage -s hscript timeshift2

# Node foreach_end2 (Sop/block_end)
opadd -e -n block_end foreach_end2
oplocate -x 3.5 -y 0.84999999999999998 foreach_end2
opspareds "" foreach_end2
chblockbegin
chadd -t 0 0 foreach_end2 iterations
chkey -t 0 -v 0 -V 0 -m 0 -M 0 -a 0 -A 0 -F 'ch("../list")' foreach_end2/iterations
chblockend
opparm -V 20.5.522 foreach_end2 itermethod ( count ) method ( feedback ) iterations ( iterations ) startvalue ( 1 ) increment ( 1 ) class ( point ) useattrib ( on ) attrib ( "" ) usemaxiter ( off ) maxiter ( 10 ) blockpath ( ../foreach_begin2 ) templatepath ( ../foreach_begin2 ) resetcookpass ( 0 ) dosinglepass ( off ) singlepass ( 0 ) stopcondition ( 0 ) multithread ( off )
chlock foreach_end2 -*
chautoscope foreach_end2 -*
opcolor -c 0.75 0.40000000596046448 0 foreach_end2
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F off -c on -e on -b off foreach_end2
opexprlanguage -s hscript foreach_end2

# Node foreach_begin2 (Sop/block_begin)
opadd -e -n block_begin foreach_begin2
oplocate -x 1.5 -y 4.8499999999999996 foreach_begin2
opspareds "" foreach_begin2
opparm -V 20.5.522 foreach_begin2 method ( feedback ) blockpath ( ../foreach_end2 ) resetcookpass ( 0 ) createmetablock ( 0 ) label1 ( 'iteration, numiterations, value, ivalue' )
chlock foreach_begin2 -*
chautoscope foreach_begin2 -*
opcolor -c 0.75 0.40000000596046448 0 foreach_begin2
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F off -c on -e on -b off foreach_begin2
opexprlanguage -s hscript foreach_begin2

# Node foreach_count2 (Sop/block_begin)
opadd -e -n block_begin foreach_count2
oplocate -x -0.5 -y 4.8499999999999996 foreach_count2
opspareds "" foreach_count2
opparm -V 20.5.522 foreach_count2 method ( metadata ) blockpath ( ../foreach_end2 ) resetcookpass ( 0 ) createmetablock ( 0 ) label1 ( 'iteration, numiterations, value, ivalue' )
chlock foreach_count2 -*
chautoscope foreach_count2 -*
opcolor -c 0.75 0.40000000596046448 0 foreach_count2
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F off -c on -e on -b off foreach_count2
opexprlanguage -s hscript foreach_count2

# Node python2 (Sop/python)
opadd -e -n python python2
oplocate -x 1.5 -y 3.8500000000000001 python2
opspareds '    parm {         name    "python"         baseparm         label   "Python Code"         export  none     }     parm {         name    "maintainstate"         baseparm         label   "Maintain State"         export  none     }     parm {         name    "spare_input0"         label   "Spare Input 0"         type    oppath         default { "" }         help    "Refer to this in expressions as -1, such as: npoints(-1)"         parmtag { "cook_dependent" "1" }         parmtag { "opfilter" "!!SOP!!" }         parmtag { "oprelative" "." }     } ' python2
opparm -V 20.5.522 python2 python ( '#- Me\nnode = hou.pwd()\n\n#- Geometry of metadata block\ngeo = node.inputs()[1].geometry()\n\n#- parent node (tool ui)\nlevelup = node.parent();\n\n#- Get iteration number, add 1 as multiblocks are 1 - based\niteration = str(geo.intAttribValue("iteration") + 1)\n\n#- In the ui, attribute fields are labelled \'attribute\' plus the index (mapping to iteration)\nlookup    = f"attribute{iteration}"\n\n#- Fetch the attribute name as depicted in the ui\nattribute = levelup.parm(lookup).eval()\n#print(attribute)\n\n#- Set the \'attribute\' parameter on the \'export\' wrangle, the attrib promotes are linked\nnet = hou.pwd().parent().node(\'export_point1\').parm(\'attribute\').set(attribute)\nnet = hou.pwd().parent().node(\'export_prim1\').parm(\'attribute\').set(attribute)\n#print(net)\n\n\n\n\n\n\n' ) maintainstate ( off ) spare_input0 ( "" )
chlock python2 -*
chautoscope python2 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off python2
opexprlanguage -s hscript python2

# Node switch2 (Sop/switch)
opadd -e -n switch switch2
oplocate -x -6.5 -y 1.8300000000000001 switch2
opspareds "" switch2
chblockbegin
chadd -t 0 0 switch2 input
chkey -t 0 -v 0 -V 0 -m 0 -M 0 -a 0 -A 0 -F 'ch("../runover")' switch2/input
chblockend
opparm -V 20.5.522 switch2 input ( input )
chlock switch2 -*
chautoscope switch2 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off switch2
opexprlanguage -s hscript switch2
opuserdata -n 'nodeshape' -v 'rect' switch2

# Node switch3 (Sop/switch)
opadd -e -n switch switch3
oplocate -x 3.5 -y 1.8300000000000001 switch3
opspareds "" switch3
chblockbegin
chadd -t 0 0 switch3 input
chkey -t 0 -v 0 -V 0 -m 0 -M 0 -a 0 -A 0 -F 'ch("../runover")' switch3/input
chblockend
opparm -V 20.5.522 switch3 input ( input )
chlock switch3 -*
chautoscope switch3 -*
opset -d on -r on -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off switch3
opexprlanguage -s hscript switch3
opuserdata -n 'nodeshape' -v 'rect' switch3
oporder -e output0 export_point min max sample_range export_prim foreach_end1 foreach_begin1 foreach_count1 null1 python1 retime1 switch1 export_point1 foreach_begin2_metadata1 export_prim1 timeshift2 foreach_end2 foreach_begin2 foreach_count2 python2 switch2 switch3 
opcf ..

# Node transformuniform (Sop/subnet)
opadd -e -n subnet transformuniform
oplocate -x 17.5 -y 1.8499999940395355 transformuniform
opspareds "" transformuniform
opparm -V 20.5.522 transformuniform label1 ( 'Sub-Network Input #1' ) label2 ( 'Sub-Network Input #2' ) label3 ( 'Sub-Network Input #3' ) label4 ( 'Sub-Network Input #4' )
chlock transformuniform -*
chautoscope transformuniform -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off transformuniform
opexprlanguage -s hscript transformuniform
opcf transformuniform

# Node move_back (Sop/attribwrangle)
opadd -e -n attribwrangle move_back
oplocate -x 0 -y -0.88820000000000077 move_back
opspareds "" move_back
opparm move_back  bindings ( 0 ) groupbindings ( 0 )
opparm move_back folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( point ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( '@P *= @__scale; @P += v@__translate;\nremovepointattrib(0, \'__scale\');\nremovepointattrib(0, \'__translate\');' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto )
chlock move_back -*
chautoscope move_back -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off move_back
opexprlanguage -s hscript move_back
opuserdata -n '___Version___' -v '' move_back

# Node objectinfo (Sop/attribwrangle)
opadd -e -n attribwrangle objectinfo
oplocate -x 0 -y 3.1317999999999993 objectinfo
opspareds "" objectinfo
opparm objectinfo  bindings ( 0 ) groupbindings ( 0 )
opparm objectinfo folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( point ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( '/*\n    to ensure a consistent scale when calculating cutter plane noise\n    which is based on world space, for any arbitary sized object,\n    this will scale it relative to its original scale, to fit a scale the parameters\n    have been calibrated to, to be re-applied later\n*/\n\nvector size = getbbox_size(0); v@__translate = getbbox_center(0);\n\n/*\n    sum size of each axis and divide by 3 to find average. divide by two to get radius.\n    this place object at origin and scale to approximate the dimensions of a sphere with 1m radius\n*/\n@__scale  = ((size.x + size.y + size.z) / 3) / 2; \n\n' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto )
chlock objectinfo -*
chautoscope objectinfo -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off objectinfo
opexprlanguage -s hscript objectinfo
opuserdata -n '___Version___' -v '' objectinfo

# Node object_trans_scale (Sop/attribwrangle)
opadd -e -n attribwrangle object_trans_scale
oplocate -x 0 -y 2.1317999999999997 object_trans_scale
opspareds "" object_trans_scale
opparm object_trans_scale  bindings ( 0 ) groupbindings ( 0 )
opparm object_trans_scale folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( point ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( '@P -= v@__translate; @P /= @__scale;' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto )
chlock object_trans_scale -*
chautoscope object_trans_scale -*
opcolor -c 0.8399999737739563 0.8399999737739563 0.8399999737739563 object_trans_scale
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F off -c on -e on -b off object_trans_scale
opexprlanguage -s hscript object_trans_scale
opuserdata -n '___Version___' -v '' object_trans_scale

# Node compile_end1 (Sop/compile_end)
opadd -e -n compile_end compile_end1
oplocate -x 0 -y 0.11179999999999968 compile_end1
opspareds "" compile_end1
opparm -V 20.5.522 compile_end1 docompile ( on ) unload ( always ) primarypath ( "" ) forcerecompile ( 0 ) delayillegal ( off ) fallback ( off )
chlock compile_end1 -*
chautoscope compile_end1 -*
opcolor -c 0.75 0.75 0 compile_end1
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F off -c on -e on -b off compile_end1
opexprlanguage -s hscript compile_end1
opuserdata -n '___Version___' -v '20.5.522' compile_end1

# Node compile_begin1 (Sop/compile_begin)
opadd -e -n compile_begin compile_begin1
oplocate -x 0 -y 5.1117999999999997 compile_begin1
opspareds "" compile_begin1
opparm -V 20.5.522 compile_begin1 blockpath ( ../compile_end1 ) name ( "" ) optional ( off ) createbeginblock ( 0 )
chlock compile_begin1 -*
chautoscope compile_begin1 -*
opcolor -c 0.75 0.75 0 compile_begin1
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F off -c on -e on -b off compile_begin1
opexprlanguage -s hscript compile_begin1
opuserdata -n '___Version___' -v '20.5.522' compile_begin1

# Node foreach_end2 (Sop/block_end)
opadd -e -n block_end foreach_end2
oplocate -x 0 -y 1.1117999999999997 foreach_end2
opspareds "" foreach_end2
opparm -V 20.5.522 foreach_end2 itermethod ( pieces ) method ( merge ) iterations ( 10 ) startvalue ( 1 ) increment ( 1 ) class ( primitive ) useattrib ( on ) attrib ( class ) usemaxiter ( off ) maxiter ( 10 ) blockpath ( ../foreach_begin2 ) templatepath ( ../foreach_begin2 ) resetcookpass ( 0 ) dosinglepass ( off ) singlepass ( 1 ) stopcondition ( 0 ) multithread ( on )
chlock foreach_end2 -*
chautoscope foreach_end2 -*
opcolor -c 0.75 0.40000000596046448 0 foreach_end2
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F off -c on -e on -b off foreach_end2
opexprlanguage -s hscript foreach_end2
opuserdata -n '___Version___' -v '20.5.522' foreach_end2

# Node foreach_begin2 (Sop/block_begin)
opadd -e -n block_begin foreach_begin2
oplocate -x 0 -y 4.1117999999999997 foreach_begin2
opspareds "" foreach_begin2
opparm -V 20.5.522 foreach_begin2 method ( piece ) blockpath ( ../foreach_end2 ) resetcookpass ( 0 ) createmetablock ( 0 ) label1 ( 'iteration, numiterations, value, ivalue' )
chlock foreach_begin2 -*
chautoscope foreach_begin2 -*
opcolor -c 0.75 0.40000000596046448 0 foreach_begin2
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F off -c on -e on -b off foreach_begin2
opexprlanguage -s hscript foreach_begin2
opuserdata -n '___Version___' -v '20.5.522' foreach_begin2

# Node connectivity2 (Sop/connectivity)
opadd -e -n connectivity connectivity2
oplocate -x 0 -y 6.1117999999999997 connectivity2
opspareds "" connectivity2
opparm -V 20.5.522 connectivity2 connecttype ( prim ) primincgroup ( "" ) pointincgroup ( "" ) attribname ( class ) attribtype ( int ) prefix ( piece ) createvarmap ( off ) varname ( "" ) seamgroup ( "" ) byuv ( off ) uvattrib ( uv )
chlock connectivity2 -*
chautoscope connectivity2 -*
opset -d on -r on -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off connectivity2
opexprlanguage -s hscript connectivity2
opuserdata -n '___Version___' -v '20.5.522' connectivity2

# Node output0 (Sop/output)
opadd -e -n output output0
oplocate -x 1.6943999999999981 -y 4.2175999999999991 output0
opspareds "" output0
opparm -V 20.5.522 output0 outputidx ( 0 )
chlock output0 -*
chautoscope output0 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off output0
opexprlanguage -s hscript output0
oporder -e move_back objectinfo object_trans_scale compile_end1 compile_begin1 foreach_end2 foreach_begin2 connectivity2 output0 
opcf ..

# Node promote_attr_to_ui (Sop/python)
opadd -e -n python promote_attr_to_ui
oplocate -x 17.5 -y 0.84999999403953552 promote_attr_to_ui
opspareds '    parm {         name    "python"         baseparm         label   "Python Code"         export  none     }     parm {         name    "maintainstate"         baseparm         label   "Maintain State"         export  none     }     parm {         name    "attribute"         label   "Attribute"         type    string         default { "" }         parmtag { "script_callback_language" "python" }     }     parm {         name    "parameter"         label   "Parameter"         type    string         default { "" }         parmtag { "script_callback_language" "python" }     } ' promote_attr_to_ui
opparm -V 20.5.522 promote_attr_to_ui python ( 'node = hou.pwd()\ngeo = node.geometry()\nlevelup = node.parent()\n\n# name of the attribute to promote to ui\nattribute = node.parm(\'attribute\').eval()\n\n# the parameter on the ui to display the value\nuiparm = levelup.parm(node.parm(\'parameter\').eval())\n# print(uiparm)\n\n# get the attribute value (detail)\nfetch = geo.attribValue(attribute)\n# print(fetch)\n\n# set parameter to value\nuiparm.set(fetch)\n\n\n' ) maintainstate ( off ) attribute ( "" ) parameter ( "" )
chlock promote_attr_to_ui -*
chautoscope promote_attr_to_ui -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off promote_attr_to_ui
opexprlanguage -s hscript promote_attr_to_ui

# Node iterative_spread (Sop/subnet)
opadd -e -n subnet iterative_spread
oplocate -x 17.5 -y -0.15000000596046448 iterative_spread
opspareds "" iterative_spread
opparm -V 20.5.522 iterative_spread label1 ( 'Sub-Network Input #1' ) label2 ( 'Sub-Network Input #2' ) label3 ( 'Sub-Network Input #3' ) label4 ( 'Sub-Network Input #4' )
chlock iterative_spread -*
chautoscope iterative_spread -*
opset -d on -r on -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off iterative_spread
opexprlanguage -s hscript iterative_spread
opuserdata -n '___Version___' -v '20.5.522' iterative_spread
opcf iterative_spread

# Node attribdelete1 (Sop/attribdelete)
opadd -e -n attribdelete attribdelete1
oplocate -x 0 -y 6.1117999999999997 attribdelete1
opspareds "" attribdelete1
opparm attribdelete1 usereference ( off ) negate ( off ) doptdel ( on ) ptdel ( * ) dovtxdel ( on ) vtxdel ( * ) doprimdel ( on ) primdel ( * ) dodtldel ( on ) dtldel ( * ) updatevar ( on )
chlock attribdelete1 -*
chautoscope attribdelete1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off attribdelete1
opexprlanguage -s hscript attribdelete1
opuserdata -n '___Version___' -v '' attribdelete1

# Node scatter1 (Sop/scatter::2.0)
opadd -e -n scatter::2.0 scatter1
oplocate -x 2.00345 -y 5.1117999999999997 scatter1
opspareds "" scatter1
opparm -V 20.5.522 scatter1 group ( "" ) stdswitcher ( 0 0 ) generateby ( bydensity ) indepvoxel ( off ) forcetotal ( on ) npts ( 1 ) densityscale ( 10 ) usedensityattrib ( off ) densityattrib ( density ) useareaattrib ( off ) areaattrib ( area ) useareaforvolumes ( off ) usedensitytexture ( off ) densitytexture ( default.pic ) uvattrib ( uv ) primcountattrib ( count ) useemergencylimit ( on ) emergencylimit ( 1e6 ) seed ( 0 ) overrideprimseed ( off ) primseedattrib ( primid ) randomizeorder ( on ) relaxpoints ( on ) relaxiterations ( 10 ) usegeometricnormals ( off ) scaleradiiby ( 1 ) usemaxradius ( on ) maxradius ( 10 ) useprimnumattrib ( off ) primnumattrib ( sourceprim ) useprimuvwattrib ( off ) primuvwattrib ( sourceprimuv ) useoutputdensityattrib ( off ) outputdensityattrib ( density ) useoutputradiusattrib ( off ) outputradiusattrib ( pscale ) useoutputidattrib ( off ) outputidattrib ( id ) radiusintexturespace ( off ) pointattribs ( * ) vertattribs ( 'N uv*' ) primattribs ( "" ) detailattribs ( "" ) detailattribsasdetail ( "" )
chlock scatter1 -*
chautoscope scatter1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off scatter1
opexprlanguage -s hscript scatter1
opuserdata -n '___Version___' -v '20.5.522' scatter1

# Node attribwrangle1 (Sop/attribwrangle)
opadd -e -n attribwrangle attribwrangle1
oplocate -x 2.0004499999999998 -y 4.1108000000000002 attribwrangle1
opspareds "" attribwrangle1
opparm attribwrangle1  bindings ( 0 ) groupbindings ( 0 )
opparm attribwrangle1 folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( point ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( 'i@seed = 1;\n' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto )
chlock attribwrangle1 -*
chautoscope attribwrangle1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off attribwrangle1
opexprlanguage -s hscript attribwrangle1
opuserdata -n '___Version___' -v '' attribwrangle1

# Node scatter2 (Sop/scatter::2.0)
opadd -e -n scatter::2.0 scatter2
oplocate -x 0.0034499999999999999 -y 4.1117999999999997 scatter2
opspareds "" scatter2
opparm -V 20.5.522 scatter2 group ( "" ) stdswitcher ( 0 0 ) generateby ( bydensity ) indepvoxel ( off ) forcetotal ( on ) npts ( 100000 ) densityscale ( 10 ) usedensityattrib ( off ) densityattrib ( density ) useareaattrib ( off ) areaattrib ( area ) useareaforvolumes ( off ) usedensitytexture ( off ) densitytexture ( default.pic ) uvattrib ( uv ) primcountattrib ( count ) useemergencylimit ( on ) emergencylimit ( 1e6 ) seed ( 0 ) overrideprimseed ( off ) primseedattrib ( primid ) randomizeorder ( on ) relaxpoints ( on ) relaxiterations ( 10 ) usegeometricnormals ( off ) scaleradiiby ( 1 ) usemaxradius ( on ) maxradius ( 10 ) useprimnumattrib ( off ) primnumattrib ( sourceprim ) useprimuvwattrib ( off ) primuvwattrib ( sourceprimuv ) useoutputdensityattrib ( off ) outputdensityattrib ( density ) useoutputradiusattrib ( off ) outputradiusattrib ( pscale ) useoutputidattrib ( off ) outputidattrib ( id ) radiusintexturespace ( off ) pointattribs ( * ) vertattribs ( 'N uv*' ) primattribs ( "" ) detailattribs ( "" ) detailattribsasdetail ( "" )
chlock scatter2 -*
chautoscope scatter2 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off scatter2
opexprlanguage -s hscript scatter2
opuserdata -n '___Version___' -v '20.5.522' scatter2

# Node attribtransfer1 (Sop/attribtransfer)
opadd -e -n attribtransfer attribtransfer1
oplocate -x 0 -y 3.1118000000000001 attribtransfer1
opspareds "" attribtransfer1
opparm -V 20.5.522 attribtransfer1 srcgroups ( "" ) srcgrouptype ( point ) dstgroups ( "" ) dstgrouptype ( point ) cardswitcher ( 0 0 ) detailattribs ( off ) detailattriblist ( "" ) primitiveattribs ( on ) primattriblist ( "" ) pointattribs ( on ) pointattriblist ( seed ) vertexattribs ( off ) vertexattriblist ( "" ) copyvariable ( on ) matchpattrib ( off ) kernel ( elendt ) kernelradius ( 10 ) maxsamplecount ( 1 ) threshold ( on ) thresholddist ( 0.01 ) blendwidth ( 0 ) uniformbias ( 0.5 )
chlock attribtransfer1 -*
chautoscope attribtransfer1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off attribtransfer1
opexprlanguage -s hscript attribtransfer1
opuserdata -n '___Version___' -v '20.5.522' attribtransfer1

# Node color1 (Sop/color)
opadd -e -n color color1
oplocate -x 0.0034499999999999999 -y 1.1117999999999999 color1
opspareds "" color1
opparm color1  ramp ( 2 )
opparm color1 group ( grown ) grouptype ( guess ) deleteallcolorattribs ( off ) enable ( on ) class ( 2 ) colortype ( 0 ) color ( 1 0 0 ) seed ( 0 ) rampattribute ( growth ) ramprange ( 0 1 ) ramp ( 2 ) ramp1pos ( 0 ) ramp1c ( 1 0 0 ) ramp1interp ( linear ) ramp2pos ( 1 ) ramp2c ( 0 1 0 ) ramp2interp ( linear )
chlock color1 -*
chautoscope color1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off color1
opexprlanguage -s hscript color1
opuserdata -n '___Version___' -v '' color1
opuserdata -n '___toolcount___' -v '2' color1
opuserdata -n '___toolid___' -v 'sop_color' color1

# Node foreach_end1 (Sop/block_end)
opadd -e -n block_end foreach_end1
oplocate -x -1.99495 -y -4.8917000000000002 foreach_end1
opspareds '    parm {         name    "itermethod"         baseparm         label   "Iteration Method"         export  none     }     parm {         name    "method"         baseparm         label   "Gather Method"         export  none     }     parm {         name    "iterations"         baseparm         label   "Iterations"         export  none     }     parm {         name    "startvalue"         baseparm         label   "Start Value"         export  none     }     parm {         name    "increment"         baseparm         label   "Increment"         export  none     }     parm {         name    "class"         baseparm         label   "Piece Elements"         export  none     }     parm {         name    "useattrib"         baseparm         label   "Piece Attribute"         joinnext         export  none     }     parm {         name    "attrib"         baseparm         label   "Piece Attribute"         export  none     }     parm {         name    "usemaxiter"         baseparm         label   "Max Iterations"         joinnext         export  none     }     parm {         name    "maxiter"         baseparm         label   "Max Iterations"         export  none     }     parm {         name    "blockpath"         baseparm         label   "Default Block Path"         export  none     }     parm {         name    "templatepath"         baseparm         label   "Piece Block Path"         export  none     }     parm {         name    "resetcookpass"         baseparm         label   "Reset Cached Pass"         export  none     }     parm {         name    "dosinglepass"         baseparm         label   "Do Single Pass"         joinnext         export  none     }     parm {         name    "singlepass"         baseparm         label   "Single Pass"         export  none     }     parm {         name    "stopcondition"         baseparm         label   "Stop Condition"         export  none     }     parm {         name    "multithread"         baseparm         label   "Multithread when Compiled"         export  none     }     parm {         name    "spare_input0"         label   "Spare Input 0"         type    oppath         default { "" }         help    "Refer to this in expressions as -1, such as: npoints(-1)"         parmtag { "cook_dependent" "1" }         parmtag { "opfilter" "!!SOP!!" }         parmtag { "oprelative" "." }     } ' foreach_end1
chblockbegin
chadd -t 0 0 foreach_end1 stopcondition
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F 'detail(-1, \'stop\', 0)' foreach_end1/stopcondition
chblockend
opparm -V 20.5.522 foreach_end1 itermethod ( count ) method ( feedback ) iterations ( 500 ) startvalue ( 1 ) increment ( 1 ) class ( point ) useattrib ( on ) attrib ( "" ) usemaxiter ( off ) maxiter ( 10 ) blockpath ( ../foreach_begin1 ) templatepath ( ../foreach_begin1 ) resetcookpass ( 0 ) dosinglepass ( off ) singlepass ( 0 ) stopcondition ( stopcondition ) multithread ( off ) spare_input0 ( ../foreach_begin1 )
chlock foreach_end1 -*
chautoscope foreach_end1 -*
opcolor -c 0.75 0.40000000596046448 0 foreach_end1
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F off -c on -e on -b off foreach_end1
opexprlanguage -s hscript foreach_end1
opuserdata -n '___Version___' -v '20.5.522' foreach_end1

# Node foreach_begin1 (Sop/block_begin)
opadd -e -n block_begin foreach_begin1
oplocate -x 0.0050499999999999998 -y 0.10895000000000001 foreach_begin1
opspareds "" foreach_begin1
opparm -V 20.5.522 foreach_begin1 method ( feedback ) blockpath ( ../foreach_end1 ) resetcookpass ( 0 ) createmetablock ( 0 ) label1 ( 'iteration, numiterations, value, ivalue' )
chlock foreach_begin1 -*
chautoscope foreach_begin1 -*
opcolor -c 0.75 0.40000000596046448 0 foreach_begin1
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F off -c on -e on -b off foreach_begin1
opexprlanguage -s hscript foreach_begin1
opuserdata -n '___Version___' -v '20.5.522' foreach_begin1

# Node foreach_count1 (Sop/block_begin)
opadd -e -n block_begin foreach_count1
oplocate -x 0.0050499999999999998 -y -1.8910499999999999 foreach_count1
opspareds "" foreach_count1
opparm -V 20.5.522 foreach_count1 method ( metadata ) blockpath ( ../foreach_end1 ) resetcookpass ( 0 ) createmetablock ( 0 ) label1 ( 'iteration, numiterations, value, ivalue' )
chlock foreach_count1 -*
chautoscope foreach_count1 -*
opcolor -c 0.75 0.40000000596046448 0 foreach_count1
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F off -c on -e on -b off foreach_count1
opexprlanguage -s hscript foreach_count1
opuserdata -n '___Version___' -v '20.5.522' foreach_count1

# Node initialise (Sop/attribwrangle)
opadd -e -n attribwrangle initialise
oplocate -x 0.00044999999999999999 -y 2.1107999999999998 initialise
opspareds "" initialise
opparm initialise  bindings ( 0 ) groupbindings ( 0 )
opparm initialise folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( point ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( 'if (i@seed) \n{\n    setpointgroup(0, \'seeds\', @ptnum, 1, \'set\');\n    setpointgroup(0, \'grown\', @ptnum, 1, \'set\');\n}\n\ni@id = @ptnum; removepointattrib(0, \'seed\'); i@iteration = 0;' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto )
chlock initialise -*
chautoscope initialise -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off initialise
opexprlanguage -s hscript initialise
opuserdata -n '___Version___' -v '' initialise

# Node split1 (Sop/split)
opadd -e -n split split1
oplocate -x 0.0034499999999999999 -y -0.88819999999999999 split1
opspareds "" split1
opparm split1 group ( seeds ) grouptype ( points ) negate ( off ) removegrp ( off )
chlock split1 -*
chautoscope split1 -*
opcomment -c 'only run nearpoints on seeds for performance' split1
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off -Y on split1
opexprlanguage -s hscript split1
opuserdata -n '___Version___' -v '' split1

# Node fetch_chums (Sop/attribwrangle)
opadd -e -n attribwrangle fetch_chums
oplocate -x -1.9995499999999999 -y -0.88919999999999999 fetch_chums
opspareds '    group {         name    "folder1"         label   "Code"          parm {             name    "group"             baseparm             label   "Group"             export  none             bindselector uvselect "Modify Attribs"                 "Select the geometry to affect and press Enter to complete."                 0 1 0xffffffff 0 grouptype 0         }         parm {             name    "grouptype"             baseparm             label   "Group Type"             export  none         }         parm {             name    "class"             baseparm             label   "Run Over"             export  none         }         parm {             name    "vex_numcount"             baseparm             label   "Number Count"             export  none         }         parm {             name    "vex_threadjobsize"             baseparm             label   "Thread Job Size"             export  none         }         groupsimple {             name    "folder_generatedparms_snippet"             label   "Generated Channel Parameters"             grouptag { "sidefx::look" "blank" }              parm {                 name    "Resolution"                 label   "Resolution"                 type    integer                 default { "0" }                 range   { 0 10 }             }         }          parm {             name    "snippet"             baseparm             label   "VEXpression"             export  all         }         parm {             name    "exportlist"             baseparm             label   "Attributes to Create"             export  none         }         parm {             name    "vex_strict"             baseparm             label   "Enforce Prototypes"             export  none         }     }      group {         name    "folder1_1"         label   "Bindings"          parm {             name    "autobind"             baseparm             label   "Autobind by Name"             export  none         }         multiparm {             name    "bindings"             label    "Number of Bindings"             baseparm             default 0             parmtag { "autoscope" "0000000000000000" }             parmtag { "multistartoffset" "1" }              parm {                 name    "bindname#"                 baseparm                 label   "Attribute Name"                 export  none             }             parm {                 name    "bindparm#"                 baseparm                 label   "VEX Parameter"                 export  none             }         }          parm {             name    "groupautobind"             baseparm             label   "Autobind Groups by Name"             export  none         }         multiparm {             name    "groupbindings"             label    "Group Bindings"             baseparm             default 0             parmtag { "autoscope" "0000000000000000" }             parmtag { "multistartoffset" "1" }              parm {                 name    "bindgroupname#"                 baseparm                 label   "Group Name"                 export  none             }             parm {                 name    "bindgroupparm#"                 baseparm                 label   "VEX Parameter"                 export  none             }         }          parm {             name    "vex_cwdpath"             baseparm             label   "Evaluation Node Path"             export  none         }         parm {             name    "vex_outputmask"             baseparm             label   "Export Parameters"             export  none         }         parm {             name    "vex_updatenmls"             baseparm             label   "Update Normals If Displaced"             export  none         }         parm {             name    "vex_matchattrib"             baseparm             label   "Attribute to Match"             export  none         }         parm {             name    "vex_inplace"             baseparm             label   "Compute Results In Place"             export  none         }         parm {             name    "vex_selectiongroup"             baseparm             label   "Output Selection Group"             export  none         }         parm {             name    "vex_precision"             baseparm             label   "VEX Precision"             export  none         }     }  ' fetch_chums
opparm fetch_chums  bindings ( 0 ) groupbindings ( 0 )
opparm fetch_chums folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( point ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( 'i[]@N = nearpoints(1, @P, 1, chi(\'Resolution\'));\n\n\ni[]@chums;\nforeach( int i; @N )\n{\n    // don\'t store point if its already grown\n    int in = inpointgroup(1, \'grown\', i);\n    if ( in == 0 )\n    {\n        // store id, ptnum changed on split\n        int __id = point(1, \'id\', i);\n        append(@chums, __id);\n    }\n}\n\nremovepointattrib(0, \'N\');' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto ) folder1 ( 0 0 ) folder_generatedparms_snippet ( 0 ) Resolution ( 10 )
chlock fetch_chums -*
chautoscope fetch_chums -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off fetch_chums
opexprlanguage -s hscript fetch_chums
opuserdata -n '___Version___' -v '' fetch_chums

# Node core_process (Sop/attribwrangle)
opadd -e -n attribwrangle core_process
oplocate -x -1.9995499999999999 -y -1.8892 core_process
opspareds "" core_process
opparm core_process  bindings ( 0 ) groupbindings ( 0 )
opparm core_process folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( detail ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( '// serial process is faster then fetching from every point in second for every point in first\nint n = npoints(1);\n\nfor( int i = 0; i < n; i++ )\n{\n    i[]@__chums = point(1, \'chums\', i);\n    \n    foreach ( int j; @__chums )\n    {\n        setpointgroup(0, \'seeds\', j, 1, \'set\');\n        setpointgroup(0, \'grown\', j, 1, \'set\');\n    }\n}' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto )
chlock core_process -*
chautoscope core_process -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off core_process
opexprlanguage -s hscript core_process
opuserdata -n '___Version___' -v '' core_process

# Node reset_seeds (Sop/attribwrangle)
opadd -e -n attribwrangle reset_seeds
oplocate -x -3.9995500000000002 -y -0.88919999999999999 reset_seeds
opspareds "" reset_seeds
opparm reset_seeds  bindings ( 0 ) groupbindings ( 0 )
opparm reset_seeds folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( point ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( 'setpointgroup(0, \'seeds\', @ptnum, 0, \'set\');' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto )
chlock reset_seeds -*
chautoscope reset_seeds -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off reset_seeds
opexprlanguage -s hscript reset_seeds
opuserdata -n '___Version___' -v '' reset_seeds

# Node stop_condition (Sop/attribwrangle)
opadd -e -n attribwrangle stop_condition
oplocate -x -1.9995499999999999 -y -3.8892000000000002 stop_condition
opspareds "" stop_condition
opparm stop_condition  bindings ( 0 ) groupbindings ( 0 )
opparm stop_condition folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( detail ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( 'i@stop = npointsgroup(0, \'grown\') == npoints(0);' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto )
chlock stop_condition -*
chautoscope stop_condition -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off stop_condition
opexprlanguage -s hscript stop_condition
opuserdata -n '___Version___' -v '' stop_condition

# Node store_iteration (Sop/attribwrangle)
opadd -e -n attribwrangle store_iteration
oplocate -x -1.9995499999999999 -y -2.8892000000000002 store_iteration
opspareds "" store_iteration
opparm store_iteration  bindings ( 0 ) groupbindings ( 0 )
opparm store_iteration folder0 ( 0 0 ) group ( seeds ) grouptype ( guess ) class ( point ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( 'i@iteration = detail(1, \'iteration\', 0);' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto )
chlock store_iteration -*
chautoscope store_iteration -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off store_iteration
opexprlanguage -s hscript store_iteration
opuserdata -n '___Version___' -v '' store_iteration

# Node frame_fit (Sop/attribwrangle)
opadd -e -n attribwrangle frame_fit
oplocate -x -3.9995500000000002 -y -5.8891999999999998 frame_fit
opspareds '    group {         name    "folder1"         label   "Code"          parm {             name    "group"             baseparm             label   "Group"             export  none             bindselector uvselect "Modify Attribs"                 "Select the geometry to affect and press Enter to complete."                 0 1 0xffffffff 0 grouptype 0         }         parm {             name    "grouptype"             baseparm             label   "Group Type"             export  none         }         parm {             name    "class"             baseparm             label   "Run Over"             export  none         }         parm {             name    "vex_numcount"             baseparm             label   "Number Count"             export  none         }         parm {             name    "vex_threadjobsize"             baseparm             label   "Thread Job Size"             export  none         }         groupsimple {             name    "folder_generatedparms_snippet"             label   "Generated Channel Parameters"             grouptag { "sidefx::look" "blank" }              parm {                 name    "Start"                 label   "Start"                 type    integer                 default { "0" }                 range   { 0 10 }             }             parm {                 name    "End"                 label   "End"                 type    integer                 default { "0" }                 range   { 0 10 }             }         }          parm {             name    "snippet"             baseparm             label   "VEXpression"             export  all         }         parm {             name    "exportlist"             baseparm             label   "Attributes to Create"             export  none         }         parm {             name    "vex_strict"             baseparm             label   "Enforce Prototypes"             export  none         }     }      group {         name    "folder1_1"         label   "Bindings"          parm {             name    "autobind"             baseparm             label   "Autobind by Name"             export  none         }         multiparm {             name    "bindings"             label    "Number of Bindings"             baseparm             default 0             parmtag { "autoscope" "0000000000000000" }             parmtag { "multistartoffset" "1" }              parm {                 name    "bindname#"                 baseparm                 label   "Attribute Name"                 export  none             }             parm {                 name    "bindparm#"                 baseparm                 label   "VEX Parameter"                 export  none             }         }          parm {             name    "groupautobind"             baseparm             label   "Autobind Groups by Name"             export  none         }         multiparm {             name    "groupbindings"             label    "Group Bindings"             baseparm             default 0             parmtag { "autoscope" "0000000000000000" }             parmtag { "multistartoffset" "1" }              parm {                 name    "bindgroupname#"                 baseparm                 label   "Group Name"                 export  none             }             parm {                 name    "bindgroupparm#"                 baseparm                 label   "VEX Parameter"                 export  none             }         }          parm {             name    "vex_cwdpath"             baseparm             label   "Evaluation Node Path"             export  none         }         parm {             name    "vex_outputmask"             baseparm             label   "Export Parameters"             export  none         }         parm {             name    "vex_updatenmls"             baseparm             label   "Update Normals If Displaced"             export  none         }         parm {             name    "vex_matchattrib"             baseparm             label   "Attribute to Match"             export  none         }         parm {             name    "vex_inplace"             baseparm             label   "Compute Results In Place"             export  none         }         parm {             name    "vex_selectiongroup"             baseparm             label   "Output Selection Group"             export  none         }         parm {             name    "vex_precision"             baseparm             label   "VEX Precision"             export  none         }     }  ' frame_fit
opparm frame_fit  bindings ( 0 ) groupbindings ( 0 )
opparm frame_fit folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( point ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( '@spread = fit(i@iteration, 0, detail(1, \'iterationmax\'), chi(\'Start\'), chi(\'End\'));\n\nif (@spread < @Frame) { @spread = 1; } else @spread = 0;' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto ) folder1 ( 0 0 ) folder_generatedparms_snippet ( 0 ) Start ( 1 ) End ( 120 )
chlock frame_fit -*
chautoscope frame_fit -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off frame_fit
opexprlanguage -s hscript frame_fit
opuserdata -n '___Version___' -v '' frame_fit

# Node attribpromote1 (Sop/attribpromote)
opadd -e -n attribpromote attribpromote1
oplocate -x -2 -y -5.8882000000000003 attribpromote1
opspareds "" attribpromote1
opparm -V 20.5.522 attribpromote1 inname ( iteration ) inclass ( point ) outclass ( detail ) usepieceattrib ( off ) pieceattrib ( name ) method ( max ) useoutname ( on ) outname ( iterationmax ) deletein ( off )
chlock attribpromote1 -*
chautoscope attribpromote1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off attribpromote1
opexprlanguage -s hscript attribpromote1
opuserdata -n '___Version___' -v '20.5.522' attribpromote1

# Node color2 (Sop/color)
opadd -e -n color color2
oplocate -x -3.99655 -y -6.8882000000000003 color2
opspareds "" color2
opparm color2  ramp ( 2 )
opparm color2 group ( "" ) grouptype ( guess ) deleteallcolorattribs ( off ) enable ( on ) class ( 2 ) colortype ( 3 ) color ( 1 1 1 ) seed ( 0 ) rampattribute ( spread ) ramprange ( 0 1 ) ramp ( 2 ) ramp1pos ( 0 ) ramp1c ( 0 0 0 ) ramp1interp ( linear ) ramp2pos ( 1 ) ramp2c ( 1 0 0 ) ramp2interp ( linear )
chlock color2 -*
chautoscope color2 -*
opset -d on -r on -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off color2
opexprlanguage -s hscript color2
opuserdata -n '___Version___' -v '' color2
opuserdata -n '___toolcount___' -v '2' color2
opuserdata -n '___toolid___' -v 'sop_color' color2

# Node output0 (Sop/output)
opadd -e -n output output0
oplocate -x -3.99655 -y -7.7824 output0
opspareds "" output0
opparm -V 20.5.522 output0 outputidx ( 0 )
chlock output0 -*
chautoscope output0 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off output0
opexprlanguage -s hscript output0
opuserdata -n '___Version___' -v '20.5.522' output0
oporder -e attribdelete1 scatter1 attribwrangle1 scatter2 attribtransfer1 color1 foreach_end1 foreach_begin1 foreach_count1 initialise split1 fetch_chums core_process reset_seeds stop_condition store_iteration frame_fit attribpromote1 color2 output0 
opcf ..
oporder -e curvature gradient attributefunction cluster curvefromanim matrixcurve solvercurveadvect deformerripple solverdecay isolatecorners matrixconstruct matrixtangentspace meshcage noisepower prim_angle_partition prim_reconstruct rayintersect solverpropagation vector_conditional_rotate vectorfield_formula vectorfield_object_flow vector_project array_remove_duplicate attribute_range transformuniform promote_attr_to_ui iterative_spread 
opcf ..
opcf ..

# Node out (/out)

# Node ch (/ch)

# Node shop (/shop)

# Node img (/img)
opcf img

# Node comp2 (CopNet/img)
opadd -e -n img comp2
oplocate -x 0 -y 0 comp2
opspareds "" comp2
opparm -V 20.5.522 comp2
chlock comp2 -*
chautoscope comp2 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off comp2
opexprlanguage -s hscript comp2
opuserdata -n '___Version___' -v '20.5.522' comp2

# Node copnet2 (CopNet/copnet)
opadd -e -n copnet copnet2
oplocate -x 0 -y 0 copnet2
opspareds "" copnet2
opparm -V 20.5.522 copnet2 setres ( off ) res ( 1024 1024 ) resmenu ( none ) setpixelscale ( off ) pixelscale ( 2 ) setborder ( off ) border ( wrap ) setprecision ( off ) precision ( b32 ) setvistile ( off ) vistile ( 3 )
chlock copnet2 -*
chautoscope copnet2 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off copnet2
opexprlanguage -s hscript copnet2
opuserdata -n '___Version___' -v '20.5.522' copnet2

# Node comp3 (CopNet/img)
opadd -e -n img comp3
oplocate -x 0 -y 0 comp3
opspareds "" comp3
opparm -V 20.5.522 comp3
chlock comp3 -*
chautoscope comp3 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off comp3
opexprlanguage -s hscript comp3
opuserdata -n '___Version___' -v '20.5.522' comp3

# Node copnet3 (CopNet/copnet)
opadd -e -n copnet copnet3
oplocate -x 0 -y 0 copnet3
opspareds "" copnet3
opparm -V 20.5.522 copnet3 setres ( off ) res ( 1024 1024 ) resmenu ( none ) setpixelscale ( off ) pixelscale ( 2 ) setborder ( off ) border ( wrap ) setprecision ( off ) precision ( b32 ) setvistile ( off ) vistile ( 3 )
chlock copnet3 -*
chautoscope copnet3 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off copnet3
opexprlanguage -s hscript copnet3
opuserdata -n '___Version___' -v '20.5.522' copnet3

# Node comp4 (CopNet/img)
opadd -e -n img comp4
oplocate -x 0 -y 0 comp4
opspareds "" comp4
opparm -V 20.5.522 comp4
chlock comp4 -*
chautoscope comp4 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off comp4
opexprlanguage -s hscript comp4
opuserdata -n '___Version___' -v '20.5.522' comp4

# Node copnet4 (CopNet/copnet)
opadd -e -n copnet copnet4
oplocate -x 0 -y 0 copnet4
opspareds "" copnet4
opparm -V 20.5.522 copnet4 setres ( off ) res ( 1024 1024 ) resmenu ( none ) setpixelscale ( off ) pixelscale ( 2 ) setborder ( off ) border ( wrap ) setprecision ( off ) precision ( b32 ) setvistile ( off ) vistile ( 3 )
chlock copnet4 -*
chautoscope copnet4 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off copnet4
opexprlanguage -s hscript copnet4
opuserdata -n '___Version___' -v '20.5.522' copnet4

# Node comp5 (CopNet/img)
opadd -e -n img comp5
oplocate -x 0 -y 0 comp5
opspareds "" comp5
opparm -V 20.5.522 comp5
chlock comp5 -*
chautoscope comp5 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off comp5
opexprlanguage -s hscript comp5
opuserdata -n '___Version___' -v '20.5.522' comp5

# Node copnet5 (CopNet/copnet)
opadd -e -n copnet copnet5
oplocate -x 0 -y 0 copnet5
opspareds "" copnet5
opparm -V 20.5.522 copnet5 setres ( off ) res ( 1024 1024 ) resmenu ( none ) setpixelscale ( off ) pixelscale ( 2 ) setborder ( off ) border ( wrap ) setprecision ( off ) precision ( b32 ) setvistile ( off ) vistile ( 3 )
chlock copnet5 -*
chautoscope copnet5 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off copnet5
opexprlanguage -s hscript copnet5
opuserdata -n '___Version___' -v '20.5.522' copnet5

# Node comp6 (CopNet/img)
opadd -e -n img comp6
oplocate -x 0 -y 0 comp6
opspareds "" comp6
opparm -V 20.5.522 comp6
chlock comp6 -*
chautoscope comp6 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off comp6
opexprlanguage -s hscript comp6
opuserdata -n '___Version___' -v '20.5.522' comp6

# Node copnet6 (CopNet/copnet)
opadd -e -n copnet copnet6
oplocate -x 0 -y 0 copnet6
opspareds "" copnet6
opparm -V 20.5.522 copnet6 setres ( off ) res ( 1024 1024 ) resmenu ( none ) setpixelscale ( off ) pixelscale ( 2 ) setborder ( off ) border ( wrap ) setprecision ( off ) precision ( b32 ) setvistile ( off ) vistile ( 3 )
chlock copnet6 -*
chautoscope copnet6 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off copnet6
opexprlanguage -s hscript copnet6
opuserdata -n '___Version___' -v '20.5.522' copnet6

# Node comp7 (CopNet/img)
opadd -e -n img comp7
oplocate -x 0 -y 0 comp7
opspareds "" comp7
opparm -V 20.5.522 comp7
chlock comp7 -*
chautoscope comp7 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off comp7
opexprlanguage -s hscript comp7
opuserdata -n '___Version___' -v '20.5.522' comp7

# Node copnet7 (CopNet/copnet)
opadd -e -n copnet copnet7
oplocate -x 0 -y 0 copnet7
opspareds "" copnet7
opparm -V 20.5.522 copnet7 setres ( off ) res ( 1024 1024 ) resmenu ( none ) setpixelscale ( off ) pixelscale ( 2 ) setborder ( off ) border ( wrap ) setprecision ( off ) precision ( b32 ) setvistile ( off ) vistile ( 3 )
chlock copnet7 -*
chautoscope copnet7 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off copnet7
opexprlanguage -s hscript copnet7
opuserdata -n '___Version___' -v '20.5.522' copnet7

# Node comp1 (CopNet/img)
opadd -e -n img comp1
oplocate -x 1 -y 1 comp1
opspareds "" comp1
opparm -V 20.5.522 comp1
chlock comp1 -*
chautoscope comp1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e off -b off comp1
opexprlanguage -s hscript comp1
opuserdata -n '___Version___' -v '20.5.522' comp1

# Node copnet1 (CopNet/copnet)
opadd -e -n copnet copnet1
oplocate -x 0 -y 0 copnet1
opspareds "" copnet1
opparm -V 20.5.522 copnet1 setres ( off ) res ( 1024 1024 ) resmenu ( none ) setpixelscale ( off ) pixelscale ( 2 ) setborder ( off ) border ( wrap ) setprecision ( off ) precision ( b32 ) setvistile ( off ) vistile ( 3 )
chlock copnet1 -*
chautoscope copnet1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off copnet1
opexprlanguage -s hscript copnet1
opuserdata -n '___Version___' -v '20.5.522' copnet1
oporder -e comp2 copnet2 comp3 copnet3 comp4 copnet4 comp5 copnet5 comp6 copnet6 comp7 copnet7 comp1 copnet1 
opcf ..

# Node stage (/stage)

# Node tasks (/tasks)
opcf tasks

# Node topnet1 (TopNet/topnet)
opadd -e -n topnet topnet1
oplocate -x 0 -y 0 topnet1
opspareds "" topnet1
opparm -V 20.5.522 topnet1 cookcontrolssection ( 0 ) generatestatic ( 0 ) cookbutton ( 0 ) dirtybutton ( 0 ) cancelbutton ( 0 ) taskgraphsection ( 0 ) checkpointformat ( 1 ) taskgraphfile ( '$HIP/$HIPNAME.taskgraph.$F.py' ) savetaskgraph ( 0 ) loadtaskgraph ( 0 ) taskgraphautosave ( off ) taskgraphsaverate ( 10 ) checkpointfile ( '$HIP/$HIPNAME.checkpoint.json' ) loadcheckpoint ( 0 ) checkpointload ( 0 ) checkpointenabled ( off ) checkpointrate ( 10 ) sep2 ( ) savegraphattribs ( on ) schedulersection ( 0 ) topscheduler ( localscheduler ) usedefaultlabel ( off ) defaultlabel ( '$OS.`@pdg_index`' ) sep1 ( ) regenerationtype ( 0 ) evaluationtime ( 0 ) customtime ( 0 ) savescenefile ( on )
chlock topnet1 -*
chautoscope topnet1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c off -e on -b off topnet1
opexprlanguage -s hscript topnet1
opuserdata -n '___Version___' -v '20.5.522' topnet1
opcf topnet1

# Node localscheduler (Top/localscheduler)
opadd -e -n localscheduler localscheduler
oplocate -x 0 -y 0 localscheduler
opspareds "" localscheduler
opparm localscheduler  local_envmulti ( 0 )
opparm -V 1 localscheduler folder0 ( 0 0 0 ) folder5 ( 0 ) maxprocsmenu ( 0 ) maxprocs ( 1 ) pdg_usemaxtasks ( off ) pdg_maxtasks ( 0 ) verbose ( off ) pdg_waitforfailures ( off ) folder4 ( 0 ) pdg_workingdir ( '$HIP' ) hythonbin ( 0 ) hythonbincustomuniversal ( "" ) pdg_workitemdatasource ( 0 ) pdg_compressworkitemdata ( on ) pdg_validateoutputs ( on ) pdg_checkexpectedoutputs ( on ) sepparm2 ( ) pdg_mapmode ( 0 ) pdg_usemapzone ( off ) pdg_mapzone ( '$PDG_PATHMAP_ZONE' ) folder1 ( 0 ) tempdirmenu ( 1 ) tempdirappendpid ( on ) tempdircustom ( '$HOUDINI_TEMP_DIR/$HIPNAME/pdgtemp' ) pdg_deletetempdir ( 0 ) socketcallbacks ( 1 ) pdg_rpcignoreerrors ( 0 ) pdg_rpcmaxerrors ( 5 ) pdg_rpctimeout ( 4 ) pdg_rpcretries ( 2 ) pdg_rpcbackoff ( 2 ) pdg_rpcbatch ( 1 ) pdg_rpcrelease ( on ) folder0_3 ( 0 ) local_single ( off ) local_is_CPU_number_set ( off ) local_CPUs_to_use ( 1 ) folder6 ( 0 ) local_useminfreemem ( 0 ) local_minfreemem ( 0 ) local_minfreemempct ( 0 ) folder2 ( 0 ) local_enabletimeout ( off ) local_maxtime ( 0 ) local_handletimeout ( 0 ) sepparm4 ( ) local_enablemaxmemory ( off ) local_maxmemory ( 0 ) local_handlememory ( 0 ) sepparm5 ( ) local_echandleby ( 0 ) local_echandleall ( on ) local_eccustomcode ( 1 ) sepparm ( ) local_maximumretries ( 3 ) local_addfailcountattr ( off ) local_failcountattr ( failurecount ) folder3 ( 0 ) local_usehoudinimaxthreads ( off ) local_houdinimaxthreads ( 0 ) local_requireswindow ( off ) local_skippackages ( on ) local_envunset ( "" ) local_env_file ( "" ) local_envmulti ( 0 )
chlock localscheduler -*
chautoscope localscheduler -*
opset -d off -r on -h off -f off -y off -t off -l off -s off -u off -F on -c off -e on -b off localscheduler
opexprlanguage -s hscript localscheduler
opuserdata -n '___Version___' -v '1' localscheduler

# Node localscheduler1 (Top/localscheduler)
opadd -e -n localscheduler localscheduler1
oplocate -x 0 -y 0 localscheduler1
opspareds "" localscheduler1
opparm localscheduler1  local_envmulti ( 0 )
opparm -V 1 localscheduler1 folder0 ( 0 0 0 ) folder5 ( 0 ) maxprocsmenu ( 0 ) maxprocs ( 1 ) pdg_usemaxtasks ( off ) pdg_maxtasks ( 0 ) verbose ( off ) pdg_waitforfailures ( off ) folder4 ( 0 ) pdg_workingdir ( '$HIP' ) hythonbin ( 0 ) hythonbincustomuniversal ( "" ) pdg_workitemdatasource ( 0 ) pdg_compressworkitemdata ( on ) pdg_validateoutputs ( on ) pdg_checkexpectedoutputs ( on ) sepparm2 ( ) pdg_mapmode ( 0 ) pdg_usemapzone ( off ) pdg_mapzone ( '$PDG_PATHMAP_ZONE' ) folder1 ( 0 ) tempdirmenu ( 1 ) tempdirappendpid ( on ) tempdircustom ( '$HOUDINI_TEMP_DIR/$HIPNAME/pdgtemp' ) pdg_deletetempdir ( 0 ) socketcallbacks ( 1 ) pdg_rpcignoreerrors ( 0 ) pdg_rpcmaxerrors ( 5 ) pdg_rpctimeout ( 4 ) pdg_rpcretries ( 2 ) pdg_rpcbackoff ( 2 ) pdg_rpcbatch ( 1 ) pdg_rpcrelease ( on ) folder0_3 ( 0 ) local_single ( off ) local_is_CPU_number_set ( off ) local_CPUs_to_use ( 1 ) folder6 ( 0 ) local_useminfreemem ( 0 ) local_minfreemem ( 0 ) local_minfreemempct ( 0 ) folder2 ( 0 ) local_enabletimeout ( off ) local_maxtime ( 0 ) local_handletimeout ( 0 ) sepparm4 ( ) local_enablemaxmemory ( off ) local_maxmemory ( 0 ) local_handlememory ( 0 ) sepparm5 ( ) local_echandleby ( 0 ) local_echandleall ( on ) local_eccustomcode ( 1 ) sepparm ( ) local_maximumretries ( 3 ) local_addfailcountattr ( off ) local_failcountattr ( failurecount ) folder3 ( 0 ) local_usehoudinimaxthreads ( off ) local_houdinimaxthreads ( 0 ) local_requireswindow ( off ) local_skippackages ( on ) local_envunset ( "" ) local_env_file ( "" ) local_envmulti ( 0 )
chlock localscheduler1 -*
chautoscope localscheduler1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c off -e on -b off localscheduler1
opexprlanguage -s hscript localscheduler1
opuserdata -n '___Version___' -v '1' localscheduler1

# Node localscheduler2 (Top/localscheduler)
opadd -e -n localscheduler localscheduler2
oplocate -x 0 -y 0 localscheduler2
opspareds "" localscheduler2
opparm localscheduler2  local_envmulti ( 0 )
opparm -V 1 localscheduler2 folder0 ( 0 0 0 ) folder5 ( 0 ) maxprocsmenu ( 0 ) maxprocs ( 1 ) pdg_usemaxtasks ( off ) pdg_maxtasks ( 0 ) verbose ( off ) pdg_waitforfailures ( off ) folder4 ( 0 ) pdg_workingdir ( '$HIP' ) hythonbin ( 0 ) hythonbincustomuniversal ( "" ) pdg_workitemdatasource ( 0 ) pdg_compressworkitemdata ( on ) pdg_validateoutputs ( on ) pdg_checkexpectedoutputs ( on ) sepparm2 ( ) pdg_mapmode ( 0 ) pdg_usemapzone ( off ) pdg_mapzone ( '$PDG_PATHMAP_ZONE' ) folder1 ( 0 ) tempdirmenu ( 1 ) tempdirappendpid ( on ) tempdircustom ( '$HOUDINI_TEMP_DIR/$HIPNAME/pdgtemp' ) pdg_deletetempdir ( 0 ) socketcallbacks ( 1 ) pdg_rpcignoreerrors ( 0 ) pdg_rpcmaxerrors ( 5 ) pdg_rpctimeout ( 4 ) pdg_rpcretries ( 2 ) pdg_rpcbackoff ( 2 ) pdg_rpcbatch ( 1 ) pdg_rpcrelease ( on ) folder0_3 ( 0 ) local_single ( off ) local_is_CPU_number_set ( off ) local_CPUs_to_use ( 1 ) folder6 ( 0 ) local_useminfreemem ( 0 ) local_minfreemem ( 0 ) local_minfreemempct ( 0 ) folder2 ( 0 ) local_enabletimeout ( off ) local_maxtime ( 0 ) local_handletimeout ( 0 ) sepparm4 ( ) local_enablemaxmemory ( off ) local_maxmemory ( 0 ) local_handlememory ( 0 ) sepparm5 ( ) local_echandleby ( 0 ) local_echandleall ( on ) local_eccustomcode ( 1 ) sepparm ( ) local_maximumretries ( 3 ) local_addfailcountattr ( off ) local_failcountattr ( failurecount ) folder3 ( 0 ) local_usehoudinimaxthreads ( off ) local_houdinimaxthreads ( 0 ) local_requireswindow ( off ) local_skippackages ( on ) local_envunset ( "" ) local_env_file ( "" ) local_envmulti ( 0 )
chlock localscheduler2 -*
chautoscope localscheduler2 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c off -e on -b off localscheduler2
opexprlanguage -s hscript localscheduler2
opuserdata -n '___Version___' -v '1' localscheduler2

# Node localscheduler3 (Top/localscheduler)
opadd -e -n localscheduler localscheduler3
oplocate -x 0 -y 0 localscheduler3
opspareds "" localscheduler3
opparm localscheduler3  local_envmulti ( 0 )
opparm -V 1 localscheduler3 folder0 ( 0 0 0 ) folder5 ( 0 ) maxprocsmenu ( 0 ) maxprocs ( 1 ) pdg_usemaxtasks ( off ) pdg_maxtasks ( 0 ) verbose ( off ) pdg_waitforfailures ( off ) folder4 ( 0 ) pdg_workingdir ( '$HIP' ) hythonbin ( 0 ) hythonbincustomuniversal ( "" ) pdg_workitemdatasource ( 0 ) pdg_compressworkitemdata ( on ) pdg_validateoutputs ( on ) pdg_checkexpectedoutputs ( on ) sepparm2 ( ) pdg_mapmode ( 0 ) pdg_usemapzone ( off ) pdg_mapzone ( '$PDG_PATHMAP_ZONE' ) folder1 ( 0 ) tempdirmenu ( 1 ) tempdirappendpid ( on ) tempdircustom ( '$HOUDINI_TEMP_DIR/$HIPNAME/pdgtemp' ) pdg_deletetempdir ( 0 ) socketcallbacks ( 1 ) pdg_rpcignoreerrors ( 0 ) pdg_rpcmaxerrors ( 5 ) pdg_rpctimeout ( 4 ) pdg_rpcretries ( 2 ) pdg_rpcbackoff ( 2 ) pdg_rpcbatch ( 1 ) pdg_rpcrelease ( on ) folder0_3 ( 0 ) local_single ( off ) local_is_CPU_number_set ( off ) local_CPUs_to_use ( 1 ) folder6 ( 0 ) local_useminfreemem ( 0 ) local_minfreemem ( 0 ) local_minfreemempct ( 0 ) folder2 ( 0 ) local_enabletimeout ( off ) local_maxtime ( 0 ) local_handletimeout ( 0 ) sepparm4 ( ) local_enablemaxmemory ( off ) local_maxmemory ( 0 ) local_handlememory ( 0 ) sepparm5 ( ) local_echandleby ( 0 ) local_echandleall ( on ) local_eccustomcode ( 1 ) sepparm ( ) local_maximumretries ( 3 ) local_addfailcountattr ( off ) local_failcountattr ( failurecount ) folder3 ( 0 ) local_usehoudinimaxthreads ( off ) local_houdinimaxthreads ( 0 ) local_requireswindow ( off ) local_skippackages ( on ) local_envunset ( "" ) local_env_file ( "" ) local_envmulti ( 0 )
chlock localscheduler3 -*
chautoscope localscheduler3 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c off -e on -b off localscheduler3
opexprlanguage -s hscript localscheduler3
opuserdata -n '___Version___' -v '1' localscheduler3

# Node localscheduler4 (Top/localscheduler)
opadd -e -n localscheduler localscheduler4
oplocate -x 0 -y 0 localscheduler4
opspareds "" localscheduler4
opparm localscheduler4  local_envmulti ( 0 )
opparm -V 1 localscheduler4 folder0 ( 0 0 0 ) folder5 ( 0 ) maxprocsmenu ( 0 ) maxprocs ( 1 ) pdg_usemaxtasks ( off ) pdg_maxtasks ( 0 ) verbose ( off ) pdg_waitforfailures ( off ) folder4 ( 0 ) pdg_workingdir ( '$HIP' ) hythonbin ( 0 ) hythonbincustomuniversal ( "" ) pdg_workitemdatasource ( 0 ) pdg_compressworkitemdata ( on ) pdg_validateoutputs ( on ) pdg_checkexpectedoutputs ( on ) sepparm2 ( ) pdg_mapmode ( 0 ) pdg_usemapzone ( off ) pdg_mapzone ( '$PDG_PATHMAP_ZONE' ) folder1 ( 0 ) tempdirmenu ( 1 ) tempdirappendpid ( on ) tempdircustom ( '$HOUDINI_TEMP_DIR/$HIPNAME/pdgtemp' ) pdg_deletetempdir ( 0 ) socketcallbacks ( 1 ) pdg_rpcignoreerrors ( 0 ) pdg_rpcmaxerrors ( 5 ) pdg_rpctimeout ( 4 ) pdg_rpcretries ( 2 ) pdg_rpcbackoff ( 2 ) pdg_rpcbatch ( 1 ) pdg_rpcrelease ( on ) folder0_3 ( 0 ) local_single ( off ) local_is_CPU_number_set ( off ) local_CPUs_to_use ( 1 ) folder6 ( 0 ) local_useminfreemem ( 0 ) local_minfreemem ( 0 ) local_minfreemempct ( 0 ) folder2 ( 0 ) local_enabletimeout ( off ) local_maxtime ( 0 ) local_handletimeout ( 0 ) sepparm4 ( ) local_enablemaxmemory ( off ) local_maxmemory ( 0 ) local_handlememory ( 0 ) sepparm5 ( ) local_echandleby ( 0 ) local_echandleall ( on ) local_eccustomcode ( 1 ) sepparm ( ) local_maximumretries ( 3 ) local_addfailcountattr ( off ) local_failcountattr ( failurecount ) folder3 ( 0 ) local_usehoudinimaxthreads ( off ) local_houdinimaxthreads ( 0 ) local_requireswindow ( off ) local_skippackages ( on ) local_envunset ( "" ) local_env_file ( "" ) local_envmulti ( 0 )
chlock localscheduler4 -*
chautoscope localscheduler4 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c off -e on -b off localscheduler4
opexprlanguage -s hscript localscheduler4
opuserdata -n '___Version___' -v '1' localscheduler4

# Node localscheduler5 (Top/localscheduler)
opadd -e -n localscheduler localscheduler5
oplocate -x 0 -y 0 localscheduler5
opspareds "" localscheduler5
opparm localscheduler5  local_envmulti ( 0 )
opparm -V 1 localscheduler5 folder0 ( 0 0 0 ) folder5 ( 0 ) maxprocsmenu ( 0 ) maxprocs ( 1 ) pdg_usemaxtasks ( off ) pdg_maxtasks ( 0 ) verbose ( off ) pdg_waitforfailures ( off ) folder4 ( 0 ) pdg_workingdir ( '$HIP' ) hythonbin ( 0 ) hythonbincustomuniversal ( "" ) pdg_workitemdatasource ( 0 ) pdg_compressworkitemdata ( on ) pdg_validateoutputs ( on ) pdg_checkexpectedoutputs ( on ) sepparm2 ( ) pdg_mapmode ( 0 ) pdg_usemapzone ( off ) pdg_mapzone ( '$PDG_PATHMAP_ZONE' ) folder1 ( 0 ) tempdirmenu ( 1 ) tempdirappendpid ( on ) tempdircustom ( '$HOUDINI_TEMP_DIR/$HIPNAME/pdgtemp' ) pdg_deletetempdir ( 0 ) socketcallbacks ( 1 ) pdg_rpcignoreerrors ( 0 ) pdg_rpcmaxerrors ( 5 ) pdg_rpctimeout ( 4 ) pdg_rpcretries ( 2 ) pdg_rpcbackoff ( 2 ) pdg_rpcbatch ( 1 ) pdg_rpcrelease ( on ) folder0_3 ( 0 ) local_single ( off ) local_is_CPU_number_set ( off ) local_CPUs_to_use ( 1 ) folder6 ( 0 ) local_useminfreemem ( 0 ) local_minfreemem ( 0 ) local_minfreemempct ( 0 ) folder2 ( 0 ) local_enabletimeout ( off ) local_maxtime ( 0 ) local_handletimeout ( 0 ) sepparm4 ( ) local_enablemaxmemory ( off ) local_maxmemory ( 0 ) local_handlememory ( 0 ) sepparm5 ( ) local_echandleby ( 0 ) local_echandleall ( on ) local_eccustomcode ( 1 ) sepparm ( ) local_maximumretries ( 3 ) local_addfailcountattr ( off ) local_failcountattr ( failurecount ) folder3 ( 0 ) local_usehoudinimaxthreads ( off ) local_houdinimaxthreads ( 0 ) local_requireswindow ( off ) local_skippackages ( on ) local_envunset ( "" ) local_env_file ( "" ) local_envmulti ( 0 )
chlock localscheduler5 -*
chautoscope localscheduler5 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c off -e on -b off localscheduler5
opexprlanguage -s hscript localscheduler5
opuserdata -n '___Version___' -v '1' localscheduler5

# Node localscheduler6 (Top/localscheduler)
opadd -e -n localscheduler localscheduler6
oplocate -x 0 -y 0 localscheduler6
opspareds "" localscheduler6
opparm localscheduler6  local_envmulti ( 0 )
opparm -V 1 localscheduler6 folder0 ( 0 0 0 ) folder5 ( 0 ) maxprocsmenu ( 0 ) maxprocs ( 1 ) pdg_usemaxtasks ( off ) pdg_maxtasks ( 0 ) verbose ( off ) pdg_waitforfailures ( off ) folder4 ( 0 ) pdg_workingdir ( '$HIP' ) hythonbin ( 0 ) hythonbincustomuniversal ( "" ) pdg_workitemdatasource ( 0 ) pdg_compressworkitemdata ( on ) pdg_validateoutputs ( on ) pdg_checkexpectedoutputs ( on ) sepparm2 ( ) pdg_mapmode ( 0 ) pdg_usemapzone ( off ) pdg_mapzone ( '$PDG_PATHMAP_ZONE' ) folder1 ( 0 ) tempdirmenu ( 1 ) tempdirappendpid ( on ) tempdircustom ( '$HOUDINI_TEMP_DIR/$HIPNAME/pdgtemp' ) pdg_deletetempdir ( 0 ) socketcallbacks ( 1 ) pdg_rpcignoreerrors ( 0 ) pdg_rpcmaxerrors ( 5 ) pdg_rpctimeout ( 4 ) pdg_rpcretries ( 2 ) pdg_rpcbackoff ( 2 ) pdg_rpcbatch ( 1 ) pdg_rpcrelease ( on ) folder0_3 ( 0 ) local_single ( off ) local_is_CPU_number_set ( off ) local_CPUs_to_use ( 1 ) folder6 ( 0 ) local_useminfreemem ( 0 ) local_minfreemem ( 0 ) local_minfreemempct ( 0 ) folder2 ( 0 ) local_enabletimeout ( off ) local_maxtime ( 0 ) local_handletimeout ( 0 ) sepparm4 ( ) local_enablemaxmemory ( off ) local_maxmemory ( 0 ) local_handlememory ( 0 ) sepparm5 ( ) local_echandleby ( 0 ) local_echandleall ( on ) local_eccustomcode ( 1 ) sepparm ( ) local_maximumretries ( 3 ) local_addfailcountattr ( off ) local_failcountattr ( failurecount ) folder3 ( 0 ) local_usehoudinimaxthreads ( off ) local_houdinimaxthreads ( 0 ) local_requireswindow ( off ) local_skippackages ( on ) local_envunset ( "" ) local_env_file ( "" ) local_envmulti ( 0 )
chlock localscheduler6 -*
chautoscope localscheduler6 -*
opset -d on -r off -h off -f off -y off -t off -l off -s off -u off -F on -c off -e on -b off localscheduler6
opexprlanguage -s hscript localscheduler6
opuserdata -n '___Version___' -v '1' localscheduler6
oporder -e localscheduler localscheduler1 localscheduler2 localscheduler3 localscheduler4 localscheduler5 localscheduler6 
opcf ..

# Node topnet2 (TopNet/topnet)
opadd -e -n topnet topnet2
oplocate -x 0 -y 0 topnet2
opspareds "" topnet2
opparm -V 20.5.522 topnet2 cookcontrolssection ( 0 ) generatestatic ( 0 ) cookbutton ( 0 ) dirtybutton ( 0 ) cancelbutton ( 0 ) taskgraphsection ( 0 ) checkpointformat ( 1 ) taskgraphfile ( '$HIP/$HIPNAME.taskgraph.$F.py' ) savetaskgraph ( 0 ) loadtaskgraph ( 0 ) taskgraphautosave ( off ) taskgraphsaverate ( 10 ) checkpointfile ( '$HIP/$HIPNAME.checkpoint.json' ) loadcheckpoint ( 0 ) checkpointload ( 0 ) checkpointenabled ( off ) checkpointrate ( 10 ) sep2 ( ) savegraphattribs ( on ) schedulersection ( 0 ) topscheduler ( "" ) usedefaultlabel ( off ) defaultlabel ( '$OS.`@pdg_index`' ) sep1 ( ) regenerationtype ( 0 ) evaluationtime ( 0 ) customtime ( 0 ) savescenefile ( on )
chlock topnet2 -*
chautoscope topnet2 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c off -e on -b off topnet2
opexprlanguage -s hscript topnet2
opuserdata -n '___Version___' -v '20.5.522' topnet2

# Node topnet3 (TopNet/topnet)
opadd -e -n topnet topnet3
oplocate -x 0 -y 0 topnet3
opspareds "" topnet3
opparm -V 20.5.522 topnet3 cookcontrolssection ( 0 ) generatestatic ( 0 ) cookbutton ( 0 ) dirtybutton ( 0 ) cancelbutton ( 0 ) taskgraphsection ( 0 ) checkpointformat ( 1 ) taskgraphfile ( '$HIP/$HIPNAME.taskgraph.$F.py' ) savetaskgraph ( 0 ) loadtaskgraph ( 0 ) taskgraphautosave ( off ) taskgraphsaverate ( 10 ) checkpointfile ( '$HIP/$HIPNAME.checkpoint.json' ) loadcheckpoint ( 0 ) checkpointload ( 0 ) checkpointenabled ( off ) checkpointrate ( 10 ) sep2 ( ) savegraphattribs ( on ) schedulersection ( 0 ) topscheduler ( "" ) usedefaultlabel ( off ) defaultlabel ( '$OS.`@pdg_index`' ) sep1 ( ) regenerationtype ( 0 ) evaluationtime ( 0 ) customtime ( 0 ) savescenefile ( on )
chlock topnet3 -*
chautoscope topnet3 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c off -e on -b off topnet3
opexprlanguage -s hscript topnet3
opuserdata -n '___Version___' -v '20.5.522' topnet3

# Node topnet4 (TopNet/topnet)
opadd -e -n topnet topnet4
oplocate -x 0 -y 0 topnet4
opspareds "" topnet4
opparm -V 20.5.522 topnet4 cookcontrolssection ( 0 ) generatestatic ( 0 ) cookbutton ( 0 ) dirtybutton ( 0 ) cancelbutton ( 0 ) taskgraphsection ( 0 ) checkpointformat ( 1 ) taskgraphfile ( '$HIP/$HIPNAME.taskgraph.$F.py' ) savetaskgraph ( 0 ) loadtaskgraph ( 0 ) taskgraphautosave ( off ) taskgraphsaverate ( 10 ) checkpointfile ( '$HIP/$HIPNAME.checkpoint.json' ) loadcheckpoint ( 0 ) checkpointload ( 0 ) checkpointenabled ( off ) checkpointrate ( 10 ) sep2 ( ) savegraphattribs ( on ) schedulersection ( 0 ) topscheduler ( "" ) usedefaultlabel ( off ) defaultlabel ( '$OS.`@pdg_index`' ) sep1 ( ) regenerationtype ( 0 ) evaluationtime ( 0 ) customtime ( 0 ) savescenefile ( on )
chlock topnet4 -*
chautoscope topnet4 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c off -e on -b off topnet4
opexprlanguage -s hscript topnet4
opuserdata -n '___Version___' -v '20.5.522' topnet4

# Node topnet5 (TopNet/topnet)
opadd -e -n topnet topnet5
oplocate -x 0 -y 0 topnet5
opspareds "" topnet5
opparm -V 20.5.522 topnet5 cookcontrolssection ( 0 ) generatestatic ( 0 ) cookbutton ( 0 ) dirtybutton ( 0 ) cancelbutton ( 0 ) taskgraphsection ( 0 ) checkpointformat ( 1 ) taskgraphfile ( '$HIP/$HIPNAME.taskgraph.$F.py' ) savetaskgraph ( 0 ) loadtaskgraph ( 0 ) taskgraphautosave ( off ) taskgraphsaverate ( 10 ) checkpointfile ( '$HIP/$HIPNAME.checkpoint.json' ) loadcheckpoint ( 0 ) checkpointload ( 0 ) checkpointenabled ( off ) checkpointrate ( 10 ) sep2 ( ) savegraphattribs ( on ) schedulersection ( 0 ) topscheduler ( "" ) usedefaultlabel ( off ) defaultlabel ( '$OS.`@pdg_index`' ) sep1 ( ) regenerationtype ( 0 ) evaluationtime ( 0 ) customtime ( 0 ) savescenefile ( on )
chlock topnet5 -*
chautoscope topnet5 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c off -e on -b off topnet5
opexprlanguage -s hscript topnet5
opuserdata -n '___Version___' -v '20.5.522' topnet5

# Node topnet6 (TopNet/topnet)
opadd -e -n topnet topnet6
oplocate -x 0 -y 0 topnet6
opspareds "" topnet6
opparm -V 20.5.522 topnet6 cookcontrolssection ( 0 ) generatestatic ( 0 ) cookbutton ( 0 ) dirtybutton ( 0 ) cancelbutton ( 0 ) taskgraphsection ( 0 ) checkpointformat ( 1 ) taskgraphfile ( '$HIP/$HIPNAME.taskgraph.$F.py' ) savetaskgraph ( 0 ) loadtaskgraph ( 0 ) taskgraphautosave ( off ) taskgraphsaverate ( 10 ) checkpointfile ( '$HIP/$HIPNAME.checkpoint.json' ) loadcheckpoint ( 0 ) checkpointload ( 0 ) checkpointenabled ( off ) checkpointrate ( 10 ) sep2 ( ) savegraphattribs ( on ) schedulersection ( 0 ) topscheduler ( "" ) usedefaultlabel ( off ) defaultlabel ( '$OS.`@pdg_index`' ) sep1 ( ) regenerationtype ( 0 ) evaluationtime ( 0 ) customtime ( 0 ) savescenefile ( on )
chlock topnet6 -*
chautoscope topnet6 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c off -e on -b off topnet6
opexprlanguage -s hscript topnet6
opuserdata -n '___Version___' -v '20.5.522' topnet6

# Node topnet7 (TopNet/topnet)
opadd -e -n topnet topnet7
oplocate -x 0 -y 0 topnet7
opspareds "" topnet7
opparm -V 20.5.522 topnet7 cookcontrolssection ( 0 ) generatestatic ( 0 ) cookbutton ( 0 ) dirtybutton ( 0 ) cancelbutton ( 0 ) taskgraphsection ( 0 ) checkpointformat ( 1 ) taskgraphfile ( '$HIP/$HIPNAME.taskgraph.$F.py' ) savetaskgraph ( 0 ) loadtaskgraph ( 0 ) taskgraphautosave ( off ) taskgraphsaverate ( 10 ) checkpointfile ( '$HIP/$HIPNAME.checkpoint.json' ) loadcheckpoint ( 0 ) checkpointload ( 0 ) checkpointenabled ( off ) checkpointrate ( 10 ) sep2 ( ) savegraphattribs ( on ) schedulersection ( 0 ) topscheduler ( "" ) usedefaultlabel ( off ) defaultlabel ( '$OS.`@pdg_index`' ) sep1 ( ) regenerationtype ( 0 ) evaluationtime ( 0 ) customtime ( 0 ) savescenefile ( on )
chlock topnet7 -*
chautoscope topnet7 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c off -e on -b off topnet7
opexprlanguage -s hscript topnet7
opuserdata -n '___Version___' -v '20.5.522' topnet7
oporder -e topnet1 topnet2 topnet3 topnet4 topnet5 topnet6 topnet7 
opcf ..
oporder -e obj out ch shop img vex mat stage tasks 

opcf /
opcf obj
opcf geo1
opcf curvature
opwire -n fit -0 output0
opwire -n N -0 curvature
opwire -n -i 0 -0 N
opwire -n curvature -0 fit
opwire -n min -1 fit
opwire -n max -2 fit
opwire -n curvature -0 min
opwire -n curvature -0 max
opcf ..
opcf gradient
opwire -n gradient -0 output0
opwire -n -i 0 -0 gradient
opcf ..
opcf attributefunction
opwire -n sine -0 output0
opwire -n -i 0 -0 sine
opcf ..
opcf cluster
opwire -n color1 -0 output0
opwire -n foreach_begin5 -1 attribwrangle9
opwire -n foreach_count3 -2 attribwrangle9
opwire -n foreach_begin7 -0 attribwrangle14
opwire -n foreach_begin8 -1 attribwrangle14
opwire -n compile_end3 -0 init_clusters1
opwire -n compile_end4 -0 tag_cluster1
opwire -n attribwrangle9 -0 foreach_end4
opwire -n compile_begin3 -0 foreach_begin5
opwire -n foreach_end4 -0 compile_end3
opwire -n -i 0 -0 compile_begin3
opwire -n extractcentroid2 -0 foreach_end5
opwire -n compile_begin4 -0 foreach_begin6
opwire -n foreach_begin6 -0 extractcentroid2
opwire -n foreach_end5 -0 compile_end4
opwire -n attribwrangle14 -0 compile_begin4
opwire -n tag_cluster1 -0 foreach_end6
opwire -n init_clusters1 -0 foreach_begin8
opwire -n -i 0 -0 attribwrangle1
opwire -n foreach_end6 -1 attribwrangle1
opwire -n attribwrangle1 -0 color1
opwire -n foreach_end6 -0 output1
opcf ..
opcf curvefromanim
opwire -n snap -0 output0
opwire -n connectivity1 -0 extractcentroid2
opwire -n extractcentroid2 -0 solver1
opwire -n timeshift -0 add1
opwire -n add1 -0 resample1
opwire -n -i 1 -0 bound1
opwire -n resample1 -0 group1
opwire -n padding -1 group1
opwire -n group1 -0 blast1
opwire -n bound1 -0 padding
opwire -n switch1 -0 snap
opwire -n -i 1 -1 snap
opwire -n solver1 -0 timeshift
opwire -n blast1 -0 groupdelete1
opwire -n resample1 -0 switch1
opwire -n groupdelete1 -1 switch1
opwire -n -i 0 -0 connectivity1
opcf ..
opcf matrixcurve
opwire -n switch1 -0 output0
opwire -n -i 0 -0 init_z
opwire -n init_z -0 init_x
opwire -n init_x -0 parallel_transport
opwire -n init_z -0 orthogonal
opwire -n orthogonal -0 switch1
opwire -n parallel_transport -1 switch1
opcf ..
opcf solvercurveadvect
opwire -n switch2 -0 output0
opwire -n -i 0 -0 init
opwire -n -i 1 -1 init
opwire -n init -0 vectorfield
opwire -n -i 1 -1 vectorfield
opwire -n vectorfield -0 line
opwire -n line -0 switch1
opwire -n timeshift1 -1 switch1
opwire -n line -0 timeshift1
opwire -n switch1 -0 switch2
opwire -n switch3 -1 switch2
opwire -n -i 1 -0 initfood
opwire -n -i 0 -1 initfood
opwire -n merge1 -0 spacecolony
opwire -n -i 0 -0 initseed
opwire -n initseed -0 merge1
opwire -n initfood -1 merge1
opwire -n spacecolony -0 blastfood
opwire -n blastfood -0 switch3
opwire -n timeshift2 -1 switch3
opwire -n blastfood -0 timeshift2
opcf ..
opcf deformerripple
opwire -n attribwrangle2 -0 output0
opwire -n -i 0 -0 attribwrangle1
opwire -n -i 1 -1 attribwrangle1
opwire -n attribwrangle1 -0 attribwrangle2
opcf ..
opcf solverdecay
opwire -n solver1 -0 output0
opwire -n -i 0 -0 solver1
opcf ..
opcf isolatecorners
opwire -n isolate_corners -0 output0
opwire -n -i 0 -0 isolate_corners
opcf ..
opcf matrixconstruct
opwire -n switch1 -0 output0
opwire -n -i 0 -0 plane
opcf plane
opwire -n construct_matrix -0 output0
opwire -n -i 0 -0 computecom
opwire -n computecom -0 promotecom
opwire -n promotecom -0 z
opwire -n z -0 y_init
opwire -n project_to_tangent_plane -0 x
opwire -n x -0 construct_matrix
opwire -n y_init -0 project_to_tangent_plane
opcf ..
opwire -n -i 0 -0 object
opcf object
opwire -n switch1 -0 output0
opwire -n -i 0 -0 timeshift1
opwire -n timeshift1 -0 extracttransform1
opwire -n -i 0 -1 extracttransform1
opwire -n -i 0 -0 fetch_transforms
opwire -n promo -1 fetch_transforms
opwire -n extracttransform1 -2 fetch_transforms
opwire -n timeshift1 -0 bound1
opwire -n bound1 -0 hold_transform
opwire -n fetch_transforms -0 visualize1
opwire -n hold_transform -0 promo
opwire -n fetch_transforms -0 switch1
opwire -n visualize1 -1 switch1
opcf ..
opwire -n plane -0 switch1
opwire -n object -1 switch1
opcf ..
opcf matrixtangentspace
opwire -n tangent_space -0 output0
opwire -n extractcentroid1 -0 tangent_space
opwire -n attribwrangle1 -0 extractcentroid1
opwire -n -i 0 -0 attribwrangle1
opcf ..
opcf meshcage
opwire -n fuse2 -0 output0
opwire -n polyreduce2 -0 N
opwire -n N -0 prim_partition
opwire -n prim_reconstruct1 -0 foreach_end3
opwire -n split1 -0 foreach_begin3
opwire -n foreach_begin3 -0 prim_reconstruct1
opcf prim_reconstruct1
opwire -n remove_nbc -0 wind_and_edgevectors
opwire -n _nbc -0 sort_nbc
opwire -n -i 0 -0 _nbc
opwire -n wind_and_edgevectors -0 sort_by_sort
opwire -n removeprim -0 removepoint
opwire -n remove_sort_att -0 removeprim
opwire -n removepoint -0 reconstruct
opwire -n sort_nbc -0 remove_nbc
opwire -n sort_by_sort -0 remove_sort_att
opwire -n reconstruct -0 attribcopy1
opwire -n -i 0 -1 attribcopy1
opwire -n attribcopy1 -0 output1
opcf ..
opwire -n convexdecomposition2 -0 polyreduce2
opwire -n -i 0 -0 convexdecomposition2
opwire -n attribwrangle1 -0 fuse2
opwire -n prim_partition -0 group_partitioned
opwire -n group_partitioned -0 split1
opwire -n foreach_end3 -0 merge1
opwire -n -o 1 split1 -1 merge1
opwire -n merge1 -0 attribwrangle1
opcf ..
opcf noisepower
opwire -n paint -0 output0
opwire -n iteration -0 powernoise
opcf powernoise
opwire -n const1 -0 add1
opwire -n parm1 -1 add1
opwire -n add1 -0 pow1
opwire -n addconst1 -1 pow1
opwire -n subtract3 -0 pow2
opwire -n addconst1 -1 pow2
opwire -n const4 -0 subtract3
opwire -n parm2 -1 subtract3
opwire -n pow2 -0 amp
opwire -n parm4 -1 amp
opwire -n pow1 -0 freq
opwire -n parm4 -1 freq
opwire -n geometryvopglobal1 -0 subnet1
opwire -n floattovec1 -1 subnet1
opwire -n amp -2 subnet1
opwire -n -o 9 geometryvopglobal1 -3 subnet1
opcf subnet1
opwire -n turbulent -5 suboutput1
opwire -n -o 1 turbulent -6 suboutput1
opwire -n -o 2 turbulent -7 suboutput1
opwire -n -o 3 turbulent -8 suboutput1
opwire -n -o 4 turbulent -9 suboutput1
opwire -n -o 5 turbulent -10 suboutput1
opwire -n aa -11 suboutput1
opwire -n -o 1 aa -12 suboutput1
opwire -n -o 2 aa -13 suboutput1
opwire -n curl -14 suboutput1
opwire -n -o 1 curl -15 suboutput1
opwire -n -o 2 curl -16 suboutput1
opwire -n -o 3 curl -17 suboutput1
opwire -n -o 4 curl -18 suboutput1
opwire -n -o 5 curl -19 suboutput1
opwire -n -o 6 curl -20 suboutput1
opwire -n unifiednoise1 -21 suboutput1
opwire -n subinput1 -0 turbulent
opwire -n -o 1 subinput1 -1 turbulent
opwire -n multiply1 -2 turbulent
opwire -n -o 2 subinput1 -3 turbulent
opcf turbulent
opwire -n subinput1 -1 turbnoise1
opwire -n -o 1 subinput1 -2 turbnoise1
opwire -n -o 2 subinput1 -3 turbnoise1
opwire -n -o 3 subinput1 -4 turbnoise1
opwire -n turbnoise1 -4 suboutput1
opwire -n turbnoise2 -5 suboutput1
opwire -n turbnoise3 -6 suboutput1
opwire -n turbnoise4 -7 suboutput1
opwire -n turbnoise5 -8 suboutput1
opwire -n turbnoise6 -9 suboutput1
opwire -n subinput1 -1 turbnoise2
opwire -n -o 1 subinput1 -2 turbnoise2
opwire -n -o 2 subinput1 -3 turbnoise2
opwire -n -o 3 subinput1 -4 turbnoise2
opwire -n subinput1 -1 turbnoise3
opwire -n -o 1 subinput1 -2 turbnoise3
opwire -n -o 2 subinput1 -3 turbnoise3
opwire -n -o 3 subinput1 -4 turbnoise3
opwire -n subinput1 -1 turbnoise4
opwire -n -o 1 subinput1 -2 turbnoise4
opwire -n -o 2 subinput1 -3 turbnoise4
opwire -n -o 3 subinput1 -4 turbnoise4
opwire -n subinput1 -1 turbnoise5
opwire -n -o 1 subinput1 -2 turbnoise5
opwire -n -o 2 subinput1 -3 turbnoise5
opwire -n -o 3 subinput1 -4 turbnoise5
opwire -n subinput1 -1 turbnoise6
opwire -n -o 1 subinput1 -2 turbnoise6
opwire -n -o 2 subinput1 -3 turbnoise6
opwire -n -o 3 subinput1 -4 turbnoise6
opcf ..
opwire -n subinput1 -0 aa
opwire -n -o 2 subinput1 -1 aa
opwire -n -o 1 subinput1 -2 aa
opwire -n multiply1 -3 aa
opcf aa
opwire -n subinput1 -0 aanoise2
opwire -n floattovec1 -1 aanoise2
opwire -n -o 3 subinput1 -2 aanoise2
opwire -n -o 1 subinput1 -3 aanoise2
opwire -n -o 2 subinput1 -0 floattovec1
opwire -n -o 2 subinput1 -1 floattovec1
opwire -n -o 2 subinput1 -2 floattovec1
opwire -n aanoise2 -4 suboutput1
opwire -n aanoise3 -5 suboutput1
opwire -n aaflownoise1 -6 suboutput1
opwire -n subinput1 -0 aanoise3
opwire -n floattovec1 -1 aanoise3
opwire -n -o 3 subinput1 -2 aanoise3
opwire -n -o 1 subinput1 -3 aanoise3
opwire -n subinput1 -0 aaflownoise1
opwire -n floattovec1 -1 aaflownoise1
opwire -n -o 3 subinput1 -2 aaflownoise1
opwire -n -o 1 subinput1 -3 aaflownoise1
opcf ..
opwire -n subinput1 -0 curl
opwire -n -o 1 subinput1 -1 curl
opwire -n multiply1 -2 curl
opwire -n -o 2 subinput1 -3 curl
opcf curl
opwire -n subinput1 -1 curlnoise1
opwire -n -o 1 subinput1 -2 curlnoise1
opwire -n -o 2 subinput1 -3 curlnoise1
opwire -n -o 3 subinput1 -4 curlnoise1
opwire -n curlnoise1 -4 suboutput1
opwire -n curlnoise2 -5 suboutput1
opwire -n curlnoise3 -6 suboutput1
opwire -n curlnoise4 -7 suboutput1
opwire -n curlnoise5 -8 suboutput1
opwire -n curlnoise6 -9 suboutput1
opwire -n curlnoise7 -10 suboutput1
opwire -n subinput1 -1 curlnoise2
opwire -n -o 1 subinput1 -2 curlnoise2
opwire -n -o 2 subinput1 -3 curlnoise2
opwire -n -o 3 subinput1 -4 curlnoise2
opwire -n subinput1 -1 curlnoise3
opwire -n -o 1 subinput1 -2 curlnoise3
opwire -n -o 2 subinput1 -3 curlnoise3
opwire -n -o 3 subinput1 -4 curlnoise3
opwire -n subinput1 -1 curlnoise4
opwire -n -o 1 subinput1 -2 curlnoise4
opwire -n -o 2 subinput1 -3 curlnoise4
opwire -n -o 3 subinput1 -4 curlnoise4
opwire -n subinput1 -1 curlnoise5
opwire -n -o 1 subinput1 -2 curlnoise5
opwire -n -o 2 subinput1 -3 curlnoise5
opwire -n -o 3 subinput1 -4 curlnoise5
opwire -n subinput1 -1 curlnoise6
opwire -n -o 1 subinput1 -2 curlnoise6
opwire -n -o 2 subinput1 -3 curlnoise6
opwire -n -o 3 subinput1 -4 curlnoise6
opwire -n subinput1 -1 curlnoise7
opwire -n -o 1 subinput1 -2 curlnoise7
opwire -n -o 2 subinput1 -3 curlnoise7
opwire -n -o 3 subinput1 -4 curlnoise7
opcf ..
opwire -n parm1 -0 switch1
opwire -n const6 -1 switch1
opwire -n multiply2 -2 switch1
opwire -n -o 3 subinput1 -0 multiply2
opwire -n parm2 -1 multiply2
opwire -n parm5 -0 add1
opwire -n switch1 -1 add1
opwire -n bind3 -2 add1
opwire -n subinput1 -0 unifiednoise1
opwire -n -o 1 subinput1 -2 unifiednoise1
opwire -n multiply1 -3 unifiednoise1
opwire -n -o 2 subinput1 -27 unifiednoise1
opwire -n switch2 -0 multiply1
opwire -n add1 -1 multiply1
opwire -n addconst1 -0 switch2
opwire -n parm3 -1 switch2
opwire -n bind1 -2 switch2
opwire -n bind2 -0 addconst1
opcf ..
opwire -n const5 -0 switch1
opwire -n subnet1 -1 switch1
opwire -n -o 1 subnet1 -2 switch1
opwire -n -o 2 subnet1 -3 switch1
opwire -n -o 3 subnet1 -4 switch1
opwire -n -o 4 subnet1 -5 switch1
opwire -n -o 5 subnet1 -6 switch1
opwire -n -o 6 subnet1 -7 switch1
opwire -n -o 7 subnet1 -8 switch1
opwire -n -o 8 subnet1 -9 switch1
opwire -n -o 9 subnet1 -10 switch1
opwire -n -o 10 subnet1 -11 switch1
opwire -n -o 11 subnet1 -12 switch1
opwire -n -o 12 subnet1 -13 switch1
opwire -n -o 13 subnet1 -14 switch1
opwire -n -o 14 subnet1 -15 switch1
opwire -n -o 15 subnet1 -16 switch1
opwire -n -o 16 subnet1 -17 switch1
opwire -n abs1 -0 add2
opwire -n bind2 -1 add2
opwire -n switch1 -0 abs1
opwire -n add2 -0 bind3
opwire -n freq -0 floattovec1
opwire -n freq -1 floattovec1
opwire -n freq -2 floattovec1
opwire -n floattovec1 -0 bind4
opwire -n amp -0 bind5
opwire -n bind1 -0 addconst1
opcf ..
opwire -n foreach_begin3 -0 iteration
opwire -n foreach_count2 -1 iteration
opwire -n powernoise -0 foreach_end3
opwire -n foreach_begin2 -0 foreach_begin3
opwire -n foreach_begin2 -0 foreach_count2
opwire -n switch2 -0 attribdelete
opwire -n compile_end1 -0 init
opwire -n foreach_end3 -0 length
opwire -n length -0 attribpromote1
opwire -n attribpromote1 -0 attribpromote2
opwire -n attribpromote2 -0 attribpromote3
opwire -n attribpromote3 -0 attribpromote4
opwire -n attribpromote4 -0 objectpost
opwire -n pieceoffset -0 objectinfo
opwire -n objectinfo -0 objectxform
opwire -n objectxform -0 switch1
opwire -n curvexform -1 switch1
opwire -n objectxform -2 switch1
opwire -n curveinfo -0 curvexform
opwire -n pieceoffset -0 perimeter
opwire -n perimeter -0 attribpromote5
opwire -n attribpromote5 -0 curveinfo
opwire -n attribpromote4 -0 curvepost
opwire -n objectpost -0 switch2
opwire -n curvepost -1 switch2
opwire -n objectpost -2 switch2
opwire -n -i 0 -0 connectivity1
opwire -n attribpromote6 -0 foreach_end1
opwire -n compile_begin1 -0 foreach_begin1
opwire -n foreach_begin1 -0 pieceoffset
opwire -n foreach_end1 -0 compile_end1
opwire -n connectivity1 -0 compile_begin1
opwire -n switch1 -0 attribpromote6
opwire -n attribdelete -0 foreach_end2
opwire -n init -0 foreach_begin2
opwire -n foreach_end2 -0 paint
opcf ..
opcf prim_angle_partition
opwire -n prim_partition -0 output0
opwire -n -i 0 -0 N1
opwire -n N1 -0 prim_partition
opcf ..
opcf prim_reconstruct
opwire -n attribcopy1 -0 output0
opwire -n remove_nbc -0 wind_and_edgevectors
opwire -n _nbc -0 sort_nbc
opwire -n -i 0 -0 _nbc
opwire -n wind_and_edgevectors -0 sort_by_sort
opwire -n removeprim -0 removepoint
opwire -n remove_sort_att -0 removeprim
opwire -n removepoint -0 reconstruct
opwire -n sort_nbc -0 remove_nbc
opwire -n sort_by_sort -0 remove_sort_att
opwire -n reconstruct -0 attribcopy1
opwire -n -i 0 -1 attribcopy1
opcf ..
opcf rayintersect
opwire -n foreach_end7 -0 output0
opwire -n -i 0 -0 keep_points
opwire -n keep_points -0 init
opwire -n init -0 visualize5
opwire -n init -0 lines_to_intersect
opwire -n intersect -0 foreach_end6
opwire -n init -0 foreach_begin6
opwire -n lines_to_intersect -0 foreach_begin6_metadata1
opwire -n foreach_begin6_metadata1 -0 prune
opwire -n foreach_begin6 -1 prune
opwire -n foreach_begin6 -0 intersect
opwire -n prune -1 intersect
opwire -n foreach_begin7 -0 condition_filter
opwire -n condition_filter -0 foreach_end7
opwire -n filter_bounds -0 foreach_begin7
opwire -n foreach_end6 -0 clean
opwire -n clean -0 filter_bounds
opwire -n com_vector -1 filter_bounds
opwire -n extractcentroid2 -2 filter_bounds
opwire -n keep_points -0 extractcentroid2
opwire -n keep_points -0 com_vector
opwire -n extractcentroid2 -1 com_vector
opcf ..
opcf solverpropagation
opwire -n attribdelete1 -0 output0
opwire -n -i 0 -0 init
opwire -n init -0 chums
opwire -n chums -0 spread
opwire -n attribwrangle1 -0 timeshift1
opwire -n attribwrangle1 -0 switch1
opwire -n timeshift1 -1 switch1
opwire -n switch1 -0 attribdelete1
opwire -n spread -0 attribpromote1
opwire -n attribpromote1 -0 attribpromote2
opwire -n attribpromote2 -0 attribpromote3
opwire -n attribpromote3 -0 attribpromote4
opwire -n attribpromote4 -0 attribwrangle1
opcf ..
opcf vector_conditional_rotate
opwire -n vector_orient -0 output0
opwire -n -i 0 -0 vector_orient
opcf ..
opcf vectorfield_formula
opwire -n switch1 -0 output0
opwire -n -i 0 -0 style01
opwire -n -i 0 -0 style02
opwire -n -i 0 -0 style03
opwire -n -i 0 -0 style04
opwire -n -i 0 -0 style05
opwire -n -i 0 -0 current01
opwire -n -i 0 -0 current02
opwire -n -i 0 -0 current03
opwire -n -i 0 -0 current04
opwire -n -i 0 -0 current05
opwire -n style01 -0 switch1
opwire -n style02 -1 switch1
opwire -n style03 -2 switch1
opwire -n style04 -3 switch1
opwire -n style05 -4 switch1
opwire -n current01 -5 switch1
opwire -n current02 -6 switch1
opwire -n current03 -7 switch1
opwire -n current04 -8 switch1
opwire -n current05 -9 switch1
opcf ..
opcf vectorfield_object_flow
opwire -n blast -0 output0
opwire -n attribwrangle4 -0 object_flow
opwire -n object_vectors -1 object_flow
opwire -n attribpromote2 -1 object_vectors
opwire -n trail1 -0 attribpromote2
opwire -n attribwrangle4 -0 solver1
opwire -n object_flow -1 solver1
opwire -n -i 0 -0 attribwrangle4
opwire -n solver1 -0 trail2
opwire -n switch1 -0 blast
opwire -n object_flow -0 switch1
opwire -n set -1 switch1
opwire -n trail2 -0 set
opcf ..
opcf vector_project
opwire -n switch1 -0 output0
opwire -n -i 0 -0 tangentplane
opwire -n -i 0 -0 onto
opwire -n tangentplane -0 switch1
opwire -n onto -1 switch1
opcf ..
opcf array_remove_duplicate
opwire -n -i 0 -0 detail_int
opwire -n -i 0 -0 detail_float
opwire -n -i 0 -0 detail_string
opwire -n -i 0 -0 prim_int
opwire -n -i 0 -0 prim_float
opwire -n -i 0 -0 prim_string
opwire -n -i 0 -0 point_int
opwire -n -i 0 -0 point_float
opwire -n -i 0 -0 point_string
opwire -n switch5 -0 output0
opwire -n detail_int -0 switch2
opwire -n detail_float -1 switch2
opwire -n detail_string -2 switch2
opwire -n prim_int -0 switch3
opwire -n prim_float -1 switch3
opwire -n prim_string -2 switch3
opwire -n point_int -0 switch4
opwire -n point_float -1 switch4
opwire -n point_string -2 switch4
opwire -n switch2 -0 switch5
opwire -n switch3 -1 switch5
opwire -n switch4 -2 switch5
opcf ..
opcf attribute_range
opwire -n switch1 -0 output0
opwire -n python1 -0 export_point
opwire -n min -1 export_point
opwire -n max -2 export_point
opwire -n python1 -0 min
opwire -n python1 -0 max
opwire -n retime1 -0 sample_range
opwire -n python1 -0 export_prim
opwire -n min -1 export_prim
opwire -n max -2 export_prim
opwire -n switch2 -0 foreach_end1
opwire -n null1 -0 foreach_begin1
opwire -n -i 0 -0 null1
opwire -n foreach_begin1 -0 python1
opwire -n foreach_count1 -1 python1
opwire -n null1 -0 retime1
opwire -n foreach_end1 -0 switch1
opwire -n foreach_end2 -1 switch1
opwire -n python2 -0 export_point1
opwire -n foreach_begin2_metadata1 -1 export_point1
opwire -n timeshift2 -0 foreach_begin2_metadata1
opwire -n python2 -0 export_prim1
opwire -n foreach_begin2_metadata1 -1 export_prim1
opwire -n sample_range -0 timeshift2
opwire -n switch3 -0 foreach_end2
opwire -n null1 -0 foreach_begin2
opwire -n foreach_begin2 -0 python2
opwire -n foreach_count2 -1 python2
opwire -n export_prim -0 switch2
opwire -n export_point -1 switch2
opwire -n export_prim1 -0 switch3
opwire -n export_point1 -1 switch3
opcf ..
opcf transformuniform
opwire -n compile_end1 -0 move_back
opwire -n foreach_begin2 -0 objectinfo
opwire -n objectinfo -0 object_trans_scale
opwire -n foreach_end2 -0 compile_end1
opwire -n connectivity2 -0 compile_begin1
opwire -n object_trans_scale -0 foreach_end2
opwire -n compile_begin1 -0 foreach_begin2
opwire -n connectivity2 -0 output0
opcf ..
opcf iterative_spread
opwire -n -i 0 -0 attribdelete1
opwire -n attribdelete1 -0 scatter1
opwire -n scatter1 -0 attribwrangle1
opwire -n attribdelete1 -0 scatter2
opwire -n scatter2 -0 attribtransfer1
opwire -n attribwrangle1 -1 attribtransfer1
opwire -n initialise -0 color1
opwire -n stop_condition -0 foreach_end1
opwire -n color1 -0 foreach_begin1
opwire -n attribtransfer1 -0 initialise
opwire -n foreach_begin1 -0 split1
opwire -n split1 -0 fetch_chums
opwire -n -o 1 split1 -1 fetch_chums
opwire -n reset_seeds -0 core_process
opwire -n fetch_chums -1 core_process
opwire -n foreach_begin1 -0 reset_seeds
opwire -n store_iteration -0 stop_condition
opwire -n core_process -0 store_iteration
opwire -n foreach_count1 -1 store_iteration
opwire -n foreach_end1 -0 frame_fit
opwire -n attribpromote1 -1 frame_fit
opwire -n foreach_end1 -0 attribpromote1
opwire -n frame_fit -0 color2
opwire -n color2 -0 output0
opcf ..
opcf ..
opcf ..
opcf img
opcf ..
opcf tasks
opcf topnet1
opcf ..
opcf ..
opcf $saved_path
