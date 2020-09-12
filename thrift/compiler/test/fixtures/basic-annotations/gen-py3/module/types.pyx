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

cimport module.types_reflection as _types_reflection


cdef __EnumData __MyEnum_enum_data  = __EnumData.create(thrift.py3.types.createEnumData[cMyEnum](), MyEnum)


@__cython.internal
@__cython.auto_pickle(False)
cdef class __MyEnumMeta(thrift.py3.types.EnumMeta):

    def __get_by_name(cls, str name):
        return __MyEnum_enum_data.get_by_name(name)

    def __get_by_value(cls, int value):
        return __MyEnum_enum_data.get_by_value(value)

    def __get_all_names(cls):
        return __MyEnum_enum_data.get_all_names()

    def __len__(cls):
        return __MyEnum_enum_data.size()


@__cython.final
@__cython.auto_pickle(False)
cdef class MyEnum(thrift.py3.types.CompiledEnum):
    cdef get_by_name(self, str name):
        return __MyEnum_enum_data.get_by_name(name)



__SetMetaClass(<PyTypeObject*> MyEnum, <PyTypeObject*> __MyEnumMeta)



@__cython.auto_pickle(False)
cdef class MyStructNestedAnnotation(thrift.py3.types.Struct):

    def __init__(
        MyStructNestedAnnotation self, *,
        str name=None
    ):
        self._cpp_obj = __fbthrift_move(MyStructNestedAnnotation._make_instance(
          NULL,
          NULL,
          name,
        ))

    def __call__(
        MyStructNestedAnnotation self,
        name=__NOTSET
    ):
        ___NOTSET = __NOTSET  # Cheaper for larger structs
        cdef bint[1] __isNOTSET  # so make_instance is typed

        __fbthrift_changed = False
        if name is ___NOTSET:
            __isNOTSET[0] = True
            name = None
        else:
            __isNOTSET[0] = False
            __fbthrift_changed = True


        if not __fbthrift_changed:
            return self

        if name is not None:
            if not isinstance(name, str):
                raise TypeError(f'name is not a { str !r}.')

        __fbthrift_inst = <MyStructNestedAnnotation>MyStructNestedAnnotation.__new__(MyStructNestedAnnotation)
        __fbthrift_inst._cpp_obj = __fbthrift_move(MyStructNestedAnnotation._make_instance(
          self._cpp_obj.get(),
          __isNOTSET,
          name,
        ))
        return __fbthrift_inst

    @staticmethod
    cdef unique_ptr[cMyStructNestedAnnotation] _make_instance(
        cMyStructNestedAnnotation* base_instance,
        bint* __isNOTSET,
        str name 
    ) except *:
        cdef unique_ptr[cMyStructNestedAnnotation] c_inst
        if base_instance:
            c_inst = make_unique[cMyStructNestedAnnotation](deref(base_instance))
        else:
            c_inst = make_unique[cMyStructNestedAnnotation]()

        if base_instance:
            # Convert None's to default value. (or unset)
            if not __isNOTSET[0] and name is None:
                deref(c_inst).name_ref().assign(default_inst[cMyStructNestedAnnotation]().name_ref().value())
                deref(c_inst).__isset.name = False
                pass

        if name is not None:
            deref(c_inst).name_ref().assign(thrift.py3.types.move(thrift.py3.types.bytes_to_string(name.encode('utf-8'))))
            deref(c_inst).__isset.name = True
        # in C++ you don't have to call move(), but this doesn't translate
        # into a C++ return statement, so you do here
        return __fbthrift_move_unique(c_inst)

    cdef object __fbthrift_isset(self):
        cpp_obj = deref(self._cpp_obj)
        return thrift.py3.types._IsSet("MyStructNestedAnnotation", {
          "name": cpp_obj.name_ref().has_value(),
        })

    def __iter__(self):
        yield 'name', self.name

    def __bool__(self):
        return True

    @staticmethod
    cdef create(shared_ptr[cMyStructNestedAnnotation] cpp_obj):
        __fbthrift_inst = <MyStructNestedAnnotation>MyStructNestedAnnotation.__new__(MyStructNestedAnnotation)
        __fbthrift_inst._cpp_obj = __fbthrift_move_shared(cpp_obj)
        return __fbthrift_inst

    @property
    def name(self):

        return (<bytes>deref(self._cpp_obj).name_ref().value()).decode('UTF-8')


    def __hash__(MyStructNestedAnnotation self):
        return  super().__hash__()

    def __copy__(MyStructNestedAnnotation self):
        cdef shared_ptr[cMyStructNestedAnnotation] cpp_obj = make_shared[cMyStructNestedAnnotation](
            deref(self._cpp_obj)
        )
        return MyStructNestedAnnotation.create(__fbthrift_move_shared(cpp_obj))

    def __richcmp__(self, other, op):
        cdef int cop = op
        if not (
                isinstance(self, MyStructNestedAnnotation) and
                isinstance(other, MyStructNestedAnnotation)):
            if cop == Py_EQ:  # different types are never equal
                return False
            elif cop == Py_NE:  # different types are always notequal
                return True
            else:
                return NotImplemented

        cdef cMyStructNestedAnnotation* cself = (<MyStructNestedAnnotation>self)._cpp_obj.get()
        cdef cMyStructNestedAnnotation* cother = (<MyStructNestedAnnotation>other)._cpp_obj.get()
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
        return _types_reflection.get_reflection__MyStructNestedAnnotation()

    cdef __iobuf.IOBuf _serialize(MyStructNestedAnnotation self, __Protocol proto):
        return __iobuf.from_unique_ptr(
            serializer.cserialize[cMyStructNestedAnnotation](self._cpp_obj.get(), proto).move()
        )

    cdef cuint32_t _deserialize(MyStructNestedAnnotation self, const __iobuf.cIOBuf* buf, __Protocol proto) except? 0:
        cdef cuint32_t needed
        self._cpp_obj = make_shared[cMyStructNestedAnnotation]()
        needed = serializer.cdeserialize[cMyStructNestedAnnotation](buf, self._cpp_obj.get(), proto)
        return needed


