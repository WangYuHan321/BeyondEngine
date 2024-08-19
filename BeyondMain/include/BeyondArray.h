#pragma once
#include "BeyondDefaultContainerMem.h"
#include "BeyondContainer.h"

namespace Beyond
{
	template<class T, class MemoryManager = DefaultContainerMemory>
	class Array : public Container<T, MemoryManager>
	{
	public:
		Array();
		~Array();

		void Add(const T data);

	private:
		T* m_pBuffer;

	};
}



