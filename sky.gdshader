shader_type sky;

uniform vec3 skyColor : source_color;
uniform vec3 horizonColor : source_color;
uniform sampler2D skyTexture;

void sky() {
	float col = clamp(EYEDIR.y / 0.05, 0.0, 1.0);
	vec3 finalColor =  mix(horizonColor, skyColor, col);
	//COLOR = finalColor + 0.1*LIGHT0_ENERGY;
	COLOR = texture(skyTexture, vec2(SKY_COORDS.x + 4.9 / 5.0, SKY_COORDS.y)).rgb;
}
