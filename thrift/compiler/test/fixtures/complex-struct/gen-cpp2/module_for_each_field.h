/**
 * Autogenerated by Thrift for src/module.thrift
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 *  @generated
 */
#pragma once

#include "thrift/compiler/test/fixtures/complex-struct/gen-cpp2/module_metadata.h"
#include <thrift/lib/cpp2/visitation/for_each.h>

namespace apache {
namespace thrift {
namespace detail {

template <>
struct ForEachField<::cpp2::MyStructFloatFieldThrowExp> {
  template <typename F, typename... T>
  void operator()(FOLLY_MAYBE_UNUSED F&& f, FOLLY_MAYBE_UNUSED T&&... t) const {
    FOLLY_MAYBE_UNUSED constexpr auto get_metadata =
        get_field_metadata<::cpp2::MyStructFloatFieldThrowExp>;

    f(get_metadata(0), static_cast<T&&>(t).myLongField_ref()...);
    f(get_metadata(1), static_cast<T&&>(t).MyByteField_ref()...);
    f(get_metadata(2), static_cast<T&&>(t).myStringField_ref()...);
    f(get_metadata(3), static_cast<T&&>(t).myFloatField_ref()...);
  }
};

template <>
struct ForEachField<::cpp2::MyStructMapFloatThrowExp> {
  template <typename F, typename... T>
  void operator()(FOLLY_MAYBE_UNUSED F&& f, FOLLY_MAYBE_UNUSED T&&... t) const {
    FOLLY_MAYBE_UNUSED constexpr auto get_metadata =
        get_field_metadata<::cpp2::MyStructMapFloatThrowExp>;

    f(get_metadata(0), static_cast<T&&>(t).myLongField_ref()...);
    f(get_metadata(1), static_cast<T&&>(t).mapListOfFloats_ref()...);
  }
};

template <>
struct ForEachField<::cpp2::MyDataItem> {
  template <typename F, typename... T>
  void operator()(FOLLY_MAYBE_UNUSED F&& f, FOLLY_MAYBE_UNUSED T&&... t) const {
    FOLLY_MAYBE_UNUSED constexpr auto get_metadata =
        get_field_metadata<::cpp2::MyDataItem>;

  }
};

template <>
struct ForEachField<::cpp2::MyStruct> {
  template <typename F, typename... T>
  void operator()(FOLLY_MAYBE_UNUSED F&& f, FOLLY_MAYBE_UNUSED T&&... t) const {
    FOLLY_MAYBE_UNUSED constexpr auto get_metadata =
        get_field_metadata<::cpp2::MyStruct>;

    f(get_metadata(0), static_cast<T&&>(t).MyIntField_ref()...);
    f(get_metadata(1), static_cast<T&&>(t).MyStringField_ref()...);
    f(get_metadata(2), static_cast<T&&>(t).MyDataField_ref()...);
    f(get_metadata(3), static_cast<T&&>(t).myEnum_ref()...);
    f(get_metadata(4), static_cast<T&&>(t).MyBoolField_ref()...);
    f(get_metadata(5), static_cast<T&&>(t).MyByteField_ref()...);
    f(get_metadata(6), static_cast<T&&>(t).MyShortField_ref()...);
    f(get_metadata(7), static_cast<T&&>(t).MyLongField_ref()...);
    f(get_metadata(8), static_cast<T&&>(t).MyDoubleField_ref()...);
    f(get_metadata(9), static_cast<T&&>(t).lDouble_ref()...);
    f(get_metadata(10), static_cast<T&&>(t).lShort_ref()...);
    f(get_metadata(11), static_cast<T&&>(t).lInteger_ref()...);
    f(get_metadata(12), static_cast<T&&>(t).lLong_ref()...);
    f(get_metadata(13), static_cast<T&&>(t).lString_ref()...);
    f(get_metadata(14), static_cast<T&&>(t).lBool_ref()...);
    f(get_metadata(15), static_cast<T&&>(t).lByte_ref()...);
    f(get_metadata(16), static_cast<T&&>(t).mShortString_ref()...);
    f(get_metadata(17), static_cast<T&&>(t).mIntegerString_ref()...);
    f(get_metadata(18), static_cast<T&&>(t).mStringMyStruct_ref()...);
    f(get_metadata(19), static_cast<T&&>(t).mStringBool_ref()...);
    f(get_metadata(20), static_cast<T&&>(t).mIntegerInteger_ref()...);
    f(get_metadata(21), static_cast<T&&>(t).mIntegerBool_ref()...);
    f(get_metadata(22), static_cast<T&&>(t).sShort_ref()...);
    f(get_metadata(23), static_cast<T&&>(t).sMyStruct_ref()...);
    f(get_metadata(24), static_cast<T&&>(t).sLong_ref()...);
    f(get_metadata(25), static_cast<T&&>(t).sString_ref()...);
    f(get_metadata(26), static_cast<T&&>(t).sByte_ref()...);
    f(get_metadata(27), static_cast<T&&>(t).mListList_ref()...);
  }
};

template <>
struct ForEachField<::cpp2::SimpleStruct> {
  template <typename F, typename... T>
  void operator()(FOLLY_MAYBE_UNUSED F&& f, FOLLY_MAYBE_UNUSED T&&... t) const {
    FOLLY_MAYBE_UNUSED constexpr auto get_metadata =
        get_field_metadata<::cpp2::SimpleStruct>;

    f(get_metadata(0), static_cast<T&&>(t).age_ref()...);
    f(get_metadata(1), static_cast<T&&>(t).name_ref()...);
  }
};

template <>
struct ForEachField<::cpp2::ComplexNestedStruct> {
  template <typename F, typename... T>
  void operator()(FOLLY_MAYBE_UNUSED F&& f, FOLLY_MAYBE_UNUSED T&&... t) const {
    FOLLY_MAYBE_UNUSED constexpr auto get_metadata =
        get_field_metadata<::cpp2::ComplexNestedStruct>;

    f(get_metadata(0), static_cast<T&&>(t).setOfSetOfInt_ref()...);
    f(get_metadata(1), static_cast<T&&>(t).listofListOfListOfListOfEnum_ref()...);
    f(get_metadata(2), static_cast<T&&>(t).listOfListOfMyStruct_ref()...);
    f(get_metadata(3), static_cast<T&&>(t).setOfListOfListOfLong_ref()...);
    f(get_metadata(4), static_cast<T&&>(t).setOfSetOfsetOfLong_ref()...);
    f(get_metadata(5), static_cast<T&&>(t).mapStructListOfListOfLong_ref()...);
    f(get_metadata(6), static_cast<T&&>(t).mKeyStructValInt_ref()...);
    f(get_metadata(7), static_cast<T&&>(t).listOfMapKeyIntValInt_ref()...);
    f(get_metadata(8), static_cast<T&&>(t).listOfMapKeyStrValList_ref()...);
    f(get_metadata(9), static_cast<T&&>(t).mapKeySetValLong_ref()...);
    f(get_metadata(10), static_cast<T&&>(t).mapKeyListValLong_ref()...);
    f(get_metadata(11), static_cast<T&&>(t).mapKeyMapValMap_ref()...);
    f(get_metadata(12), static_cast<T&&>(t).mapKeySetValMap_ref()...);
    f(get_metadata(13), static_cast<T&&>(t).NestedMaps_ref()...);
    f(get_metadata(14), static_cast<T&&>(t).mapKeyIntValList_ref()...);
    f(get_metadata(15), static_cast<T&&>(t).mapKeyIntValSet_ref()...);
    f(get_metadata(16), static_cast<T&&>(t).mapKeySetValInt_ref()...);
    f(get_metadata(17), static_cast<T&&>(t).mapKeyListValSet_ref()...);
  }
};

template <>
struct ForEachField<::cpp2::MyUnion> {
  template <typename F, typename... T>
  void operator()(FOLLY_MAYBE_UNUSED F&& f, FOLLY_MAYBE_UNUSED T&&... t) const {
    FOLLY_MAYBE_UNUSED constexpr auto get_metadata =
        get_field_metadata<::cpp2::MyUnion>;

    f(get_metadata(0), static_cast<T&&>(t).myEnum_ref()...);
    f(get_metadata(1), static_cast<T&&>(t).myStruct_ref()...);
    f(get_metadata(2), static_cast<T&&>(t).myDataItem_ref()...);
    f(get_metadata(3), static_cast<T&&>(t).complexNestedStruct_ref()...);
    f(get_metadata(4), static_cast<T&&>(t).longValue_ref()...);
    f(get_metadata(5), static_cast<T&&>(t).intValue_ref()...);
  }
};

template <>
struct ForEachField<::cpp2::defaultStruct> {
  template <typename F, typename... T>
  void operator()(FOLLY_MAYBE_UNUSED F&& f, FOLLY_MAYBE_UNUSED T&&... t) const {
    FOLLY_MAYBE_UNUSED constexpr auto get_metadata =
        get_field_metadata<::cpp2::defaultStruct>;

    f(get_metadata(0), static_cast<T&&>(t).myLongDFset_ref()...);
    f(get_metadata(1), static_cast<T&&>(t).myLongDF_ref()...);
    f(get_metadata(2), static_cast<T&&>(t).portDFset_ref()...);
    f(get_metadata(3), static_cast<T&&>(t).portNum_ref()...);
    f(get_metadata(4), static_cast<T&&>(t).myBinaryDFset_ref()...);
    f(get_metadata(5), static_cast<T&&>(t).myBinary_ref()...);
    f(get_metadata(6), static_cast<T&&>(t).myByteDFSet_ref()...);
    f(get_metadata(7), static_cast<T&&>(t).myByte_ref()...);
    f(get_metadata(8), static_cast<T&&>(t).myDoubleDFset_ref()...);
    f(get_metadata(9), static_cast<T&&>(t).myDoubleDFZero_ref()...);
    f(get_metadata(10), static_cast<T&&>(t).myDouble_ref()...);
    f(get_metadata(11), static_cast<T&&>(t).field3_ref()...);
    f(get_metadata(12), static_cast<T&&>(t).myList_ref()...);
    f(get_metadata(13), static_cast<T&&>(t).mySet_ref()...);
    f(get_metadata(14), static_cast<T&&>(t).simpleStruct_ref()...);
    f(get_metadata(15), static_cast<T&&>(t).listStructDFset_ref()...);
    f(get_metadata(16), static_cast<T&&>(t).myUnion_ref()...);
    f(get_metadata(17), static_cast<T&&>(t).listUnionDFset_ref()...);
    f(get_metadata(18), static_cast<T&&>(t).mapNestlistStructDfSet_ref()...);
    f(get_metadata(19), static_cast<T&&>(t).mapJavaTypeDFset_ref()...);
    f(get_metadata(20), static_cast<T&&>(t).emptyMap_ref()...);
    f(get_metadata(21), static_cast<T&&>(t).enumMapDFset_ref()...);
  }
};

template <>
struct ForEachField<::cpp2::MyStructTypeDef> {
  template <typename F, typename... T>
  void operator()(FOLLY_MAYBE_UNUSED F&& f, FOLLY_MAYBE_UNUSED T&&... t) const {
    FOLLY_MAYBE_UNUSED constexpr auto get_metadata =
        get_field_metadata<::cpp2::MyStructTypeDef>;

    f(get_metadata(0), static_cast<T&&>(t).myLongField_ref()...);
    f(get_metadata(1), static_cast<T&&>(t).myLongTypeDef_ref()...);
    f(get_metadata(2), static_cast<T&&>(t).myStringField_ref()...);
    f(get_metadata(3), static_cast<T&&>(t).myStringTypedef_ref()...);
    f(get_metadata(4), static_cast<T&&>(t).myMapField_ref()...);
    f(get_metadata(5), static_cast<T&&>(t).myMapTypedef_ref()...);
    f(get_metadata(6), static_cast<T&&>(t).myListField_ref()...);
    f(get_metadata(7), static_cast<T&&>(t).myListTypedef_ref()...);
    f(get_metadata(8), static_cast<T&&>(t).myMapListOfTypeDef_ref()...);
  }
};

template <>
struct ForEachField<::cpp2::MyUnionFloatFieldThrowExp> {
  template <typename F, typename... T>
  void operator()(FOLLY_MAYBE_UNUSED F&& f, FOLLY_MAYBE_UNUSED T&&... t) const {
    FOLLY_MAYBE_UNUSED constexpr auto get_metadata =
        get_field_metadata<::cpp2::MyUnionFloatFieldThrowExp>;

    f(get_metadata(0), static_cast<T&&>(t).myEnum_ref()...);
    f(get_metadata(1), static_cast<T&&>(t).setFloat_ref()...);
    f(get_metadata(2), static_cast<T&&>(t).myDataItem_ref()...);
    f(get_metadata(3), static_cast<T&&>(t).complexNestedStruct_ref()...);
  }
};

template <>
struct ForEachField<::cpp2::TypeRemapped> {
  template <typename F, typename... T>
  void operator()(FOLLY_MAYBE_UNUSED F&& f, FOLLY_MAYBE_UNUSED T&&... t) const {
    FOLLY_MAYBE_UNUSED constexpr auto get_metadata =
        get_field_metadata<::cpp2::TypeRemapped>;

    f(get_metadata(0), static_cast<T&&>(t).lsMap_ref()...);
    f(get_metadata(1), static_cast<T&&>(t).ioMap_ref()...);
    f(get_metadata(2), static_cast<T&&>(t).BigInteger_ref()...);
    f(get_metadata(3), static_cast<T&&>(t).binaryTestBuffer_ref()...);
  }
};

template <>
struct ForEachField<::cpp2::emptyXcep> {
  template <typename F, typename... T>
  void operator()(FOLLY_MAYBE_UNUSED F&& f, FOLLY_MAYBE_UNUSED T&&... t) const {
    FOLLY_MAYBE_UNUSED constexpr auto get_metadata =
        get_field_metadata<::cpp2::emptyXcep>;

  }
};

template <>
struct ForEachField<::cpp2::reqXcep> {
  template <typename F, typename... T>
  void operator()(FOLLY_MAYBE_UNUSED F&& f, FOLLY_MAYBE_UNUSED T&&... t) const {
    FOLLY_MAYBE_UNUSED constexpr auto get_metadata =
        get_field_metadata<::cpp2::reqXcep>;

    f(get_metadata(0), static_cast<T&&>(t).message_ref()...);
    f(get_metadata(1), static_cast<T&&>(t).errorCode_ref()...);
  }
};

template <>
struct ForEachField<::cpp2::optXcep> {
  template <typename F, typename... T>
  void operator()(FOLLY_MAYBE_UNUSED F&& f, FOLLY_MAYBE_UNUSED T&&... t) const {
    FOLLY_MAYBE_UNUSED constexpr auto get_metadata =
        get_field_metadata<::cpp2::optXcep>;

    f(get_metadata(0), static_cast<T&&>(t).message_ref()...);
    f(get_metadata(1), static_cast<T&&>(t).errorCode_ref()...);
  }
};

template <>
struct ForEachField<::cpp2::complexException> {
  template <typename F, typename... T>
  void operator()(FOLLY_MAYBE_UNUSED F&& f, FOLLY_MAYBE_UNUSED T&&... t) const {
    FOLLY_MAYBE_UNUSED constexpr auto get_metadata =
        get_field_metadata<::cpp2::complexException>;

    f(get_metadata(0), static_cast<T&&>(t).message_ref()...);
    f(get_metadata(1), static_cast<T&&>(t).listStrings_ref()...);
    f(get_metadata(2), static_cast<T&&>(t).errorEnum_ref()...);
    f(get_metadata(3), static_cast<T&&>(t).unionError_ref()...);
    f(get_metadata(4), static_cast<T&&>(t).structError_ref()...);
    f(get_metadata(5), static_cast<T&&>(t).lsMap_ref()...);
  }
};
} // namespace detail
} // namespace thrift
} // namespace apache
