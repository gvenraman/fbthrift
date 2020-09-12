#
# Autogenerated by Thrift
#
# DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
#  @generated
#

import folly.iobuf as __iobuf
import thrift.py3.types
import thrift.py3.exceptions
from thrift.py3.types import __NotSet, NOTSET
import typing as _typing
from typing_extensions import Final

import sys
import itertools


__property__ = property


class EmptyEnum(thrift.py3.types.Enum):
    pass


class City(thrift.py3.types.Enum):
    NYC: City = ...
    MPK: City = ...
    SEA: City = ...
    LON: City = ...


class Company(thrift.py3.types.Enum):
    FACEBOOK: Company = ...
    WHATSAPP: Company = ...
    OCULUS: Company = ...
    INSTAGRAM: Company = ...


class Internship(thrift.py3.types.Struct, _typing.Hashable, _typing.Iterable[_typing.Tuple[str, _typing.Any]]):
    class __fbthrift_IsSet:
        title: bool
        employer: bool
        pass

    weeks: Final[int] = ...

    title: Final[str] = ...

    employer: Final[_typing.Optional[Company]] = ...

    def __init__(
        self, *,
        weeks: _typing.Optional[int]=None,
        title: _typing.Optional[str]=None,
        employer: _typing.Optional[Company]=None
    ) -> None: ...

    def __call__(
        self, *,
        weeks: _typing.Union[int, __NotSet, None]=NOTSET,
        title: _typing.Union[str, __NotSet, None]=NOTSET,
        employer: _typing.Union[Company, __NotSet, None]=NOTSET
    ) -> Internship: ...

    def __reduce__(self) -> _typing.Tuple[_typing.Callable, _typing.Tuple[_typing.Type['Internship'], bytes]]: ...
    def __iter__(self) -> _typing.Iterator[_typing.Tuple[str, _typing.Any]]: ...
    def __hash__(self) -> int: ...
    def __lt__(self, other: 'Internship') -> bool: ...
    def __gt__(self, other: 'Internship') -> bool: ...
    def __le__(self, other: 'Internship') -> bool: ...
    def __ge__(self, other: 'Internship') -> bool: ...


class Range(thrift.py3.types.Struct, _typing.Hashable, _typing.Iterable[_typing.Tuple[str, _typing.Any]]):
    class __fbthrift_IsSet:
        pass

    min: Final[int] = ...

    max: Final[int] = ...

    def __init__(
        self, *,
        min: _typing.Optional[int]=None,
        max: _typing.Optional[int]=None
    ) -> None: ...

    def __call__(
        self, *,
        min: _typing.Union[int, __NotSet, None]=NOTSET,
        max: _typing.Union[int, __NotSet, None]=NOTSET
    ) -> Range: ...

    def __reduce__(self) -> _typing.Tuple[_typing.Callable, _typing.Tuple[_typing.Type['Range'], bytes]]: ...
    def __iter__(self) -> _typing.Iterator[_typing.Tuple[str, _typing.Any]]: ...
    def __hash__(self) -> int: ...
    def __lt__(self, other: 'Range') -> bool: ...
    def __gt__(self, other: 'Range') -> bool: ...
    def __le__(self, other: 'Range') -> bool: ...
    def __ge__(self, other: 'Range') -> bool: ...


class struct1(thrift.py3.types.Struct, _typing.Hashable, _typing.Iterable[_typing.Tuple[str, _typing.Any]]):
    class __fbthrift_IsSet:
        a: bool
        b: bool
        pass

    a: Final[int] = ...

    b: Final[str] = ...

    def __init__(
        self, *,
        a: _typing.Optional[int]=None,
        b: _typing.Optional[str]=None
    ) -> None: ...

    def __call__(
        self, *,
        a: _typing.Union[int, __NotSet, None]=NOTSET,
        b: _typing.Union[str, __NotSet, None]=NOTSET
    ) -> struct1: ...

    def __reduce__(self) -> _typing.Tuple[_typing.Callable, _typing.Tuple[_typing.Type['struct1'], bytes]]: ...
    def __iter__(self) -> _typing.Iterator[_typing.Tuple[str, _typing.Any]]: ...
    def __hash__(self) -> int: ...
    def __lt__(self, other: 'struct1') -> bool: ...
    def __gt__(self, other: 'struct1') -> bool: ...
    def __le__(self, other: 'struct1') -> bool: ...
    def __ge__(self, other: 'struct1') -> bool: ...