@__cython.auto_pickle(False)
cdef class MyStructAnnotation(thrift.py3.types.Struct):

    def __init__(
        MyStructAnnotation self, *,
        count=None,
        str name=None,
        str extra=None,
        MyStructNestedAnnotation nest=None
    ):
        if count is not None:
            if not isinstance(count, int):
                raise TypeError(f'count is not a { int !r}.')
            count = <cint64_t> count

        self._cpp_obj = __fbthrift_move(MyStructAnnotation._make_instance(
          NULL,
          NULL,
          count,
          name,
          extra,
          nest,
        ))

    def __call__(
        MyStructAnnotation self,
        count=__NOTSET,
        name=__NOTSET,
        extra=__NOTSET,
        nest=__NOTSET
    ):
        ___NOTSET = __NOTSET  # Cheaper for larger structs
        cdef bint[4] __isNOTSET  # so make_instance is typed

        __fbthrift_changed = False
        if count is ___NOTSET:
            __isNOTSET[0] = True
            count = None
        else:
            __isNOTSET[0] = False
            __fbthrift_changed = True

        if name is ___NOTSET:
            __isNOTSET[1] = True
            name = None
        else:
            __isNOTSET[1] = False
            __fbthrift_changed = True

        if extra is ___NOTSET:
            __isNOTSET[2] = True
            extra = None
        else:
            __isNOTSET[2] = False
            __fbthrift_changed = True

        if nest is ___NOTSET:
            __isNOTSET[3] = True
            nest = None
        else:
            __isNOTSET[3] = False
            __fbthrift_changed = True


        if not __fbthrift_changed:
            return self

        if count is not None:
            if not isinstance(count, int):
                raise TypeError(f'count is not a { int !r}.')
            count = <cint64_t> count

        if name is not None:
            if not isinstance(name, str):
                raise TypeError(f'name is not a { str !r}.')

        if extra is not None:
            if not isinstance(extra, str):
                raise TypeError(f'extra is not a { str !r}.')

        if nest is not None:
            if not isinstance(nest, MyStructNestedAnnotation):
                raise TypeError(f'nest is not a { MyStructNestedAnnotation !r}.')

        __fbthrift_inst = <MyStructAnnotation>MyStructAnnotation.__new__(MyStructAnnotation)
        __fbthrift_inst._cpp_obj = __fbthrift_move(MyStructAnnotation._make_instance(
          self._cpp_obj.get(),
          __isNOTSET,
          count,
          name,
          extra,
          nest,
        ))
        return __fbthrift_inst

    @staticmethod
    cdef unique_ptr[cMyStructAnnotation] _make_instance(
        cMyStructAnnotation* base_instance,
        bint* __isNOTSET,
        object count ,
        str name ,
        str extra ,
        MyStructNestedAnnotation nest 
    ) except *:
        cdef unique_ptr[cMyStructAnnotation] c_inst
        if base_instance:
            c_inst = make_unique[cMyStructAnnotation](deref(base_instance))
        else:
            c_inst = make_unique[cMyStructAnnotation]()

        if base_instance:
            # Convert None's to default value. (or unset)
            if not __isNOTSET[0] and count is None:
                deref(c_inst).count_ref().assign(default_inst[cMyStructAnnotation]().count_ref().value())
                deref(c_inst).__isset.count = False
                pass

            if not __isNOTSET[1] and name is None:
                deref(c_inst).name_ref().assign(default_inst[cMyStructAnnotation]().name_ref().value())
                deref(c_inst).__isset.name = False
                pass

            if not __isNOTSET[2] and extra is None:
                deref(c_inst).__isset.extra = False
                pass

            if not __isNOTSET[3] and nest is None:
                deref(c_inst).nest_ref().assign(default_inst[cMyStructAnnotation]().nest_ref().value())
                deref(c_inst).__isset.nest = False
                pass

        if count is not None:
            deref(c_inst).count_ref().assign(count)
            deref(c_inst).__isset.count = True
        if name is not None:
            deref(c_inst).name_ref().assign(thrift.py3.types.move(thrift.py3.types.bytes_to_string(name.encode('utf-8'))))
            deref(c_inst).__isset.name = True
        if extra is not None:
            deref(c_inst).extra_ref().assign(thrift.py3.types.move(thrift.py3.types.bytes_to_string(extra.encode('utf-8'))))
            deref(c_inst).__isset.extra = True
        if nest is not None:
            deref(c_inst).nest_ref().assign(deref((<MyStructNestedAnnotation?> nest)._cpp_obj))
            deref(c_inst).__isset.nest = True
        # in C++ you don't have to call move(), but this doesn't translate
        # into a C++ return statement, so you do here
        return __fbthrift_move_unique(c_inst)

    cdef object __fbthrift_isset(self):
        cpp_obj = deref(self._cpp_obj)
        return thrift.py3.types._IsSet("MyStructAnnotation", {
          "count": cpp_obj.count_ref().has_value(),
          "name": cpp_obj.name_ref().has_value(),
          "extra": cpp_obj.extra_ref().has_value(),
          "nest": cpp_obj.nest_ref().has_value(),
        })

    def __iter__(self):
        yield 'count', self.count
        yield 'name', self.name
        yield 'extra', self.extra
        yield 'nest', self.nest

    def __bool__(self):
        return True

    @staticmethod
    cdef create(shared_ptr[cMyStructAnnotation] cpp_obj):
        __fbthrift_inst = <MyStructAnnotation>MyStructAnnotation.__new__(MyStructAnnotation)
        __fbthrift_inst._cpp_obj = __fbthrift_move_shared(cpp_obj)
        return __fbthrift_inst

    @property
    def count(self):

        return deref(self._cpp_obj).count_ref().value()

    @property
    def name(self):

        return (<bytes>deref(self._cpp_obj).name_ref().value()).decode('UTF-8')

    @property
    def extra(self):
        if not deref(self._cpp_obj).__isset.extra:
            return None

        return (<bytes>deref(self._cpp_obj).extra_ref().value_unchecked()).decode('UTF-8')

    @property
    def nest(self):

        if self.__field_nest is None:
            self.__field_nest = MyStructNestedAnnotation.create(reference_shared_ptr_nest(self._cpp_obj, deref(self._cpp_obj).nest_ref().value()))
        return self.__field_nest


    def __hash__(MyStructAnnotation self):
        return  super().__hash__()

    def __copy__(MyStructAnnotation self):
        cdef shared_ptr[cMyStructAnnotation] cpp_obj = make_shared[cMyStructAnnotation](
            deref(self._cpp_obj)
        )
        return MyStructAnnotation.create(__fbthrift_move_shared(cpp_obj))

    def __richcmp__(self, other, op):
        cdef int cop = op
        if not (
                isinstance(self, MyStructAnnotation) and
                isinstance(other, MyStructAnnotation)):
            if cop == Py_EQ:  # different types are never equal
                return False
            elif cop == Py_NE:  # different types are always notequal
                return True
            else:
                return NotImplemented

        cdef cMyStructAnnotation* cself = (<MyStructAnnotation>self)._cpp_obj.get()
        cdef cMyStructAnnotation* cother = (<MyStructAnnotation>other)._cpp_obj.get()
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
        return _types_reflection.get_reflection__MyStructAnnotation()

    cdef __iobuf.IOBuf _serialize(MyStructAnnotation self, __Protocol proto):
        return __iobuf.from_unique_ptr(
            serializer.cserialize[cMyStructAnnotation](self._cpp_obj.get(), proto).move()
        )

    cdef cuint32_t _deserialize(MyStructAnnotation self, const __iobuf.cIOBuf* buf, __Protocol proto) except? 0:
        cdef cuint32_t needed
        self._cpp_obj = make_shared[cMyStructAnnotation]()
        needed = serializer.cdeserialize[cMyStructAnnotation](buf, self._cpp_obj.get(), proto)
        return needed


