#
# Autogenerated by Thrift
#
# DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
#  @generated
#
from libcpp.memory cimport shared_ptr, make_shared, unique_ptr, make_unique
from libcpp.string cimport string
from libcpp cimport bool as cbool
from cpython cimport bool as pbool
from libc.stdint cimport int8_t, int16_t, int32_t, int64_t
from libcpp.vector cimport vector as vector
from libcpp.set cimport set as cset
from libcpp.map cimport map as cmap
from cython.operator cimport dereference as deref, typeid
from cpython.ref cimport PyObject
from thrift.py3.client cimport cRequestChannel_ptr, makeClientWrapper
from thrift.py3.exceptions cimport try_make_shared_exception, raise_py_exception
from folly cimport cFollyTry, cFollyUnit, c_unit
from libcpp.typeinfo cimport type_info
import thrift.py3.types
cimport thrift.py3.types
import thrift.py3.client
cimport thrift.py3.client
from folly.futures cimport bridgeFutureWith
from folly.executor cimport get_executor
cimport cython

import asyncio
import sys

cimport module.types as _module_types
import module.types as _module_types

from module.clients_wrapper cimport cMyServiceAsyncClient, cMyServiceClientWrapper
from module.clients_wrapper cimport cMyServiceFastAsyncClient, cMyServiceFastClientWrapper
from module.clients_wrapper cimport cMyServiceEmptyAsyncClient, cMyServiceEmptyClientWrapper
from module.clients_wrapper cimport cMyServicePrioParentAsyncClient, cMyServicePrioParentClientWrapper
from module.clients_wrapper cimport cMyServicePrioChildAsyncClient, cMyServicePrioChildClientWrapper


cdef void MyService_ping_callback(
    cFollyTry[cFollyUnit]&& result,
    PyObject* future
):
    cdef object pyfuture = <object> future
    if result.hasException():
        try:
            raise_py_exception(result.exception())
        except Exception as ex:
            pyfuture.set_exception(ex)
    else:
        try:
            pyfuture.set_result(None)
        except Exception as ex:
            pyfuture.set_exception(ex)

cdef void MyService_getRandomData_callback(
    cFollyTry[string]&& result,
    PyObject* future
):
    cdef object pyfuture = <object> future
    if result.hasException():
        try:
            raise_py_exception(result.exception())
        except Exception as ex:
            pyfuture.set_exception(ex)
    else:
        try:
            pyfuture.set_result(result.value().decode('UTF-8'))
        except Exception as ex:
            pyfuture.set_exception(ex)

cdef void MyService_hasDataById_callback(
    cFollyTry[cbool]&& result,
    PyObject* future
):
    cdef object pyfuture = <object> future
    if result.hasException():
        try:
            raise_py_exception(result.exception())
        except Exception as ex:
            pyfuture.set_exception(ex)
    else:
        try:
            pyfuture.set_result(<bint>result.value())
        except Exception as ex:
            pyfuture.set_exception(ex)

cdef void MyService_getDataById_callback(
    cFollyTry[string]&& result,
    PyObject* future
):
    cdef object pyfuture = <object> future
    if result.hasException():
        try:
            raise_py_exception(result.exception())
        except Exception as ex:
            pyfuture.set_exception(ex)
    else:
        try:
            pyfuture.set_result(result.value().decode('UTF-8'))
        except Exception as ex:
            pyfuture.set_exception(ex)

cdef void MyService_putDataById_callback(
    cFollyTry[cFollyUnit]&& result,
    PyObject* future
):
    cdef object pyfuture = <object> future
    if result.hasException():
        try:
            raise_py_exception(result.exception())
        except Exception as ex:
            pyfuture.set_exception(ex)
    else:
        try:
            pyfuture.set_result(None)
        except Exception as ex:
            pyfuture.set_exception(ex)

cdef void MyService_lobDataById_callback(
    cFollyTry[cFollyUnit]&& result,
    PyObject* future
):
    cdef object pyfuture = <object> future
    if result.hasException():
        try:
            raise_py_exception(result.exception())
        except Exception as ex:
            pyfuture.set_exception(ex)
    else:
        try:
            pyfuture.set_result(None)
        except Exception as ex:
            pyfuture.set_exception(ex)

