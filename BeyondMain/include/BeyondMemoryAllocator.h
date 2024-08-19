#pragma once

#include "BeyondMemoryManager.h"


namespace Beyond
{
	enum MemoryCategory
	{
		MEMCATEGORY_GENERAL = 0,
		MEMCATEGROY_GEOMETRY = 1
	};
}

namespace Beyond
{
	
	template<Int Category = MEMCATEGORY_GENERAL> 
	class AllocatedObject : public CMemoryManager
	{
	public:
		AllocatedObject();
		~AllocatedObject();
	};

	//定义所有的基类的allocation
	typedef AllocatedObject<> GeneralAllocatedObject;
	typedef AllocatedObject<> RenderSysAllocatedObject;
	typedef AllocatedObject<> RenderSysAlloc;
	typedef AllocatedObject<> ResourceAlloc;

}

namespace Beyond 
{
#define BEYOND_NEW new
#define BEYOND_DELETE delete

#define BEYOND_MALLOC(bytes, category) (void*)new char[bytes]
#define BEYOND_ALLOC_T(T, count, category) (T*)new char[(count) * sizeof(T)]
#define BEYOND_FREE(ptr, category) delete[] (char*)(ptr)





}


