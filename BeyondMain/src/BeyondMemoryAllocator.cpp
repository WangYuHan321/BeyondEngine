#include "BeyondMemoryAllocator.h"
template<Beyond::Int Category>
Beyond::AllocatedObject<Category>::AllocatedObject()
{
	if (Category == MEMCATEGORY_GENERAL)
	{

	}
}

Beyond::AllocatedObject<>::~AllocatedObject()
{

}