cdef void MyServiceFast_ping_callback(
    cFollyTry[cFollyUnit]&& result,
    PyObject* future
):
    cdef object pyfuture = <object> future
    if result.hasException():
        try:
            raise_py_exception(result.exception())
        except Exception as ex:
            pyfuture.set_exception(ex)
    else:
        try:
            pyfuture.set_result(None)
        except Exception as ex:
            pyfuture.set_exception(ex)

cdef void MyServiceFast_getRandomData_callback(
    cFollyTry[string]&& result,
    PyObject* future
):
    cdef object pyfuture = <object> future
    if result.hasException():
        try:
            raise_py_exception(result.exception())
        except Exception as ex:
            pyfuture.set_exception(ex)
    else:
        try:
            pyfuture.set_result(result.value().decode('UTF-8'))
        except Exception as ex:
            pyfuture.set_exception(ex)

cdef void MyServiceFast_hasDataById_callback(
    cFollyTry[cbool]&& result,
    PyObject* future
):
    cdef object pyfuture = <object> future
    if result.hasException():
        try:
            raise_py_exception(result.exception())
        except Exception as ex:
            pyfuture.set_exception(ex)
    else:
        try:
            pyfuture.set_result(<bint>result.value())
        except Exception as ex:
            pyfuture.set_exception(ex)

cdef void MyServiceFast_getDataById_callback(
    cFollyTry[string]&& result,
    PyObject* future
):
    cdef object pyfuture = <object> future
    if result.hasException():
        try:
            raise_py_exception(result.exception())
        except Exception as ex:
            pyfuture.set_exception(ex)
    else:
        try:
            pyfuture.set_result(result.value().decode('UTF-8'))
        except Exception as ex:
            pyfuture.set_exception(ex)

cdef void MyServiceFast_putDataById_callback(
    cFollyTry[cFollyUnit]&& result,
    PyObject* future
):
    cdef object pyfuture = <object> future
    if result.hasException():
        try:
            raise_py_exception(result.exception())
        except Exception as ex:
            pyfuture.set_exception(ex)
    else:
        try:
            pyfuture.set_result(None)
        except Exception as ex:
            pyfuture.set_exception(ex)

cdef void MyServiceFast_lobDataById_callback(
    cFollyTry[cFollyUnit]&& result,
    PyObject* future
):
    cdef object pyfuture = <object> future
    if result.hasException():
        try:
            raise_py_exception(result.exception())
        except Exception as ex:
            pyfuture.set_exception(ex)
    else:
        try:
            pyfuture.set_result(None)
        except Exception as ex:
            pyfuture.set_exception(ex)

cdef void MyServicePrioParent_ping_callback(
    cFollyTry[cFollyUnit]&& result,
    PyObject* future
):
    cdef object pyfuture = <object> future
    if result.hasException():
        try:
            raise_py_exception(result.exception())
        except Exception as ex:
            pyfuture.set_exception(ex)
    else:
        try:
            pyfuture.set_result(None)
        except Exception as ex:
            pyfuture.set_exception(ex)

cdef void MyServicePrioParent_pong_callback(
    cFollyTry[cFollyUnit]&& result,
    PyObject* future
):
    cdef object pyfuture = <object> future
    if result.hasException():
        try:
            raise_py_exception(result.exception())
        except Exception as ex:
            pyfuture.set_exception(ex)
    else:
        try:
            pyfuture.set_result(None)
        except Exception as ex:
            pyfuture.set_exception(ex)

cdef void MyServicePrioChild_pang_callback(
    cFollyTry[cFollyUnit]&& result,
    PyObject* future
):
    cdef object pyfuture = <object> future
    if result.hasException():
        try:
            raise_py_exception(result.exception())
        except Exception as ex:
            pyfuture.set_exception(ex)
    else:
        try:
            pyfuture.set_result(None)
        except Exception as ex:
            pyfuture.set_exception(ex)


