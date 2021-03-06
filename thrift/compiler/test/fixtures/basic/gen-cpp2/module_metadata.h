/**
 * Autogenerated by Thrift for src/module.thrift
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 *  @generated
 */
#pragma once

#include <thrift/lib/cpp2/gen/module_metadata_h.h>
#include "thrift/compiler/test/fixtures/basic/gen-cpp2/module_types.h"

namespace cpp2 {
class MyServiceSvIf;
} // namespace cpp2
namespace cpp2 {
class DbMixedStackArgumentsSvIf;
} // namespace cpp2

namespace apache {
namespace thrift {
namespace detail {
namespace md {

template <>
class EnumMetadata<::cpp2::MyEnum> {
 public:
  static void gen(ThriftMetadata& metadata);
};
template <>
class StructMetadata<::cpp2::MyDataItem> {
 public:
  static const ::apache::thrift::metadata::ThriftStruct& gen(ThriftMetadata& metadata);
};
template <>
class StructMetadata<::cpp2::MyStruct> {
 public:
  static const ::apache::thrift::metadata::ThriftStruct& gen(ThriftMetadata& metadata);
};
template <>
class StructMetadata<::cpp2::MyUnion> {
 public:
  static const ::apache::thrift::metadata::ThriftStruct& gen(ThriftMetadata& metadata);
};
template <>
class ServiceMetadata<::cpp2::MyServiceSvIf> {
 public:
  static void gen(ThriftMetadata& metadata, ThriftServiceContext& context);
 private:
  static void gen_ping(ThriftMetadata& metadata, ThriftService& context);
  static void gen_getRandomData(ThriftMetadata& metadata, ThriftService& context);
  static void gen_hasDataById(ThriftMetadata& metadata, ThriftService& context);
  static void gen_getDataById(ThriftMetadata& metadata, ThriftService& context);
  static void gen_putDataById(ThriftMetadata& metadata, ThriftService& context);
  static void gen_lobDataById(ThriftMetadata& metadata, ThriftService& context);
};
template <>
class ServiceMetadata<::cpp2::DbMixedStackArgumentsSvIf> {
 public:
  static void gen(ThriftMetadata& metadata, ThriftServiceContext& context);
 private:
  static void gen_getDataByKey0(ThriftMetadata& metadata, ThriftService& context);
  static void gen_getDataByKey1(ThriftMetadata& metadata, ThriftService& context);
};
} // namespace md
} // namespace detail
} // namespace thrift
} // namespace apache
