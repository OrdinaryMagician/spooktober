#define PI 3.14159265

void main()
{
	vec2 coord = TexCoord;
	vec2 bof = 1.0/textureSize(InputTexture,0);
	vec4 res = texture(InputTexture,coord);
	int rsamples, tstep = 1;
	vec2 bstr = bof*8.0;
	float bstep;
	vec2 rcoord;
	for ( int i=1; i<=7; i++ )
	{
		rsamples = i*3;
		for ( int j=0; j<rsamples; j++ )
		{
			bstep = PI*2.0/rsamples;
			rcoord = vec2(cos(j*bstep),sin(j*bstep))*i;
			//if ( rcoord.x < 0 || rcoord.x >= 1 || rcoord.y < 0 || rcoord.y >= 1 ) continue;
			tstep++;
			res += texture(InputTexture,coord+rcoord*bstr*strength);
		}
	}
	res /= tstep;
	FragColor = res;
}
