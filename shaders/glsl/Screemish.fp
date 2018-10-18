
void main()
{
	vec3 colour		= texture( InputTexture, TexCoord ).rgb ;
	
	float value		= max( max( colour.r, colour.g ), colour.b );
	value			= sqrt( value );
	
	float scale		= abs( 1.0 - ( value * 2 - 1 ));
	colour			= mix( colour, colour * 0.615, scale );
	
	FragColor		= vec4( colour, 1.0 );
}
