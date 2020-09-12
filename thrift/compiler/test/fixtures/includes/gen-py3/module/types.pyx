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
cimport includes.types as _includes_types
import includes.types as _includes_types

cimport module.types_reflection as _types_reflection



@__cython.auto_pickle(False)
cdef class MyStruct(thrift.py3.types.Struct):

    def __init__(
        MyStruct self, *,
        _includes_types.Included MyIncludedField=None,
        _includes_types.Included MyOtherIncludedField=None,
        MyIncludedInt=None
    ):
        if MyIncludedInt is not None:
            if not isinstance(MyIncludedInt, int):
                raise TypeError(f'MyIncludedInt is not a { int !r}.')
            MyIncludedInt = <cint64_t> MyIncludedInt

        self._cpp_obj = __fbthrift_move(MyStruct._make_instance(
          NULL,
          NULL,
          MyIncludedField,
          MyOtherIncludedField,
          MyIncludedInt,
        ))

    def __call__(
        MyStruct self,
        MyIncludedField=__NOTSET,
        MyOtherIncludedField=__NOTSET,
        MyIncludedInt=__NOTSET
    ):
        ___NOTSET = __NOTSET  # Cheaper for larger structs
        cdef bint[3] __isNOTSET  # so make_instance is typed

        __fbthrift_changed = False
        if MyIncludedField is ___NOTSET:
            __isNOTSET[0] = True
            MyIncludedField = None
        else:
            __isNOTSET[0] = False
            __fbthrift_changed = True

        if MyOtherIncludedField is ___NOTSET:
            __isNOTSET[1] = True
            MyOtherIncludedField = None
        else:
            __isNOTSET[1] = False
            __fbthrift_changed = True

        if MyIncludedInt is ___NOTSET:
            __isNOTSET[2] = True
            MyIncludedInt = None
        else:
            __isNOTSET[2] = False
            __fbthrift_changed = True


        if not __fbthrift_changed:
            return self

        if MyIncludedField is not None:
            if not isinstance(MyIncludedField, _includes_types.Included):
                raise TypeError(f'MyIncludedField is not a { _includes_types.Included !r}.')

        if MyOtherIncludedField is not None:
            if not isinstance(MyOtherIncludedField, _includes_types.Included):
                raise TypeError(f'MyOtherIncludedField is not a { _includes_types.Included !r}.')

        if MyIncludedInt is not None:
            if not isinstance(MyIncludedInt, int):
                raise TypeError(f'MyIncludedInt is not a { int !r}.')
            MyIncludedInt = <cint64_t> MyIncludedInt

        __fbthrift_inst = <MyStruct>MyStruct.__new__(MyStruct)
        __fbthrift_inst._cpp_obj = __fbthrift_move(MyStruct._make_instance(
          self._cpp_obj.get(),
          __isNOTSET,
          MyIncludedField,
          MyOtherIncludedField,
          MyIncludedInt,
        ))
        return __fbthrift_inst

    @staticmethod
    cdef unique_ptr[cMyStruct] _make_instance(
        cMyStruct* base_instance,
        bint* __isNOTSET,
        _includes_types.Included MyIncludedField ,
        _includes_types.Included MyOtherIncludedField ,
        object MyIncludedInt 
    ) except *:
        cdef unique_ptr[cMyStruct] c_inst
        if base_instance:
            c_inst = make_unique[cMyStruct](deref(base_instance))
        else:
            c_inst = make_unique[cMyStruct]()

        if base_instance:
            # Convert None's to default value. (or unset)
            if not __isNOTSET[0] and MyIncludedField is None:
                deref(c_inst).MyIncludedField_ref().assign(default_inst[cMyStruct]().MyIncludedField_ref().value())
                deref(c_inst).__isset.MyIncludedField = False
                pass

            if not __isNOTSET[1] and MyOtherIncludedField is None:
                deref(c_inst).MyOtherIncludedField_ref().assign(default_inst[cMyStruct]().MyOtherIncludedField_ref().value())
                deref(c_inst).__isset.MyOtherIncludedField = False
                pass

            if not __isNOTSET[2] and MyIncludedInt is None:
                deref(c_inst).MyIncludedInt_ref().assign(default_inst[cMyStruct]().MyIncludedInt_ref().value())
                deref(c_inst).__isset.MyIncludedInt = False
                pass

        if MyIncludedField is not None:
            deref(c_inst).MyIncludedField_ref().assign(deref((<_includes_types.Included?> MyIncludedField)._cpp_obj))
            deref(c_inst).__isset.MyIncludedField = True
        if MyOtherIncludedField is not None:
            deref(c_inst).MyOtherIncludedField_ref().assign(deref((<_includes_types.Included?> MyOtherIncludedField)._cpp_obj))
            deref(c_inst).__isset.MyOtherIncludedField = True
        if MyIncludedInt is not None:
            deref(c_inst).MyIncludedInt_ref().assign(MyIncludedInt)
            deref(c_inst).__isset.MyIncludedInt = True
        # in C++ you don't have to call move(), but this doesn't translate
        # into a C++ return statement, so you do here
        return __fbthrift_move_unique(c_inst)

    cdef object __fbthrift_isset(self):
        cpp_obj = deref(self._cpp_obj)
        return thrift.py3.types._IsSet("MyStruct", {
          "MyIncludedField": cpp_obj.MyIncludedField_ref().has_value(),
          "MyOtherIncludedField": cpp_obj.MyOtherIncludedField_ref().has_value(),
          "MyIncludedInt": cpp_obj.MyIncludedInt_ref().has_value(),
        })

    def __iter__(self):
        yield 'MyIncludedField', self.MyIncludedField
        yield 'MyOtherIncludedField', self.MyOtherIncludedField
        yield 'MyIncludedInt', self.MyIncludedInt

    def __bool__(self):
        return True

    @staticmethod
    cdef create(shared_ptr[cMyStruct] cpp_obj):
        __fbthrift_inst = <MyStruct>MyStruct.__new__(MyStruct)
        __fbthrift_inst._cpp_obj = __fbthrift_move_shared(cpp_obj)
        return __fbthrift_inst

    @property
    def MyIncludedField(self):

        if self.__field_MyIncludedField is None:
            self.__field_MyIncludedField = _includes_types.Included.create(reference_shared_ptr_MyIncludedField(self._cpp_obj, deref(self._cpp_obj).MyIncludedField_ref().value()))
        return self.__field_MyIncludedField

    @property
    def MyOtherIncludedField(self):

        if self.__field_MyOtherIncludedField is None:
            self.__field_MyOtherIncludedField = _includes_types.Included.create(reference_shared_ptr_MyOtherIncludedField(self._cpp_obj, deref(self._cpp_obj).MyOtherIncludedField_ref().value()))
        return self.__field_MyOtherIncludedField

    @property
    def MyIncludedInt(self):

        return deref(self._cpp_obj).MyIncludedInt_ref().value()


    def __hash__(MyStruct self):
        return  super().__hash__()

    def __copy__(MyStruct self):
        cdef shared_ptr[cMyStruct] cpp_obj = make_shared[cMyStruct](
            deref(self._cpp_obj)
        )
        return MyStruct.create(__fbthrift_move_shared(cpp_obj))

    def __richcmp__(self, other, op):
        cdef int cop = op
        if not (
                isinstance(self, MyStruct) and
                isinstance(other, MyStruct)):
            if cop == Py_EQ:  # different types are never equal
                return False
            elif cop == Py_NE:  # different types are always notequal
                return True
            else:
                return NotImplemented

        cdef cMyStruct* cself = (<MyStruct>self)._cpp_obj.get()
        cdef cMyStruct* cother = (<MyStruct>other)._cpp_obj.get()
        if cop == Py_EQ:
            return deref(cself) == deref(cother)
        elif cop == Py_NE:
            return deref(cself) != deref(cother)
        elif cop == Py_LT:
            return deref(cself) < deref(cother)
        elif cop == Py_LE:
            return deref(cself) <= deref(cother)
        elif cop == Py_GT:
            return deref(cself) > deref(cother)
        elif cop == Py_GE:
            return deref(cself) >= deref(cother)
        else:
            return NotImplemented

    @staticmethod
    def __get_reflection__():
        return _types_reflection.get_reflection__MyStruct()

    cdef __iobuf.IOBuf _serialize(MyStruct self, __Protocol proto):
        return __iobuf.from_unique_ptr(
            serializer.cserialize[cMyStruct](self._cpp_obj.get(), proto).move()
        )

    cdef cuint32_t _deserialize(MyStruct self, const __iobuf.cIOBuf* buf, __Protocol proto) except? 0:
        cdef cuint32_t needed
        self._cpp_obj = make_shared[cMyStruct]()
        needed = serializer.cdeserialize[cMyStruct](buf, self._cpp_obj.get(), proto)
        return needed