class struct2(thrift.py3.types.Struct, _typing.Hashable, _typing.Iterable[_typing.Tuple[str, _typing.Any]]):
    class __fbthrift_IsSet:
        a: bool
        b: bool
        c: bool
        d: bool
        pass

    a: Final[int] = ...

    b: Final[str] = ...

    c: Final['struct1'] = ...

    d: Final[_typing.Sequence[int]] = ...

    def __init__(
        self, *,
        a: _typing.Optional[int]=None,
        b: _typing.Optional[str]=None,
        c: _typing.Optional['struct1']=None,
        d: _typing.Optional[_typing.Sequence[int]]=None
    ) -> None: ...

    def __call__(
        self, *,
        a: _typing.Union[int, __NotSet, None]=NOTSET,
        b: _typing.Union[str, __NotSet, None]=NOTSET,
        c: _typing.Union['struct1', __NotSet, None]=NOTSET,
        d: _typing.Union[_typing.Sequence[int], __NotSet, None]=NOTSET
    ) -> struct2: ...

    def __reduce__(self) -> _typing.Tuple[_typing.Callable, _typing.Tuple[_typing.Type['struct2'], bytes]]: ...
    def __iter__(self) -> _typing.Iterator[_typing.Tuple[str, _typing.Any]]: ...
    def __hash__(self) -> int: ...
    def __lt__(self, other: 'struct2') -> bool: ...
    def __gt__(self, other: 'struct2') -> bool: ...
    def __le__(self, other: 'struct2') -> bool: ...
    def __ge__(self, other: 'struct2') -> bool: ...


class struct3(thrift.py3.types.Struct, _typing.Hashable, _typing.Iterable[_typing.Tuple[str, _typing.Any]]):
    class __fbthrift_IsSet:
        a: bool
        b: bool
        c: bool
        pass

    a: Final[str] = ...

    b: Final[int] = ...

    c: Final['struct2'] = ...

    def __init__(
        self, *,
        a: _typing.Optional[str]=None,
        b: _typing.Optional[int]=None,
        c: _typing.Optional['struct2']=None
    ) -> None: ...

    def __call__(
        self, *,
        a: _typing.Union[str, __NotSet, None]=NOTSET,
        b: _typing.Union[int, __NotSet, None]=NOTSET,
        c: _typing.Union['struct2', __NotSet, None]=NOTSET
    ) -> struct3: ...

    def __reduce__(self) -> _typing.Tuple[_typing.Callable, _typing.Tuple[_typing.Type['struct3'], bytes]]: ...
    def __iter__(self) -> _typing.Iterator[_typing.Tuple[str, _typing.Any]]: ...
    def __hash__(self) -> int: ...
    def __lt__(self, other: 'struct3') -> bool: ...
    def __gt__(self, other: 'struct3') -> bool: ...
    def __le__(self, other: 'struct3') -> bool: ...
    def __ge__(self, other: 'struct3') -> bool: ...


class struct4(thrift.py3.types.Struct, _typing.Hashable, _typing.Iterable[_typing.Tuple[str, _typing.Any]]):
    class __fbthrift_IsSet:
        a: bool
        b: bool
        c: bool
        pass

    a: Final[int] = ...

    b: Final[_typing.Optional[float]] = ...

    c: Final[_typing.Optional[int]] = ...

    def __init__(
        self, *,
        a: _typing.Optional[int]=None,
        b: _typing.Optional[float]=None,
        c: _typing.Optional[int]=None
    ) -> None: ...

    def __call__(
        self, *,
        a: _typing.Union[int, __NotSet, None]=NOTSET,
        b: _typing.Union[float, __NotSet, None]=NOTSET,
        c: _typing.Union[int, __NotSet, None]=NOTSET
    ) -> struct4: ...

    def __reduce__(self) -> _typing.Tuple[_typing.Callable, _typing.Tuple[_typing.Type['struct4'], bytes]]: ...
    def __iter__(self) -> _typing.Iterator[_typing.Tuple[str, _typing.Any]]: ...
    def __hash__(self) -> int: ...
    def __lt__(self, other: 'struct4') -> bool: ...
    def __gt__(self, other: 'struct4') -> bool: ...
    def __le__(self, other: 'struct4') -> bool: ...
    def __ge__(self, other: 'struct4') -> bool: ...