cdef class MyService(thrift.py3.client.Client):

    def __cinit__(MyService self):
        loop = asyncio.get_event_loop()
        self._deferred_headers = {}
        self._connect_future = loop.create_future()
        self._executor = get_executor()

    cdef const type_info* _typeid(MyService self):
        return &typeid(cMyServiceAsyncClient)

    @staticmethod
    cdef _module_MyService_set_client(MyService inst, shared_ptr[cMyServiceClientWrapper] c_obj):
        """So the class hierarchy talks to the correct pointer type"""
        inst._module_MyService_client = c_obj

    cdef _module_MyService_reset_client(MyService self):
        """So the class hierarchy resets the shared pointer up the chain"""
        self._module_MyService_client.reset()

    def __dealloc__(MyService self):
        if self._cRequestChannel or self._module_MyService_client:
            print('client was not cleaned up, use the context manager', file=sys.stderr)

    async def __aenter__(MyService self):
        await self._connect_future
        if self._cRequestChannel:
            MyService._module_MyService_set_client(
                self,
                makeClientWrapper[cMyServiceAsyncClient, cMyServiceClientWrapper](
                    self._cRequestChannel
                ),
            )
            self._cRequestChannel.reset()
        else:
            raise asyncio.InvalidStateError('Client context has been used already')
        for key, value in self._deferred_headers.items():
            self.set_persistent_header(key, value)
        self._deferred_headers = None
        return self

    async def __aexit__(MyService self, *exc):
        self._check_connect_future()
        loop = asyncio.get_event_loop()
        future = loop.create_future()
        bridgeFutureWith[cFollyUnit](
            self._executor,
            deref(self._module_MyService_client).disconnect(),
            closed_MyService_py3_client_callback,
            <PyObject *>future
        )
        # To break any future usage of this client
        badfuture = loop.create_future()
        badfuture.set_exception(asyncio.InvalidStateError('Client Out of Context'))
        badfuture.exception()
        self._connect_future = badfuture
        await future
        self._module_MyService_reset_client()

    def set_persistent_header(MyService self, str key, str value):
        if not self._module_MyService_client:
            self._deferred_headers[key] = value
            return

        cdef string ckey = <bytes> key.encode('utf-8')
        cdef string cvalue = <bytes> value.encode('utf-8')
        deref(self._module_MyService_client).setPersistentHeader(ckey, cvalue)

    @cython.always_allow_keywords(True)
    async def ping(
            MyService self):
        self._check_connect_future()
        __loop = asyncio.get_event_loop()
        __future = __loop.create_future()
        bridgeFutureWith[cFollyUnit](
            self._executor,
            deref(self._module_MyService_client).ping(
            ),
            MyService_ping_callback,
            <PyObject *> __future
        )
        return await __future

    @cython.always_allow_keywords(True)
    async def getRandomData(
            MyService self):
        self._check_connect_future()
        __loop = asyncio.get_event_loop()
        __future = __loop.create_future()
        bridgeFutureWith[string](
            self._executor,
            deref(self._module_MyService_client).getRandomData(
            ),
            MyService_getRandomData_callback,
            <PyObject *> __future
        )
        return await __future

    @cython.always_allow_keywords(True)
    async def hasDataById(
            MyService self,
            int64_t id):
        self._check_connect_future()
        __loop = asyncio.get_event_loop()
        __future = __loop.create_future()
        bridgeFutureWith[cbool](
            self._executor,
            deref(self._module_MyService_client).hasDataById(
                id,
            ),
            MyService_hasDataById_callback,
            <PyObject *> __future
        )
        return await __future

    @cython.always_allow_keywords(True)
    async def getDataById(
            MyService self,
            int64_t id):
        self._check_connect_future()
        __loop = asyncio.get_event_loop()
        __future = __loop.create_future()
        bridgeFutureWith[string](
            self._executor,
            deref(self._module_MyService_client).getDataById(
                id,
            ),
            MyService_getDataById_callback,
            <PyObject *> __future
        )
        return await __future

    @cython.always_allow_keywords(True)
    async def putDataById(
            MyService self,
            int64_t id,
            str data not None):
        self._check_connect_future()
        __loop = asyncio.get_event_loop()
        __future = __loop.create_future()
        bridgeFutureWith[cFollyUnit](
            self._executor,
            deref(self._module_MyService_client).putDataById(
                id,
                data.encode('UTF-8'),
            ),
            MyService_putDataById_callback,
            <PyObject *> __future
        )
        return await __future

    @cython.always_allow_keywords(True)
    async def lobDataById(
            MyService self,
            int64_t id,
            str data not None):
        self._check_connect_future()
        __loop = asyncio.get_event_loop()
        __future = __loop.create_future()
        bridgeFutureWith[cFollyUnit](
            self._executor,
            deref(self._module_MyService_client).lobDataById(
                id,
                data.encode('UTF-8'),
            ),
            MyService_lobDataById_callback,
            <PyObject *> __future
        )
        return await __future