@__cython.auto_pickle(False)
cdef class MyStruct(thrift.py3.types.Struct):

    def __init__(
        MyStruct self, *,
        major=None,
        str package=None,
        str annotation_with_quote=None,
        str class_=None,
        str annotation_with_trailing_comma=None,
        str empty_annotations=None
    ):
        if major is not None:
            if not isinstance(major, int):
                raise TypeError(f'major is not a { int !r}.')
            major = <cint64_t> major

        self._cpp_obj = __fbthrift_move(MyStruct._make_instance(
          NULL,
          NULL,
          major,
          package,
          annotation_with_quote,
          class_,
          annotation_with_trailing_comma,
          empty_annotations,
        ))

    def __call__(
        MyStruct self,
        major=__NOTSET,
        package=__NOTSET,
        annotation_with_quote=__NOTSET,
        class_=__NOTSET,
        annotation_with_trailing_comma=__NOTSET,
        empty_annotations=__NOTSET
    ):
        ___NOTSET = __NOTSET  # Cheaper for larger structs
        cdef bint[6] __isNOTSET  # so make_instance is typed

        __fbthrift_changed = False
        if major is ___NOTSET:
            __isNOTSET[0] = True
            major = None
        else:
            __isNOTSET[0] = False
            __fbthrift_changed = True

        if package is ___NOTSET:
            __isNOTSET[1] = True
            package = None
        else:
            __isNOTSET[1] = False
            __fbthrift_changed = True

        if annotation_with_quote is ___NOTSET:
            __isNOTSET[2] = True
            annotation_with_quote = None
        else:
            __isNOTSET[2] = False
            __fbthrift_changed = True

        if class_ is ___NOTSET:
            __isNOTSET[3] = True
            class_ = None
        else:
            __isNOTSET[3] = False
            __fbthrift_changed = True

        if annotation_with_trailing_comma is ___NOTSET:
            __isNOTSET[4] = True
            annotation_with_trailing_comma = None
        else:
            __isNOTSET[4] = False
            __fbthrift_changed = True

        if empty_annotations is ___NOTSET:
            __isNOTSET[5] = True
            empty_annotations = None
        else:
            __isNOTSET[5] = False
            __fbthrift_changed = True


        if not __fbthrift_changed:
            return self

        if major is not None:
            if not isinstance(major, int):
                raise TypeError(f'major is not a { int !r}.')
            major = <cint64_t> major

        if package is not None:
            if not isinstance(package, str):
                raise TypeError(f'package is not a { str !r}.')

        if annotation_with_quote is not None:
            if not isinstance(annotation_with_quote, str):
                raise TypeError(f'annotation_with_quote is not a { str !r}.')

        if class_ is not None:
            if not isinstance(class_, str):
                raise TypeError(f'class_ is not a { str !r}.')

        if annotation_with_trailing_comma is not None:
            if not isinstance(annotation_with_trailing_comma, str):
                raise TypeError(f'annotation_with_trailing_comma is not a { str !r}.')

        if empty_annotations is not None:
            if not isinstance(empty_annotations, str):
                raise TypeError(f'empty_annotations is not a { str !r}.')

        __fbthrift_inst = <MyStruct>MyStruct.__new__(MyStruct)
        __fbthrift_inst._cpp_obj = __fbthrift_move(MyStruct._make_instance(
          self._cpp_obj.get(),
          __isNOTSET,
          major,
          package,
          annotation_with_quote,
          class_,
          annotation_with_trailing_comma,
          empty_annotations,
        ))
        return __fbthrift_inst

    @staticmethod
    cdef unique_ptr[cMyStruct] _make_instance(
        cMyStruct* base_instance,
        bint* __isNOTSET,
        object major ,
        str package ,
        str annotation_with_quote ,
        str class_ ,
        str annotation_with_trailing_comma ,
        str empty_annotations 
    ) except *:
        cdef unique_ptr[cMyStruct] c_inst
        if base_instance:
            c_inst = make_unique[cMyStruct](deref(base_instance))
        else:
            c_inst = make_unique[cMyStruct]()

        if base_instance:
            # Convert None's to default value. (or unset)
            if not __isNOTSET[0] and major is None:
                deref(c_inst).major_ref().assign(default_inst[cMyStruct]().major_ref().value())
                deref(c_inst).__isset.major = False
                pass

            if not __isNOTSET[1] and package is None:
                deref(c_inst).package_ref().assign(default_inst[cMyStruct]().package_ref().value())
                deref(c_inst).__isset.package = False
                pass

            if not __isNOTSET[2] and annotation_with_quote is None:
                deref(c_inst).annotation_with_quote_ref().assign(default_inst[cMyStruct]().annotation_with_quote_ref().value())
                deref(c_inst).__isset.annotation_with_quote = False
                pass

            if not __isNOTSET[3] and class_ is None:
                deref(c_inst).class__ref().assign(default_inst[cMyStruct]().class__ref().value())
                deref(c_inst).__isset.class_ = False
                pass

            if not __isNOTSET[4] and annotation_with_trailing_comma is None:
                deref(c_inst).annotation_with_trailing_comma_ref().assign(default_inst[cMyStruct]().annotation_with_trailing_comma_ref().value())
                deref(c_inst).__isset.annotation_with_trailing_comma = False
                pass

            if not __isNOTSET[5] and empty_annotations is None:
                deref(c_inst).empty_annotations_ref().assign(default_inst[cMyStruct]().empty_annotations_ref().value())
                deref(c_inst).__isset.empty_annotations = False
                pass

        if major is not None:
            deref(c_inst).major_ref().assign(major)
            deref(c_inst).__isset.major = True
        if package is not None:
            deref(c_inst).package_ref().assign(thrift.py3.types.move(thrift.py3.types.bytes_to_string(package.encode('utf-8'))))
            deref(c_inst).__isset.package = True
        if annotation_with_quote is not None:
            deref(c_inst).annotation_with_quote_ref().assign(thrift.py3.types.move(thrift.py3.types.bytes_to_string(annotation_with_quote.encode('utf-8'))))
            deref(c_inst).__isset.annotation_with_quote = True
        if class_ is not None:
            deref(c_inst).class__ref().assign(thrift.py3.types.move(thrift.py3.types.bytes_to_string(class_.encode('utf-8'))))
            deref(c_inst).__isset.class_ = True
        if annotation_with_trailing_comma is not None:
            deref(c_inst).annotation_with_trailing_comma_ref().assign(thrift.py3.types.move(thrift.py3.types.bytes_to_string(annotation_with_trailing_comma.encode('utf-8'))))
            deref(c_inst).__isset.annotation_with_trailing_comma = True
        if empty_annotations is not None:
            deref(c_inst).empty_annotations_ref().assign(thrift.py3.types.move(thrift.py3.types.bytes_to_string(empty_annotations.encode('utf-8'))))
            deref(c_inst).__isset.empty_annotations = True
        # in C++ you don't have to call move(), but this doesn't translate
        # into a C++ return statement, so you do here
        return __fbthrift_move_unique(c_inst)

    cdef object __fbthrift_isset(self):
        cpp_obj = deref(self._cpp_obj)
        return thrift.py3.types._IsSet("MyStruct", {
          "major": cpp_obj.major_ref().has_value(),
          "package": cpp_obj.package_ref().has_value(),
          "annotation_with_quote": cpp_obj.annotation_with_quote_ref().has_value(),
          "class_": cpp_obj.class__ref().has_value(),
          "annotation_with_trailing_comma": cpp_obj.annotation_with_trailing_comma_ref().has_value(),
          "empty_annotations": cpp_obj.empty_annotations_ref().has_value(),
        })

    def __iter__(self):
        yield 'major', self.major
        yield 'package', self.package
        yield 'annotation_with_quote', self.annotation_with_quote
        yield 'class_', self.class_
        yield 'annotation_with_trailing_comma', self.annotation_with_trailing_comma
        yield 'empty_annotations', self.empty_annotations

    def __bool__(self):
        return True

    @staticmethod
    cdef create(shared_ptr[cMyStruct] cpp_obj):
        __fbthrift_inst = <MyStruct>MyStruct.__new__(MyStruct)
        __fbthrift_inst._cpp_obj = __fbthrift_move_shared(cpp_obj)
        return __fbthrift_inst

    @property
    def major(self):

        return deref(self._cpp_obj).major_ref().value()

    @property
    def package(self):

        return (<bytes>deref(self._cpp_obj).package_ref().value()).decode('UTF-8')

    @property
    def annotation_with_quote(self):

        return (<bytes>deref(self._cpp_obj).annotation_with_quote_ref().value()).decode('UTF-8')

    @property
    def class_(self):

        return (<bytes>deref(self._cpp_obj).class__ref().value()).decode('UTF-8')

    @property
    def annotation_with_trailing_comma(self):

        return (<bytes>deref(self._cpp_obj).annotation_with_trailing_comma_ref().value()).decode('UTF-8')

    @property
    def empty_annotations(self):

        return (<bytes>deref(self._cpp_obj).empty_annotations_ref().value()).decode('UTF-8')


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