class union1(thrift.py3.types.Union, _typing.Hashable):
    class __fbthrift_IsSet:
        i: bool
        d: bool
        pass

    i: Final[int] = ...

    d: Final[float] = ...

    def __init__(
        self, *,
        i: _typing.Optional[int]=None,
        d: _typing.Optional[float]=None
    ) -> None: ...

    def __hash__(self) -> int: ...
    def __lt__(self, other: 'union1') -> bool: ...
    def __gt__(self, other: 'union1') -> bool: ...
    def __le__(self, other: 'union1') -> bool: ...
    def __ge__(self, other: 'union1') -> bool: ...

    class Type(thrift.py3.types.Enum):
        EMPTY: union1.Type = ...
        i: union1.Type = ...
        d: union1.Type = ...

    @staticmethod
    def fromValue(value: _typing.Union[None, int, float]) -> union1: ...
    @__property__
    def value(self) -> _typing.Union[None, int, float]: ...
    @__property__
    def type(self) -> "union1.Type": ...


class union2(thrift.py3.types.Union, _typing.Hashable):
    class __fbthrift_IsSet:
        i: bool
        d: bool
        s: bool
        u: bool
        pass

    i: Final[int] = ...

    d: Final[float] = ...

    s: Final['struct1'] = ...

    u: Final['union1'] = ...

    def __init__(
        self, *,
        i: _typing.Optional[int]=None,
        d: _typing.Optional[float]=None,
        s: _typing.Optional['struct1']=None,
        u: _typing.Optional['union1']=None
    ) -> None: ...

    def __hash__(self) -> int: ...
    def __lt__(self, other: 'union2') -> bool: ...
    def __gt__(self, other: 'union2') -> bool: ...
    def __le__(self, other: 'union2') -> bool: ...
    def __ge__(self, other: 'union2') -> bool: ...

    class Type(thrift.py3.types.Enum):
        EMPTY: union2.Type = ...
        i: union2.Type = ...
        d: union2.Type = ...
        s: union2.Type = ...
        u: union2.Type = ...

    @staticmethod
    def fromValue(value: _typing.Union[None, int, float, 'struct1', 'union1']) -> union2: ...
    @__property__
    def value(self) -> _typing.Union[None, int, float, 'struct1', 'union1']: ...
    @__property__
    def type(self) -> "union2.Type": ...


_List__i32T = _typing.TypeVar('_List__i32T', bound=_typing.Sequence[int])


class List__i32(_typing.Sequence[int], _typing.Hashable):
    def __init__(self, items: _typing.Sequence[int]=None) -> None: ...
    def __len__(self) -> int: ...
    def __hash__(self) -> int: ...
    def __contains__(self, x: object) -> bool: ...
    def __copy__(self) -> _typing.Sequence[int]: ...
    @_typing.overload
    def __getitem__(self, i: int) -> int: ...
    @_typing.overload
    def __getitem__(self, s: slice) -> _typing.Sequence[int]: ...
    def count(self, item: _typing.Any) -> int: ...
    def index(self, item: _typing.Any, start: int = ..., stop: int = ...) -> int: ...
    def __add__(self, other: _typing.Sequence[int]) -> 'List__i32': ...
    def __radd__(self, other: _List__i32T) -> _List__i32T: ...
    def __reversed__(self) -> _typing.Iterator[int]: ...
    def __iter__(self) -> _typing.Iterator[int]: ...


class Map__string_i32(_typing.Mapping[str, int], _typing.Hashable):
    def __init__(self, items: _typing.Mapping[str, int]=None) -> None: ...
    def __len__(self) -> int: ...
    def __hash__(self) -> int: ...
    def __contains__(self, x: object) -> bool: ...
    def __copy__(self) -> _typing.Mapping[str, int]: ...
    def __getitem__(self, key: str) -> int: ...
    def __iter__(self) -> _typing.Iterator[str]: ...


_List__Map__string_i32T = _typing.TypeVar('_List__Map__string_i32T', bound=_typing.Sequence[_typing.Mapping[str, int]])


class List__Map__string_i32(_typing.Sequence[_typing.Mapping[str, int]], _typing.Hashable):
    def __init__(self, items: _typing.Sequence[_typing.Mapping[str, int]]=None) -> None: ...
    def __len__(self) -> int: ...
    def __hash__(self) -> int: ...
    def __contains__(self, x: object) -> bool: ...
    def __copy__(self) -> _typing.Sequence[_typing.Mapping[str, int]]: ...
    @_typing.overload
    def __getitem__(self, i: int) -> _typing.Mapping[str, int]: ...
    @_typing.overload
    def __getitem__(self, s: slice) -> _typing.Sequence[_typing.Mapping[str, int]]: ...
    def count(self, item: _typing.Any) -> int: ...
    def index(self, item: _typing.Any, start: int = ..., stop: int = ...) -> int: ...
    def __add__(self, other: _typing.Sequence[_typing.Mapping[str, int]]) -> 'List__Map__string_i32': ...
    def __radd__(self, other: _List__Map__string_i32T) -> _List__Map__string_i32T: ...
    def __reversed__(self) -> _typing.Iterator[_typing.Mapping[str, int]]: ...
    def __iter__(self) -> _typing.Iterator[_typing.Mapping[str, int]]: ...


