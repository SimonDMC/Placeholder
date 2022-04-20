#version 150

#moj_import <fog.glsl>

uniform sampler2D Sampler0;

uniform vec4 ColorModulator;
uniform float FogStart;
uniform float FogEnd;
uniform vec4 FogColor;

in float vertexDistance;
in vec4 vertexColor;
in vec4 lightMapColor;
in vec4 overlayColor;
in vec2 texCoord0;
in vec4 normal;

out vec4 fragColor;

void main() {
    vec4 color = texture(Sampler0, texCoord0) * vertexColor * ColorModulator;
		// THIS IS THE ONLY LINE ADDED TO THE BASE SHADER
		// basically it makes invisibly retextured entities not render
		// this is used for a shulker in lvl 3 when you hold the crouch item
		// to my knowledge there is no other way of making a shulker fully
		// invisible
		if (color.a < 0.1) { discard; }
		//
    color.rgb = mix(overlayColor.rgb, color.rgb, overlayColor.a);
    color *= lightMapColor;
    fragColor = linear_fog(color, vertexDistance, FogStart, FogEnd, FogColor);
}
