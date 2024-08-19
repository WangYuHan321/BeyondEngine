#include "BeyondDefaultContainerMem.h"

Beyond::DefaultContainerMemory::DefaultContainerMemory()
{
}

Beyond::DefaultContainerMemory::~DefaultContainerMemory()
{
}

void* Beyond::DefaultContainerMemory::Allocate(Beyond::ULLong uiSize, Beyond::ULLong uiAlignment, bool bIsArray)
{
	return Beyond::MemoryObject::GetCMemoryMananger().Allocate(uiSize, uiAlignment, bIsArray);
}
void Beyond::DefaultContainerMemory::Deallocate(char* pAddrs, Beyond::ULLong uiAlignment, bool bIsArray)
{
	Beyond::MemoryObject::GetCMemoryMananger().Deallocate(pAddrs, uiAlignment, bIsArray);
}