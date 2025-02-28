shader_type spatial;
render_mode unshaded, cull_disabled;

uniform sampler2D viewport_tex; // текстура из вьюпорта

void fragment() {
    vec2 uv = SCREEN_UV;
    vec4 sky_color = texture(viewport_tex, uv);
    ALBEDO = sky_color.rgb;
}
