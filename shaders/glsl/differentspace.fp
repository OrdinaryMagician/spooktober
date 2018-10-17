uniform float timer;

vec4 ProcessTexel()
{
	vec3 normal = normalize(vEyeNormal.xyz);
	vec2 uv;
	uv.x = (1.0-normal.x)*0.5-0.5;
	uv.y = (normal.y+1.0)*0.5-0.5;
	uv.x *= 0.5;
	vec2 uv2;
	uv2.x = (uv.x*cos(timer*0.1)-uv.y*sin(timer*0.1))+0.5;
	uv2.y = (uv.x*sin(timer*0.1)+uv.y*cos(timer*0.1))+0.5;
	vec3 col = texture(layer1,uv2).rgb;
	uv2.x = (uv.x*cos(timer*-0.1)-uv.y*sin(timer*-0.1))+0.5;
	uv2.y = (uv.x*sin(timer*-0.1)+uv.y*cos(timer*-0.1))+0.5;
	col += texture(layer2,uv2).rgb;
	return vec4(col*0.5,1.0);
}
