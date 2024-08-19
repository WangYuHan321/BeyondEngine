#pragma once
#include "Beyond.h"
#include "BeyondMemoryAllocator.h"
namespace Beyond
{
	class Texture : public ResourceAlloc
	{
	public:
		Texture(Int width, Int height, Int depth);
		virtual ~Texture();

	private:
		Int mWidth;
		Int mHeight;
		Int mDepth;
	};
}