@__cython.auto_pickle(False)
cdef class SecretStruct(thrift.py3.types.Struct):

    def __init__(
        SecretStruct self, *,
        id=None,
        str password=None
    ):
        if id is not None:
            if not isinstance(id, int):
                raise TypeError(f'id is not a { int !r}.')
            id = <cint64_t> id

        self._cpp_obj = __fbthrift_move(SecretStruct._make_instance(
          NULL,
          NULL,
          id,
          password,
        ))

    def __call__(
        SecretStruct self,
        id=__NOTSET,
        password=__NOTSET
    ):
        ___NOTSET = __NOTSET  # Cheaper for larger structs
        cdef bint[2] __isNOTSET  # so make_instance is typed

        __fbthrift_changed = False
        if id is ___NOTSET:
            __isNOTSET[0] = True
            id = None
        else:
            __isNOTSET[0] = False
            __fbthrift_changed = True

        if password is ___NOTSET:
            __isNOTSET[1] = True
            password = None
        else:
            __isNOTSET[1] = False
            __fbthrift_changed = True


        if not __fbthrift_changed:
            return self

        if id is not None:
            if not isinstance(id, int):
                raise TypeError(f'id is not a { int !r}.')
            id = <cint64_t> id

        if password is not None:
            if not isinstance(password, str):
                raise TypeError(f'password is not a { str !r}.')

        __fbthrift_inst = <SecretStruct>SecretStruct.__new__(SecretStruct)
        __fbthrift_inst._cpp_obj = __fbthrift_move(SecretStruct._make_instance(
          self._cpp_obj.get(),
          __isNOTSET,
          id,
          password,
        ))
        return __fbthrift_inst

    @staticmethod
    cdef unique_ptr[cSecretStruct] _make_instance(
        cSecretStruct* base_instance,
        bint* __isNOTSET,
        object id ,
        str password 
    ) except *:
        cdef unique_ptr[cSecretStruct] c_inst
        if base_instance:
            c_inst = make_unique[cSecretStruct](deref(base_instance))
        else:
            c_inst = make_unique[cSecretStruct]()

        if base_instance:
            # Convert None's to default value. (or unset)
            if not __isNOTSET[0] and id is None:
                deref(c_inst).id_ref().assign(default_inst[cSecretStruct]().id_ref().value())
                deref(c_inst).__isset.id = False
                pass

            if not __isNOTSET[1] and password is None:
                deref(c_inst).password_ref().assign(default_inst[cSecretStruct]().password_ref().value())
                deref(c_inst).__isset.password = False
                pass

        if id is not None:
            deref(c_inst).id_ref().assign(id)
            deref(c_inst).__isset.id = True
        if password is not None:
            deref(c_inst).password_ref().assign(thrift.py3.types.move(thrift.py3.types.bytes_to_string(password.encode('utf-8'))))
            deref(c_inst).__isset.password = True
        # in C++ you don't have to call move(), but this doesn't translate
        # into a C++ return statement, so you do here
        return __fbthrift_move_unique(c_inst)

    cdef object __fbthrift_isset(self):
        cpp_obj = deref(self._cpp_obj)
        return thrift.py3.types._IsSet("SecretStruct", {
          "id": cpp_obj.id_ref().has_value(),
          "password": cpp_obj.password_ref().has_value(),
        })

    def __iter__(self):
        yield 'id', self.id
        yield 'password', self.password

    def __bool__(self):
        return True

    @staticmethod
    cdef create(shared_ptr[cSecretStruct] cpp_obj):
        __fbthrift_inst = <SecretStruct>SecretStruct.__new__(SecretStruct)
        __fbthrift_inst._cpp_obj = __fbthrift_move_shared(cpp_obj)
        return __fbthrift_inst

    @property
    def id(self):

        return deref(self._cpp_obj).id_ref().value()

    @property
    def password(self):

        return (<bytes>deref(self._cpp_obj).password_ref().value()).decode('UTF-8')


    def __hash__(SecretStruct self):
        return  super().__hash__()

    def __copy__(SecretStruct self):
        cdef shared_ptr[cSecretStruct] cpp_obj = make_shared[cSecretStruct](
            deref(self._cpp_obj)
        )
        return SecretStruct.create(__fbthrift_move_shared(cpp_obj))

    def __richcmp__(self, other, op):
        cdef int cop = op
        if not (
                isinstance(self, SecretStruct) and
                isinstance(other, SecretStruct)):
            if cop == Py_EQ:  # different types are never equal
                return False
            elif cop == Py_NE:  # different types are always notequal
                return True
            else:
                return NotImplemented

        cdef cSecretStruct* cself = (<SecretStruct>self)._cpp_obj.get()
        cdef cSecretStruct* cother = (<SecretStruct>other)._cpp_obj.get()
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
        return _types_reflection.get_reflection__SecretStruct()

    cdef __iobuf.IOBuf _serialize(SecretStruct self, __Protocol proto):
        return __iobuf.from_unique_ptr(
            serializer.cserialize[cSecretStruct](self._cpp_obj.get(), proto).move()
        )

    cdef cuint32_t _deserialize(SecretStruct self, const __iobuf.cIOBuf* buf, __Protocol proto) except? 0:
        cdef cuint32_t needed
        self._cpp_obj = make_shared[cSecretStruct]()
        needed = serializer.cdeserialize[cSecretStruct](buf, self._cpp_obj.get(), proto)
        return needed


