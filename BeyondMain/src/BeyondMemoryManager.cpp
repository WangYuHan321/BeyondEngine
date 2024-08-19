#include <memory>
#include "BeyondMemoryManager.h"

Beyond::MemoryManager::MemoryManager()
{
}

Beyond::CMemoryManager::CMemoryManager()
{
}
Beyond::CMemoryManager::~CMemoryManager()
{
}

void* Beyond::CMemoryManager::Allocate(Beyond::ULLong uiSize, Beyond::ULLong uiAlignment, Beyond::Bool bIsArray)
{
	if (uiAlignment == 0)
	{
		return malloc(uiSize);
	}
	else
	{
		return _aligned_malloc(uiSize, uiAlignment);
	}
	return nullptr;
}

void Beyond::CMemoryManager::Deallocate(Beyond::Char* pAddr, Beyond::ULLong uiAlignment, Beyond::Bool bIsArray)
{
	if (uiAlignment == 0)
	{
		free(pAddr);
	}
	else
	{
		_aligned_free(pAddr);
	}
}
