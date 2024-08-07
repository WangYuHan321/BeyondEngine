#include "BeyondMemoryObject.h"
Beyond::MemoryObject::MemoryObject()
{
	GetCMemoryMananger();
}

Beyond::MemoryObject::~MemoryObject()
{
}

Beyond::CMemoryManager& Beyond::MemoryObject::GetCMemoryMananger()
{
	static CMemoryManager memMgr;
	return memMgr;
}