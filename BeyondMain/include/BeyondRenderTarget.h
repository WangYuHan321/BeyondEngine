#pragma once
#include "Beyond.h"
namespace Beyond
{
	class RenderTarget
	{
	public:
		RenderTarget(Int mWidth, Int mHeight);
		virtual ~RenderTarget();

	private:
		Int mWidth;
		Int mHeight;
	};
}


