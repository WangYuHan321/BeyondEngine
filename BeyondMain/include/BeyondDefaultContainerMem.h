#pragma once
#include "BeyondMemoryObject.h"
#include "BeyondMemoryManager.h"

namespace Beyond
{
	class  BeyondAPI DefaultContainerMemory
	{
	public:
		DefaultContainerMemory();
		virtual ~DefaultContainerMemory();

		virtual void* Allocate(ULLong uiSize, ULLong uiAlignment, bool bIsArray);
		virtual void Deallocate(char* pAddrs, ULLong uiAlignment, bool bIsArray);
	};
}



