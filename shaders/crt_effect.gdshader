shader_type canvas_item;

// Intensidad de las líneas de escaneo (0.0 = sin efecto, 1.0 = muy fuerte)
uniform float scanline_intensity : hint_range(0.0, 1.0) = 0.15;
// Curvatura de la pantalla (0.0 = plano, 1.0 = muy curvo)
uniform float curvature : hint_range(0.0, 1.0) = 0.03;
// Aberración cromática (separación RGB sutil)
uniform float chromatic_aberration : hint_range(0.0, 5.0) = 0.5;

void fragment() {
	// Coordenadas UV con curvatura
	vec2 uv = SCREEN_UV;
	vec2 centered = uv - 0.5;
	float dist = dot(centered, centered);
	uv = uv + centered * dist * curvature;

	// Aberración cromática
	float offset = chromatic_aberration / 1000.0;
	float r = texture(SCREEN_TEXTURE, uv + vec2(offset, 0.0)).r;
	float g = texture(SCREEN_TEXTURE, uv).g;
	float b = texture(SCREEN_TEXTURE, uv - vec2(offset, 0.0)).b;
	vec3 col = vec3(r, g, b);

	// Líneas de escaneo
	float scanline = sin(uv.y * 200.0 * 3.14159) * 0.5 + 0.5;
	col *= 1.0 - (scanline_intensity * (1.0 - scanline));

	// Viñeta sutil (oscurecer bordes)
	float vignette = 1.0 - dist * 1.5;
	col *= clamp(vignette, 0.3, 1.0);

	COLOR = vec4(col, 1.0);
}
