#pragma once
#include "Beyond.h"
#include "BeyondMemoryManager.h"

namespace Beyond
{

	class BeyondAPI MemoryObject
	{
	public:
		MemoryObject();
		~MemoryObject();

		static CMemoryManager& GetCMemoryMananger();
	};


}


