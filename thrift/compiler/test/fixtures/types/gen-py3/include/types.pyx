#
# Autogenerated by Thrift
#
# DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
#  @generated
#
cimport cython as __cython
from cpython.bytes cimport PyBytes_AsStringAndSize
from cpython.object cimport PyTypeObject, Py_LT, Py_LE, Py_EQ, Py_NE, Py_GT, Py_GE
from libcpp.memory cimport shared_ptr, make_shared, unique_ptr, make_unique
from libcpp.string cimport string
from libcpp cimport bool as cbool
from libcpp.iterator cimport inserter as cinserter
from libcpp.utility cimport move as cmove
from cpython cimport bool as pbool
from cython.operator cimport dereference as deref, preincrement as inc, address as ptr_address
import thrift.py3.types
cimport thrift.py3.types
cimport thrift.py3.exceptions
from thrift.py3.types cimport (
    translate_cpp_enum_to_python,
    SetMetaClass as __SetMetaClass,
    constant_shared_ptr,
    default_inst,
    NOTSET as __NOTSET,
    EnumData as __EnumData,
    EnumFlagsData as __EnumFlagsData,
    UnionTypeEnumData as __UnionTypeEnumData,
    createEnumDataForUnionType as __createEnumDataForUnionType,
)
cimport thrift.py3.std_libcpp as std_libcpp
cimport thrift.py3.serializer as serializer
import folly.iobuf as __iobuf
from folly.optional cimport cOptional

import sys
from collections.abc import Sequence, Set, Mapping, Iterable
import weakref as __weakref
import builtins as _builtins

cimport include.types_reflection as _types_reflection



@__cython.auto_pickle(False)
cdef class std_unordered_map__Map__i32_string(thrift.py3.types.Map):
    def __init__(self, items=None):
        if isinstance(items, std_unordered_map__Map__i32_string):
            self._cpp_obj = (<std_unordered_map__Map__i32_string> items)._cpp_obj
        else:
            self._cpp_obj = std_unordered_map__Map__i32_string._make_instance(items)

    @staticmethod
    cdef create(shared_ptr[std_unordered_map[cint32_t,string]] c_items):
        __fbthrift_inst = <std_unordered_map__Map__i32_string>std_unordered_map__Map__i32_string.__new__(std_unordered_map__Map__i32_string)
        __fbthrift_inst._cpp_obj = __fbthrift_move_shared(c_items)
        return __fbthrift_inst

    def __copy__(std_unordered_map__Map__i32_string self):
        cdef shared_ptr[std_unordered_map[cint32_t,string]] cpp_obj = make_shared[std_unordered_map[cint32_t,string]](
            deref(self._cpp_obj)
        )
        return std_unordered_map__Map__i32_string.create(__fbthrift_move_shared(cpp_obj))

    def __len__(self):
        return deref(self._cpp_obj).size()

    @staticmethod
    cdef shared_ptr[std_unordered_map[cint32_t,string]] _make_instance(object items) except *:
        cdef shared_ptr[std_unordered_map[cint32_t,string]] c_inst = make_shared[std_unordered_map[cint32_t,string]]()
        if items is not None:
            for key, item in items.items():
                if not isinstance(key, int):
                    raise TypeError(f"{key!r} is not of type int")
                key = <cint32_t> key
                if not isinstance(item, str):
                    raise TypeError(f"{item!r} is not of type str")

                deref(c_inst)[key] = item.encode('UTF-8')
        return c_inst

    def __getitem__(self, key):
        err = KeyError(f'{key}')
        if not self or key is None:
            raise err
        if not isinstance(key, int):
            raise err from None
        cdef std_unordered_map[cint32_t,string].iterator iter = deref(
            self._cpp_obj).find(key)
        if iter == deref(self._cpp_obj).end():
            raise err
        cdef string citem = deref(iter).second
        return bytes(citem).decode('UTF-8')

    def __iter__(self):
        if not self:
            return
        cdef cint32_t citem
        cdef std_unordered_map[cint32_t,string].iterator loc = deref(self._cpp_obj).begin()
        while loc != deref(self._cpp_obj).end():
            citem = deref(loc).first
            yield citem
            inc(loc)

    def __contains__(self, key):
        if not self or key is None:
            return False
        if not isinstance(key, int):
            return False
        cdef cint32_t ckey = key
        return deref(self._cpp_obj).count(ckey) > 0

    def get(self, key, default=None):
        if not self or key is None:
            return default
        if not isinstance(key, int):
            return default
        if key not in self:
            return default
        return self[key]

    def values(self):
        if not self:
            return
        cdef string citem
        cdef std_unordered_map[cint32_t,string].iterator loc = deref(self._cpp_obj).begin()
        while loc != deref(self._cpp_obj).end():
            citem = deref(loc).second
            yield bytes(citem).decode('UTF-8')
            inc(loc)

    def items(self):
        if not self:
            return
        cdef cint32_t ckey
        cdef string citem
        cdef std_unordered_map[cint32_t,string].iterator loc = deref(self._cpp_obj).begin()
        while loc != deref(self._cpp_obj).end():
            ckey = deref(loc).first
            citem = deref(loc).second
            yield (ckey, bytes(citem).decode('UTF-8'))
            inc(loc)

    @staticmethod
    def __get_reflection__():
        return _types_reflection.get_reflection__std_unordered_map__Map__i32_string()