class Map__string_string(_typing.Mapping[str, str], _typing.Hashable):
    def __init__(self, items: _typing.Mapping[str, str]=None) -> None: ...
    def __len__(self) -> int: ...
    def __hash__(self) -> int: ...
    def __contains__(self, x: object) -> bool: ...
    def __copy__(self) -> _typing.Mapping[str, str]: ...
    def __getitem__(self, key: str) -> str: ...
    def __iter__(self) -> _typing.Iterator[str]: ...


_List__RangeT = _typing.TypeVar('_List__RangeT', bound=_typing.Sequence['Range'])


class List__Range(_typing.Sequence['Range'], _typing.Hashable):
    def __init__(self, items: _typing.Sequence['Range']=None) -> None: ...
    def __len__(self) -> int: ...
    def __hash__(self) -> int: ...
    def __contains__(self, x: object) -> bool: ...
    def __copy__(self) -> _typing.Sequence['Range']: ...
    @_typing.overload
    def __getitem__(self, i: int) -> 'Range': ...
    @_typing.overload
    def __getitem__(self, s: slice) -> _typing.Sequence['Range']: ...
    def count(self, item: _typing.Any) -> int: ...
    def index(self, item: _typing.Any, start: int = ..., stop: int = ...) -> int: ...
    def __add__(self, other: _typing.Sequence['Range']) -> 'List__Range': ...
    def __radd__(self, other: _List__RangeT) -> _List__RangeT: ...
    def __reversed__(self) -> _typing.Iterator['Range']: ...
    def __iter__(self) -> _typing.Iterator['Range']: ...


_List__InternshipT = _typing.TypeVar('_List__InternshipT', bound=_typing.Sequence['Internship'])


class List__Internship(_typing.Sequence['Internship'], _typing.Hashable):
    def __init__(self, items: _typing.Sequence['Internship']=None) -> None: ...
    def __len__(self) -> int: ...
    def __hash__(self) -> int: ...
    def __contains__(self, x: object) -> bool: ...
    def __copy__(self) -> _typing.Sequence['Internship']: ...
    @_typing.overload
    def __getitem__(self, i: int) -> 'Internship': ...
    @_typing.overload
    def __getitem__(self, s: slice) -> _typing.Sequence['Internship']: ...
    def count(self, item: _typing.Any) -> int: ...
    def index(self, item: _typing.Any, start: int = ..., stop: int = ...) -> int: ...
    def __add__(self, other: _typing.Sequence['Internship']) -> 'List__Internship': ...
    def __radd__(self, other: _List__InternshipT) -> _List__InternshipT: ...
    def __reversed__(self) -> _typing.Iterator['Internship']: ...
    def __iter__(self) -> _typing.Iterator['Internship']: ...


_List__stringT = _typing.TypeVar('_List__stringT', bound=_typing.Sequence[str])


class List__string(_typing.Sequence[str], _typing.Hashable):
    def __init__(self, items: _typing.Sequence[str]=None) -> None: ...
    def __len__(self) -> int: ...
    def __hash__(self) -> int: ...
    def __contains__(self, x: object) -> bool: ...
    def __copy__(self) -> _typing.Sequence[str]: ...
    @_typing.overload
    def __getitem__(self, i: int) -> str: ...
    @_typing.overload
    def __getitem__(self, s: slice) -> _typing.Sequence[str]: ...
    def count(self, item: _typing.Any) -> int: ...
    def index(self, item: _typing.Any, start: int = ..., stop: int = ...) -> int: ...
    def __add__(self, other: _typing.Sequence[str]) -> 'List__string': ...
    def __radd__(self, other: _List__stringT) -> _List__stringT: ...
    def __reversed__(self) -> _typing.Iterator[str]: ...
    def __iter__(self) -> _typing.Iterator[str]: ...


