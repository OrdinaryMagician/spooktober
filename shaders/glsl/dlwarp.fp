uniform float timer;

vec4 ProcessTexel()
{
	vec2 uv = vTexCoord.st;
	uv.x += cos(uv.y*3.434+timer)*0.076;
	uv.y += cos(uv.x*2.235+timer)*0.034;
	vec3 col = vec3(0,0,0);
	uv.x -= timer*0.01234;
	uv.y -= timer*0.02124;
	col += getTexel(uv).rgb;
	uv.x -= timer*0.02452;
	uv.y -= timer*0.03533;
	col += getTexel(uv).rgb;
	col *= 0.5;
	return vec4(col,1.0);
}
