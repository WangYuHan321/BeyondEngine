#pragma once
#include "Beyond.h"

namespace Beyond
{
	enum TextureType 
	{
		Texture_Type_1D		  = 1,
		Texture_Type_2D		  = 2,
		Texture_Type_3D       = 3,
		Texture_Type_CUBE_MAP = 4,
		Texture_Type_2D_Array = 5
	};


	class  BeyondAPI Texture
	{

	public:
		Texture();
		virtual ~Texture() {};

		TextureType GetTextureType() { return m_tType; }

	private:
		UInt m_tWidth;
		UInt m_tHeight;
		UInt m_tDepth;

		TextureType m_tType;
	};
}