class Set__i32(_typing.AbstractSet[int], _typing.Hashable):
    def __init__(self, items: _typing.AbstractSet[int]=None) -> None: ...
    def __len__(self) -> int: ...
    def __hash__(self) -> int: ...
    def __contains__(self, x: object) -> bool: ...
    def __copy__(self) -> _typing.AbstractSet[int]: ...
    def isdisjoint(self, other: _typing.AbstractSet[int]) -> bool: ...
    def union(self, other: _typing.AbstractSet[int]) -> 'Set__i32': ...
    def intersection(self, other: _typing.AbstractSet[int]) -> 'Set__i32': ...
    def difference(self, other: _typing.AbstractSet[int]) -> 'Set__i32': ...
    def symmetric_difference(self, other: _typing.AbstractSet[int]) -> 'Set__i32': ...
    def issubset(self, other: _typing.AbstractSet[int]) -> bool: ...
    def issuperset(self, other: _typing.AbstractSet[int]) -> bool: ...
    def __iter__(self) -> _typing.Iterator[int]: ...


class Set__string(_typing.AbstractSet[str], _typing.Hashable):
    def __init__(self, items: _typing.AbstractSet[str]=None) -> None: ...
    def __len__(self) -> int: ...
    def __hash__(self) -> int: ...
    def __contains__(self, x: object) -> bool: ...
    def __copy__(self) -> _typing.AbstractSet[str]: ...
    def isdisjoint(self, other: _typing.AbstractSet[str]) -> bool: ...
    def union(self, other: _typing.AbstractSet[str]) -> 'Set__string': ...
    def intersection(self, other: _typing.AbstractSet[str]) -> 'Set__string': ...
    def difference(self, other: _typing.AbstractSet[str]) -> 'Set__string': ...
    def symmetric_difference(self, other: _typing.AbstractSet[str]) -> 'Set__string': ...
    def issubset(self, other: _typing.AbstractSet[str]) -> bool: ...
    def issuperset(self, other: _typing.AbstractSet[str]) -> bool: ...
    def __iter__(self) -> _typing.Iterator[str]: ...


class Map__i32_i32(_typing.Mapping[int, int], _typing.Hashable):
    def __init__(self, items: _typing.Mapping[int, int]=None) -> None: ...
    def __len__(self) -> int: ...
    def __hash__(self) -> int: ...
    def __contains__(self, x: object) -> bool: ...
    def __copy__(self) -> _typing.Mapping[int, int]: ...
    def __getitem__(self, key: int) -> int: ...
    def __iter__(self) -> _typing.Iterator[int]: ...


class Map__i32_string(_typing.Mapping[int, str], _typing.Hashable):
    def __init__(self, items: _typing.Mapping[int, str]=None) -> None: ...
    def __len__(self) -> int: ...
    def __hash__(self) -> int: ...
    def __contains__(self, x: object) -> bool: ...
    def __copy__(self) -> _typing.Mapping[int, str]: ...
    def __getitem__(self, key: int) -> str: ...
    def __iter__(self) -> _typing.Iterator[int]: ...


myInt: int = ...
name: str = ...
states: List__Map__string_i32 = ...
x: float = ...
y: float = ...
z: float = ...
zeroDoubleValue: float = ...
longDoubleValue: float = ...
my_company: Company = ...
foo: str = ...
bar: int = ...
mymap: Map__string_string = ...
instagram: Internship = ...
partial_const: Internship = ...
kRanges: List__Range = ...
internList: List__Internship = ...
pod_0: struct1 = ...
pod_s_0: struct1 = ...
pod_1: struct1 = ...
pod_s_1: struct1 = ...
pod_2: struct2 = ...
pod_trailing_commas: struct2 = ...
pod_s_2: struct2 = ...
pod_3: struct3 = ...
pod_s_3: struct3 = ...
pod_4: struct4 = ...
u_1_1: union1 = ...
u_1_2: union1 = ...
u_1_3: union1 = ...
u_2_1: union2 = ...
u_2_2: union2 = ...
u_2_3: union2 = ...
u_2_4: union2 = ...
u_2_5: union2 = ...
u_2_6: union2 = ...
apostrophe: str = ...
tripleApostrophe: str = ...
quotationMark: str = ...
backslash: str = ...
escaped_a: str = ...
char2ascii: Map__string_i32 = ...
escaped_strings: List__string = ...
false_c: bool = ...
true_c: bool = ...
zero_byte: int = ...
zero16: int = ...
zero32: int = ...
zero64: int = ...
zero_dot_zero: float = ...
empty_string: str = ...
empty_int_list: List__i32 = ...
empty_string_list: List__string = ...
empty_int_set: Set__i32 = ...
empty_string_set: Set__string = ...
empty_int_int_map: Map__i32_i32 = ...
empty_int_string_map: Map__i32_string = ...
empty_string_int_map: Map__string_i32 = ...
empty_string_string_map: Map__string_string = ...
MyCompany = Company
MyStringIdentifier = str
MyIntIdentifier = int
MyMapIdentifier = Map__string_string
