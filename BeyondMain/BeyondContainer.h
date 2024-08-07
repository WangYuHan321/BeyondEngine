#pragma once
#include "Beyond.h"
#include "BeyondMemoryObject.h"
#include "BeyondMemoryManager.h"
namespace Beyond
{
	class BeyondAPI DefaultContainer
	{
	public:
		DefaultContainer()
		{

		}
		virtual ~DefaultContainer()
		{

		}
		virtual void* Allocate(ULLong uiSize, ULLong uiAlignment, bool bIsArray)
		{
			return MemoryObject::GetCMemoryMananger().Allocate(uiSize, uiAlignment, bIsArray);
		}
		virtual void Deallocate(char* pcAddr, ULLong uiAlignment, bool bIsArray)
		{
			return MemoryObject::GetCMemoryMananger().Deallocate(pcAddr, uiAlignment, bIsArray);
		}
	};


	template<class T, class MemoryManagerClass = DefaultContainer>
	class Container : public MemoryObject
	{
	protected:
		T* New(ULLong uiNum)
		{
			if (uiNum == 0)
				return nullptr;

			T* pPtr = (T*)m_MemManagerObject.Allocate(uiNum * sizeof(T), 0, true);
			if (!pPtr)
			{
				return nullptr;
			}

			return pPtr;
		}

		void Delete(T*& pPtr, UInt uiNum)
		{
			if (!pPtr)
			{
				return;
			}
			if (uiNum > 0)
			{
				if (ValueBase<T>::NeedsDestructor)
				{
					for (unsigned int i = 0; i < uiNum; i++)
					{
						(pPtr + i)->~T();
					}
				}
			}

			m_MemManagerObject.Deallocate((char*)pPtr, 0, true);
			pPtr = NULL;

		}

	public:
		MemoryManagerClass m_MemManagerObject;
	};
}


