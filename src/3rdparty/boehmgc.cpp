#include "boehmgc.hpp"

void *operator new(size_t n) {
    return GC_malloc(n);
}

void *operator new[](size_t n) {
    return GC_malloc(n);
}

void operator delete(void *) noexcept {}

void operator delete(void *, size_t) noexcept {}

void operator delete[](void *) noexcept {}

void operator delete[](void *, size_t) noexcept {}