cdef void closed_MyService_py3_client_callback(
    cFollyTry[cFollyUnit]&& result,
    PyObject* fut,
):
    cdef object pyfuture = <object> fut
    pyfuture.set_result(None)
cdef class MyServiceFast(thrift.py3.client.Client):

    def __cinit__(MyServiceFast self):
        loop = asyncio.get_event_loop()
        self._deferred_headers = {}
        self._connect_future = loop.create_future()
        self._executor = get_executor()

    cdef const type_info* _typeid(MyServiceFast self):
        return &typeid(cMyServiceFastAsyncClient)

    @staticmethod
    cdef _module_MyServiceFast_set_client(MyServiceFast inst, shared_ptr[cMyServiceFastClientWrapper] c_obj):
        """So the class hierarchy talks to the correct pointer type"""
        inst._module_MyServiceFast_client = c_obj

    cdef _module_MyServiceFast_reset_client(MyServiceFast self):
        """So the class hierarchy resets the shared pointer up the chain"""
        self._module_MyServiceFast_client.reset()

    def __dealloc__(MyServiceFast self):
        if self._cRequestChannel or self._module_MyServiceFast_client:
            print('client was not cleaned up, use the context manager', file=sys.stderr)

    async def __aenter__(MyServiceFast self):
        await self._connect_future
        if self._cRequestChannel:
            MyServiceFast._module_MyServiceFast_set_client(
                self,
                makeClientWrapper[cMyServiceFastAsyncClient, cMyServiceFastClientWrapper](
                    self._cRequestChannel
                ),
            )
            self._cRequestChannel.reset()
        else:
            raise asyncio.InvalidStateError('Client context has been used already')
        for key, value in self._deferred_headers.items():
            self.set_persistent_header(key, value)
        self._deferred_headers = None
        return self

    async def __aexit__(MyServiceFast self, *exc):
        self._check_connect_future()
        loop = asyncio.get_event_loop()
        future = loop.create_future()
        bridgeFutureWith[cFollyUnit](
            self._executor,
            deref(self._module_MyServiceFast_client).disconnect(),
            closed_MyServiceFast_py3_client_callback,
            <PyObject *>future
        )
        # To break any future usage of this client
        badfuture = loop.create_future()
        badfuture.set_exception(asyncio.InvalidStateError('Client Out of Context'))
        badfuture.exception()
        self._connect_future = badfuture
        await future
        self._module_MyServiceFast_reset_client()

    def set_persistent_header(MyServiceFast self, str key, str value):
        if not self._module_MyServiceFast_client:
            self._deferred_headers[key] = value
            return

        cdef string ckey = <bytes> key.encode('utf-8')
        cdef string cvalue = <bytes> value.encode('utf-8')
        deref(self._module_MyServiceFast_client).setPersistentHeader(ckey, cvalue)

    @cython.always_allow_keywords(True)
    async def ping(
            MyServiceFast self):
        self._check_connect_future()
        __loop = asyncio.get_event_loop()
        __future = __loop.create_future()
        bridgeFutureWith[cFollyUnit](
            self._executor,
            deref(self._module_MyServiceFast_client).ping(
            ),
            MyServiceFast_ping_callback,
            <PyObject *> __future
        )
        return await __future

    @cython.always_allow_keywords(True)
    async def getRandomData(
            MyServiceFast self):
        self._check_connect_future()
        __loop = asyncio.get_event_loop()
        __future = __loop.create_future()
        bridgeFutureWith[string](
            self._executor,
            deref(self._module_MyServiceFast_client).getRandomData(
            ),
            MyServiceFast_getRandomData_callback,
            <PyObject *> __future
        )
        return await __future

    @cython.always_allow_keywords(True)
    async def hasDataById(
            MyServiceFast self,
            int64_t id):
        self._check_connect_future()
        __loop = asyncio.get_event_loop()
        __future = __loop.create_future()
        bridgeFutureWith[cbool](
            self._executor,
            deref(self._module_MyServiceFast_client).hasDataById(
                id,
            ),
            MyServiceFast_hasDataById_callback,
            <PyObject *> __future
        )
        return await __future

    @cython.always_allow_keywords(True)
    async def getDataById(
            MyServiceFast self,
            int64_t id):
        self._check_connect_future()
        __loop = asyncio.get_event_loop()
        __future = __loop.create_future()
        bridgeFutureWith[string](
            self._executor,
            deref(self._module_MyServiceFast_client).getDataById(
                id,
            ),
            MyServiceFast_getDataById_callback,
            <PyObject *> __future
        )
        return await __future

    @cython.always_allow_keywords(True)
    async def putDataById(
            MyServiceFast self,
            int64_t id,
            str data not None):
        self._check_connect_future()
        __loop = asyncio.get_event_loop()
        __future = __loop.create_future()
        bridgeFutureWith[cFollyUnit](
            self._executor,
            deref(self._module_MyServiceFast_client).putDataById(
                id,
                data.encode('UTF-8'),
            ),
            MyServiceFast_putDataById_callback,
            <PyObject *> __future
        )
        return await __future

    @cython.always_allow_keywords(True)
    async def lobDataById(
            MyServiceFast self,
            int64_t id,
            str data not None):
        self._check_connect_future()
        __loop = asyncio.get_event_loop()
        __future = __loop.create_future()
        bridgeFutureWith[cFollyUnit](
            self._executor,
            deref(self._module_MyServiceFast_client).lobDataById(
                id,
                data.encode('UTF-8'),
            ),
            MyServiceFast_lobDataById_callback,
            <PyObject *> __future
        )
        return await __future



