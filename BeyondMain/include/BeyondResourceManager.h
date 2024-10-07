#pragma once
#include "Beyond.h"
#include "BeyondMemoryAllocator.h"
#include "BeyondMap.h"

namespace Beyond
{
	class ResourceManager : ResourceAlloc
	{
	public:
		ResourceManager();
		~ResourceManager();

		virtual ResourceAlloc* CreateResource() = 0;
		virtual void Destory() = 0;

	private:
		std::map<std::string, ResourceAlloc*> m_resourceMap;
	};
}


