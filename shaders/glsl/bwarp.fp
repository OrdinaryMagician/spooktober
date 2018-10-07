uniform float timer;

vec4 ProcessTexel()
{
	vec2 uv = vTexCoord.st*2.0;
	vec3 col = vec3(0,0,0);
	uv.x -= timer*0.01234;
	uv.y -= timer*0.02124;
	uv.x += sin(uv.x*6.434+timer)*0.076;
	col += getTexel(uv).rgb;
	uv.x -= timer*0.02452;
	uv.y -= timer*0.03533;
	uv.y += cos(uv.y*4.235+timer)*0.034;
	col += getTexel(uv).rgb;
	uv.x -= timer*0.03425;
	uv.y -= timer*0.01232;
	uv.x += cos(uv.y*8.264+timer)*0.046;
	col += getTexel(uv).rgb;;
	uv.x -= timer*0.03523;
	uv.y -= timer*0.06523;
	uv.y += sin(uv.x*5.345+timer)*0.083;
	col += getTexel(uv).rgb;
	col *= 0.25;
	return vec4(col,1.0);
}