cdef void closed_MyServiceFast_py3_client_callback(
    cFollyTry[cFollyUnit]&& result,
    PyObject* fut,
):
    cdef object pyfuture = <object> fut
    pyfuture.set_result(None)
cdef class MyServiceEmpty(thrift.py3.client.Client):

    def __cinit__(MyServiceEmpty self):
        loop = asyncio.get_event_loop()
        self._deferred_headers = {}
        self._connect_future = loop.create_future()
        self._executor = get_executor()

    cdef const type_info* _typeid(MyServiceEmpty self):
        return &typeid(cMyServiceEmptyAsyncClient)

    @staticmethod
    cdef _module_MyServiceEmpty_set_client(MyServiceEmpty inst, shared_ptr[cMyServiceEmptyClientWrapper] c_obj):
        """So the class hierarchy talks to the correct pointer type"""
        inst._module_MyServiceEmpty_client = c_obj

    cdef _module_MyServiceEmpty_reset_client(MyServiceEmpty self):
        """So the class hierarchy resets the shared pointer up the chain"""
        self._module_MyServiceEmpty_client.reset()

    def __dealloc__(MyServiceEmpty self):
        if self._cRequestChannel or self._module_MyServiceEmpty_client:
            print('client was not cleaned up, use the context manager', file=sys.stderr)

    async def __aenter__(MyServiceEmpty self):
        await self._connect_future
        if self._cRequestChannel:
            MyServiceEmpty._module_MyServiceEmpty_set_client(
                self,
                makeClientWrapper[cMyServiceEmptyAsyncClient, cMyServiceEmptyClientWrapper](
                    self._cRequestChannel
                ),
            )
            self._cRequestChannel.reset()
        else:
            raise asyncio.InvalidStateError('Client context has been used already')
        for key, value in self._deferred_headers.items():
            self.set_persistent_header(key, value)
        self._deferred_headers = None
        return self

    async def __aexit__(MyServiceEmpty self, *exc):
        self._check_connect_future()
        loop = asyncio.get_event_loop()
        future = loop.create_future()
        bridgeFutureWith[cFollyUnit](
            self._executor,
            deref(self._module_MyServiceEmpty_client).disconnect(),
            closed_MyServiceEmpty_py3_client_callback,
            <PyObject *>future
        )
        # To break any future usage of this client
        badfuture = loop.create_future()
        badfuture.set_exception(asyncio.InvalidStateError('Client Out of Context'))
        badfuture.exception()
        self._connect_future = badfuture
        await future
        self._module_MyServiceEmpty_reset_client()

    def set_persistent_header(MyServiceEmpty self, str key, str value):
        if not self._module_MyServiceEmpty_client:
            self._deferred_headers[key] = value
            return

        cdef string ckey = <bytes> key.encode('utf-8')
        cdef string cvalue = <bytes> value.encode('utf-8')
        deref(self._module_MyServiceEmpty_client).setPersistentHeader(ckey, cvalue)



