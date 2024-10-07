#pragma once
#include "Beyond.h"

namespace Beyond
{
	class BeyondAPI MemoryManager
	{
	public:

		MemoryManager();
		virtual ~MemoryManager();

		virtual void* Allocate(ULLong uiSize, ULLong uiAlignment, Bool bIsArray) = 0;
		virtual void Deallocate(char* pAddr, ULLong uiAlignment, Bool bIsArray) = 0;

	};

	class BeyondAPI CMemoryManager
	{
	public:
		
		CMemoryManager();
		~CMemoryManager();

		virtual void* Allocate(ULLong uiSize, ULLong uiAlignment, Bool bIsArray);
		virtual void Deallocate(Char* pAddr, ULLong uiAlignment, Bool bIsArray);

	};
}


