//
// Simple passthrough vertex shader
//
attribute vec3 in_Position;                  // (x,y,z)
//attribute vec3 in_Normal;                  // (x,y,z)     unused in this shader.	
attribute vec4 in_Colour;                    // (r,g,b,a)
attribute vec2 in_TextureCoord;              // (u,v)

varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
    vec4 object_space_pos = vec4( in_Position.x, in_Position.y, in_Position.z, 1.0);
    gl_Position = gm_Matrices[MATRIX_WORLD_VIEW_PROJECTION] * object_space_pos;
    
    v_vColour = in_Colour;
    v_vTexcoord = in_TextureCoord;
}

//######################_==_YOYO_SHADER_MARKER_==_######################@~//
// Outline fragment shader con borde blanco
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform float pixelH;
uniform float pixelW;

void main()
{
    vec2 offsetX = vec2(pixelW, 0.0);
    vec2 offsetY = vec2(0.0, pixelH);

    // Detectamos si es borde
    float alpha = texture2D(gm_BaseTexture, v_vTexcoord).a;
    float is_empty = ceil(1.0 - alpha);

    alpha += ceil(texture2D(gm_BaseTexture, v_vTexcoord + offsetX).a);
    alpha += ceil(texture2D(gm_BaseTexture, v_vTexcoord - offsetX).a);
    alpha += ceil(texture2D(gm_BaseTexture, v_vTexcoord + offsetY).a);
    alpha += ceil(texture2D(gm_BaseTexture, v_vTexcoord - offsetY).a);

    // Color normal de la textura
    vec4 baseColor = v_vColour * texture2D(gm_BaseTexture, v_vTexcoord);

    // Borde blanco (1,1,1) con alpha calculado
    vec4 outline_colour = vec4(1.0, 1.0, 1.0, alpha);

    // Mezclamos: si es borde, pinta borde, sino color base
    gl_FragColor = mix(baseColor, outline_colour, is_empty);
}