cdef void closed_MyServiceEmpty_py3_client_callback(
    cFollyTry[cFollyUnit]&& result,
    PyObject* fut,
):
    cdef object pyfuture = <object> fut
    pyfuture.set_result(None)
cdef class MyServicePrioParent(thrift.py3.client.Client):

    def __cinit__(MyServicePrioParent self):
        loop = asyncio.get_event_loop()
        self._deferred_headers = {}
        self._connect_future = loop.create_future()
        self._executor = get_executor()

    cdef const type_info* _typeid(MyServicePrioParent self):
        return &typeid(cMyServicePrioParentAsyncClient)

    @staticmethod
    cdef _module_MyServicePrioParent_set_client(MyServicePrioParent inst, shared_ptr[cMyServicePrioParentClientWrapper] c_obj):
        """So the class hierarchy talks to the correct pointer type"""
        inst._module_MyServicePrioParent_client = c_obj

    cdef _module_MyServicePrioParent_reset_client(MyServicePrioParent self):
        """So the class hierarchy resets the shared pointer up the chain"""
        self._module_MyServicePrioParent_client.reset()

    def __dealloc__(MyServicePrioParent self):
        if self._cRequestChannel or self._module_MyServicePrioParent_client:
            print('client was not cleaned up, use the context manager', file=sys.stderr)

    async def __aenter__(MyServicePrioParent self):
        await self._connect_future
        if self._cRequestChannel:
            MyServicePrioParent._module_MyServicePrioParent_set_client(
                self,
                makeClientWrapper[cMyServicePrioParentAsyncClient, cMyServicePrioParentClientWrapper](
                    self._cRequestChannel
                ),
            )
            self._cRequestChannel.reset()
        else:
            raise asyncio.InvalidStateError('Client context has been used already')
        for key, value in self._deferred_headers.items():
            self.set_persistent_header(key, value)
        self._deferred_headers = None
        return self

    async def __aexit__(MyServicePrioParent self, *exc):
        self._check_connect_future()
        loop = asyncio.get_event_loop()
        future = loop.create_future()
        bridgeFutureWith[cFollyUnit](
            self._executor,
            deref(self._module_MyServicePrioParent_client).disconnect(),
            closed_MyServicePrioParent_py3_client_callback,
            <PyObject *>future
        )
        # To break any future usage of this client
        badfuture = loop.create_future()
        badfuture.set_exception(asyncio.InvalidStateError('Client Out of Context'))
        badfuture.exception()
        self._connect_future = badfuture
        await future
        self._module_MyServicePrioParent_reset_client()

    def set_persistent_header(MyServicePrioParent self, str key, str value):
        if not self._module_MyServicePrioParent_client:
            self._deferred_headers[key] = value
            return

        cdef string ckey = <bytes> key.encode('utf-8')
        cdef string cvalue = <bytes> value.encode('utf-8')
        deref(self._module_MyServicePrioParent_client).setPersistentHeader(ckey, cvalue)

    @cython.always_allow_keywords(True)
    async def ping(
            MyServicePrioParent self):
        self._check_connect_future()
        __loop = asyncio.get_event_loop()
        __future = __loop.create_future()
        bridgeFutureWith[cFollyUnit](
            self._executor,
            deref(self._module_MyServicePrioParent_client).ping(
            ),
            MyServicePrioParent_ping_callback,
            <PyObject *> __future
        )
        return await __future

    @cython.always_allow_keywords(True)
    async def pong(
            MyServicePrioParent self):
        self._check_connect_future()
        __loop = asyncio.get_event_loop()
        __future = __loop.create_future()
        bridgeFutureWith[cFollyUnit](
            self._executor,
            deref(self._module_MyServicePrioParent_client).pong(
            ),
            MyServicePrioParent_pong_callback,
            <PyObject *> __future
        )
        return await __future