Mapping.register(std_unordered_map__Map__i32_string)

@__cython.auto_pickle(False)
cdef class List__std_unordered_map__Map__i32_string(thrift.py3.types.List):
    def __init__(self, items=None):
        if isinstance(items, List__std_unordered_map__Map__i32_string):
            self._cpp_obj = (<List__std_unordered_map__Map__i32_string> items)._cpp_obj
        else:
            self._cpp_obj = List__std_unordered_map__Map__i32_string._make_instance(items)

    @staticmethod
    cdef create(shared_ptr[vector[std_unordered_map[cint32_t,string]]] c_items):
        __fbthrift_inst = <List__std_unordered_map__Map__i32_string>List__std_unordered_map__Map__i32_string.__new__(List__std_unordered_map__Map__i32_string)
        __fbthrift_inst._cpp_obj = __fbthrift_move_shared(c_items)
        return __fbthrift_inst

    def __copy__(List__std_unordered_map__Map__i32_string self):
        cdef shared_ptr[vector[std_unordered_map[cint32_t,string]]] cpp_obj = make_shared[vector[std_unordered_map[cint32_t,string]]](
            deref(self._cpp_obj)
        )
        return List__std_unordered_map__Map__i32_string.create(__fbthrift_move_shared(cpp_obj))

    def __len__(self):
        return deref(self._cpp_obj).size()

    @staticmethod
    cdef shared_ptr[vector[std_unordered_map[cint32_t,string]]] _make_instance(object items) except *:
        cdef shared_ptr[vector[std_unordered_map[cint32_t,string]]] c_inst = make_shared[vector[std_unordered_map[cint32_t,string]]]()
        if items is not None:
            for item in items:
                if item is None:
                    raise TypeError("None is not of the type _typing.Mapping[int, str]")
                if not isinstance(item, std_unordered_map__Map__i32_string):
                    item = std_unordered_map__Map__i32_string(item)
                deref(c_inst).push_back(deref((<std_unordered_map__Map__i32_string>item)._cpp_obj))
        return c_inst

    def __getitem__(self, object index_obj):
        cdef shared_ptr[vector[std_unordered_map[cint32_t,string]]] c_inst
        cdef shared_ptr[std_unordered_map[cint32_t,string]] citem
        if isinstance(index_obj, slice):
            c_inst = make_shared[vector[std_unordered_map[cint32_t,string]]]()
            sz = deref(self._cpp_obj).size()
            for index in range(*index_obj.indices(sz)):
                deref(c_inst).push_back(deref(self._cpp_obj)[index])
            return List__std_unordered_map__Map__i32_string.create(__fbthrift_move_shared(c_inst))
        else:
            index = <int?>index_obj
            size = len(self)
            # Convert a negative index
            if index < 0:
                index = size + index
            if index >= size or index < 0:
                raise IndexError('list index out of range')
            citem = reference_shared_ptr_List__std_unordered_map__Map__i32_string(self._cpp_obj, deref(self._cpp_obj)[index])
            return std_unordered_map__Map__i32_string.create(citem)

    def __contains__(self, item):
        if not self or item is None:
            return False
        try:
            if not isinstance(item, std_unordered_map__Map__i32_string):
                item = std_unordered_map__Map__i32_string(item)
        except Exception:
            return False
        if not isinstance(item, std_unordered_map__Map__i32_string):
            return False
        return std_libcpp.find[vector[std_unordered_map[cint32_t,string]].iterator, std_unordered_map[cint32_t,string]](deref(self._cpp_obj).begin(), deref(self._cpp_obj).end(), deref((<std_unordered_map__Map__i32_string>item)._cpp_obj)) != deref(self._cpp_obj).end()

    def __iter__(self):
        if not self:
            return
        cdef shared_ptr[std_unordered_map[cint32_t,string]] citem
        cdef vector[std_unordered_map[cint32_t,string]].iterator loc = deref(self._cpp_obj).begin()
        while loc != deref(self._cpp_obj).end():
            citem = reference_shared_ptr_List__std_unordered_map__Map__i32_string(self._cpp_obj, deref(loc))
            yield std_unordered_map__Map__i32_string.create(citem)
            inc(loc)

    def __reversed__(self):
        if not self:
            return
        cdef shared_ptr[std_unordered_map[cint32_t,string]] citem
        cdef vector[std_unordered_map[cint32_t,string]].reverse_iterator loc = deref(self._cpp_obj).rbegin()
        while loc != deref(self._cpp_obj).rend():
            citem = reference_shared_ptr_List__std_unordered_map__Map__i32_string(self._cpp_obj, deref(loc))
            yield std_unordered_map__Map__i32_string.create(citem)
            inc(loc)

    def index(self, item, start not None=__NOTSET, stop not None=__NOTSET):
        err = ValueError(f'{item} is not in list')
        if not self or item is None:
            raise err
        offset_begin = offset_end = 0
        if stop is not __NOTSET or start is not __NOTSET:
            # Like self[start:stop].index(item)
            size = len(self)
            stop = stop if stop is not __NOTSET else size
            start = start if start is not __NOTSET else 0
            # Convert stop to a negative position.
            if stop > 0:
                stop = min(stop - size, 0)
            if stop <= -size:
                raise err  # List would be empty
            offset_end = -stop
            # Convert start to always be positive
            if start < 0:
                start = max(size + start, 0)
            if start >= size:
                raise err  # past end of list
            offset_begin = start

        try:
            if not isinstance(item, std_unordered_map__Map__i32_string):
                item = std_unordered_map__Map__i32_string(item)
        except Exception:
            raise err from None
        if not isinstance(item, std_unordered_map__Map__i32_string):
            raise err
        cdef vector[std_unordered_map[cint32_t,string]].iterator end = std_libcpp.prev(deref(self._cpp_obj).end(), <cint64_t>offset_end)
        cdef vector[std_unordered_map[cint32_t,string]].iterator loc = std_libcpp.find[vector[std_unordered_map[cint32_t,string]].iterator, std_unordered_map[cint32_t,string]](
            std_libcpp.next(deref(self._cpp_obj).begin(), <cint64_t>offset_begin),
            end,
            deref((<std_unordered_map__Map__i32_string>item)._cpp_obj)        )
        if loc != end:
            return <cint64_t> std_libcpp.distance(deref(self._cpp_obj).begin(), loc)
        raise err

    def count(self, item):
        if not self or item is None:
            return 0
        try:
            if not isinstance(item, std_unordered_map__Map__i32_string):
                item = std_unordered_map__Map__i32_string(item)
        except Exception:
            return 0
        if not isinstance(item, std_unordered_map__Map__i32_string):
            return 0
        return <cint64_t> std_libcpp.count[vector[std_unordered_map[cint32_t,string]].iterator, std_unordered_map[cint32_t,string]](
            deref(self._cpp_obj).begin(), deref(self._cpp_obj).end(), deref((<std_unordered_map__Map__i32_string>item)._cpp_obj))

    @staticmethod
    def __get_reflection__():
        return _types_reflection.get_reflection__List__std_unordered_map__Map__i32_string()


Sequence.register(List__std_unordered_map__Map__i32_string)

SomeMap = std_unordered_map__Map__i32_string
SomeListOfTypeMap = List__std_unordered_map__Map__i32_string