cdef void closed_MyServicePrioParent_py3_client_callback(
    cFollyTry[cFollyUnit]&& result,
    PyObject* fut,
):
    cdef object pyfuture = <object> fut
    pyfuture.set_result(None)
cdef class MyServicePrioChild(MyServicePrioParent):

    def __cinit__(MyServicePrioChild self):
        loop = asyncio.get_event_loop()
        self._deferred_headers = {}
        self._connect_future = loop.create_future()
        self._executor = get_executor()

    cdef const type_info* _typeid(MyServicePrioChild self):
        return &typeid(cMyServicePrioChildAsyncClient)

    @staticmethod
    cdef _module_MyServicePrioChild_set_client(MyServicePrioChild inst, shared_ptr[cMyServicePrioChildClientWrapper] c_obj):
        """So the class hierarchy talks to the correct pointer type"""
        inst._module_MyServicePrioChild_client = c_obj
        MyServicePrioParent._module_MyServicePrioParent_set_client(inst, <shared_ptr[cMyServicePrioParentClientWrapper]>c_obj)

    cdef _module_MyServicePrioChild_reset_client(MyServicePrioChild self):
        """So the class hierarchy resets the shared pointer up the chain"""
        self._module_MyServicePrioChild_client.reset()
        MyServicePrioParent._module_MyServicePrioParent_reset_client(self)

    def __dealloc__(MyServicePrioChild self):
        if self._cRequestChannel or self._module_MyServicePrioChild_client:
            print('client was not cleaned up, use the context manager', file=sys.stderr)

    async def __aenter__(MyServicePrioChild self):
        await self._connect_future
        if self._cRequestChannel:
            MyServicePrioChild._module_MyServicePrioChild_set_client(
                self,
                makeClientWrapper[cMyServicePrioChildAsyncClient, cMyServicePrioChildClientWrapper](
                    self._cRequestChannel
                ),
            )
            self._cRequestChannel.reset()
        else:
            raise asyncio.InvalidStateError('Client context has been used already')
        for key, value in self._deferred_headers.items():
            self.set_persistent_header(key, value)
        self._deferred_headers = None
        return self

    async def __aexit__(MyServicePrioChild self, *exc):
        self._check_connect_future()
        loop = asyncio.get_event_loop()
        future = loop.create_future()
        bridgeFutureWith[cFollyUnit](
            self._executor,
            deref(self._module_MyServicePrioChild_client).disconnect(),
            closed_MyServicePrioChild_py3_client_callback,
            <PyObject *>future
        )
        # To break any future usage of this client
        badfuture = loop.create_future()
        badfuture.set_exception(asyncio.InvalidStateError('Client Out of Context'))
        badfuture.exception()
        self._connect_future = badfuture
        await future
        self._module_MyServicePrioChild_reset_client()

    def set_persistent_header(MyServicePrioChild self, str key, str value):
        if not self._module_MyServicePrioChild_client:
            self._deferred_headers[key] = value
            return

        cdef string ckey = <bytes> key.encode('utf-8')
        cdef string cvalue = <bytes> value.encode('utf-8')
        deref(self._module_MyServicePrioChild_client).setPersistentHeader(ckey, cvalue)

    @cython.always_allow_keywords(True)
    async def pang(
            MyServicePrioChild self):
        self._check_connect_future()
        __loop = asyncio.get_event_loop()
        __future = __loop.create_future()
        bridgeFutureWith[cFollyUnit](
            self._executor,
            deref(self._module_MyServicePrioChild_client).pang(
            ),
            MyServicePrioChild_pang_callback,
            <PyObject *> __future
        )
        return await __future



cdef void closed_MyServicePrioChild_py3_client_callback(
    cFollyTry[cFollyUnit]&& result,
    PyObject* fut,
):
    cdef object pyfuture = <object> fut
    pyfuture.set_result(None)
