/**
 * Autogenerated by Thrift
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 *  @generated
 */

package test.fixtures.complex_struct;

import com.facebook.swift.codec.*;
import com.facebook.swift.codec.ThriftField.Requiredness;
import com.facebook.swift.codec.ThriftField.Recursiveness;
import java.util.*;
import org.apache.thrift.*;
import org.apache.thrift.async.*;
import org.apache.thrift.server.*;
import org.apache.thrift.transport.*;
import org.apache.thrift.protocol.*;
import static com.google.common.base.MoreObjects.toStringHelper;

@SwiftGenerated
@ThriftStruct(value="MyStructTypeDef", builder=MyStructTypeDef.Builder.class)
public final class MyStructTypeDef {
    @ThriftConstructor
    public MyStructTypeDef(
        @ThriftField(value=1, name="myLongField", requiredness=Requiredness.NONE) final long myLongField,
        @ThriftField(value=2, name="myLongTypeDef", requiredness=Requiredness.NONE) final long myLongTypeDef,
        @ThriftField(value=3, name="myStringField", requiredness=Requiredness.NONE) final String myStringField,
        @ThriftField(value=4, name="myStringTypedef", requiredness=Requiredness.NONE) final String myStringTypedef,
        @ThriftField(value=5, name="myMapField", requiredness=Requiredness.NONE) final Map<Short, String> myMapField,
        @ThriftField(value=6, name="myMapTypedef", requiredness=Requiredness.NONE) final Map<Short, String> myMapTypedef,
        @ThriftField(value=7, name="myListField", requiredness=Requiredness.NONE) final List<Double> myListField,
        @ThriftField(value=8, name="myListTypedef", requiredness=Requiredness.NONE) final List<Double> myListTypedef,
        @ThriftField(value=9, name="myMapListOfTypeDef", requiredness=Requiredness.NONE) final Map<Short, List<List<Double>>> myMapListOfTypeDef
    ) {
        this.myLongField = myLongField;
        this.myLongTypeDef = myLongTypeDef;
        this.myStringField = myStringField;
        this.myStringTypedef = myStringTypedef;
        this.myMapField = myMapField;
        this.myMapTypedef = myMapTypedef;
        this.myListField = myListField;
        this.myListTypedef = myListTypedef;
        this.myMapListOfTypeDef = myMapListOfTypeDef;
    }
    
    @ThriftConstructor
    protected MyStructTypeDef() {
      this.myLongField = 0L;
      this.myLongTypeDef = 0L;
      this.myStringField = null;
      this.myStringTypedef = null;
      this.myMapField = null;
      this.myMapTypedef = null;
      this.myListField = null;
      this.myListTypedef = null;
      this.myMapListOfTypeDef = null;
    }
    
    public static class Builder {
        private long myLongField;
        @ThriftField(value=1, name="myLongField", requiredness=Requiredness.NONE)
        public Builder setMyLongField(long myLongField) {
            this.myLongField = myLongField;
            return this;
        }
        private long myLongTypeDef;
        @ThriftField(value=2, name="myLongTypeDef", requiredness=Requiredness.NONE)
        public Builder setMyLongTypeDef(long myLongTypeDef) {
            this.myLongTypeDef = myLongTypeDef;
            return this;
        }
        private String myStringField;
        @ThriftField(value=3, name="myStringField", requiredness=Requiredness.NONE)
        public Builder setMyStringField(String myStringField) {
            this.myStringField = myStringField;
            return this;
        }
        private String myStringTypedef;
        @ThriftField(value=4, name="myStringTypedef", requiredness=Requiredness.NONE)
        public Builder setMyStringTypedef(String myStringTypedef) {
            this.myStringTypedef = myStringTypedef;
            return this;
        }
        private Map<Short, String> myMapField;
        @ThriftField(value=5, name="myMapField", requiredness=Requiredness.NONE)
        public Builder setMyMapField(Map<Short, String> myMapField) {
            this.myMapField = myMapField;
            return this;
        }
        private Map<Short, String> myMapTypedef;
        @ThriftField(value=6, name="myMapTypedef", requiredness=Requiredness.NONE)
        public Builder setMyMapTypedef(Map<Short, String> myMapTypedef) {
            this.myMapTypedef = myMapTypedef;
            return this;
        }
        private List<Double> myListField;
        @ThriftField(value=7, name="myListField", requiredness=Requiredness.NONE)
        public Builder setMyListField(List<Double> myListField) {
            this.myListField = myListField;
            return this;
        }
        private List<Double> myListTypedef;
        @ThriftField(value=8, name="myListTypedef", requiredness=Requiredness.NONE)
        public Builder setMyListTypedef(List<Double> myListTypedef) {
            this.myListTypedef = myListTypedef;
            return this;
        }
        private Map<Short, List<List<Double>>> myMapListOfTypeDef;
        @ThriftField(value=9, name="myMapListOfTypeDef", requiredness=Requiredness.NONE)
        public Builder setMyMapListOfTypeDef(Map<Short, List<List<Double>>> myMapListOfTypeDef) {
            this.myMapListOfTypeDef = myMapListOfTypeDef;
            return this;
        }
    
        public Builder() { }
        public Builder(MyStructTypeDef other) {
            this.myLongField = other.myLongField;
            this.myLongTypeDef = other.myLongTypeDef;
            this.myStringField = other.myStringField;
            this.myStringTypedef = other.myStringTypedef;
            this.myMapField = other.myMapField;
            this.myMapTypedef = other.myMapTypedef;
            this.myListField = other.myListField;
            this.myListTypedef = other.myListTypedef;
            this.myMapListOfTypeDef = other.myMapListOfTypeDef;
        }
    
        @ThriftConstructor
        public MyStructTypeDef build() {
            return new MyStructTypeDef (
                this.myLongField,
                this.myLongTypeDef,
                this.myStringField,
                this.myStringTypedef,
                this.myMapField,
                this.myMapTypedef,
                this.myListField,
                this.myListTypedef,
                this.myMapListOfTypeDef
            );
        }
    }
    
    private static final TStruct STRUCT_DESC = new TStruct("MyStructTypeDef");
    private final long myLongField;
    public static final int _MYLONGFIELD = 1;
    private static final TField MY_LONG_FIELD_FIELD_DESC = new TField("myLongField", TType.I64, (short)1);
    private final long myLongTypeDef;
    public static final int _MYLONGTYPEDEF = 2;
    private static final TField MY_LONG_TYPE_DEF_FIELD_DESC = new TField("myLongTypeDef", TType.I64, (short)2);
    private final String myStringField;
    public static final int _MYSTRINGFIELD = 3;
    private static final TField MY_STRING_FIELD_FIELD_DESC = new TField("myStringField", TType.STRING, (short)3);
    private final String myStringTypedef;
    public static final int _MYSTRINGTYPEDEF = 4;
    private static final TField MY_STRING_TYPEDEF_FIELD_DESC = new TField("myStringTypedef", TType.STRING, (short)4);
    private final Map<Short, String> myMapField;
    public static final int _MYMAPFIELD = 5;
    private static final TField MY_MAP_FIELD_FIELD_DESC = new TField("myMapField", TType.MAP, (short)5);
    private final Map<Short, String> myMapTypedef;
    public static final int _MYMAPTYPEDEF = 6;
    private static final TField MY_MAP_TYPEDEF_FIELD_DESC = new TField("myMapTypedef", TType.MAP, (short)6);
    private final List<Double> myListField;
    public static final int _MYLISTFIELD = 7;
    private static final TField MY_LIST_FIELD_FIELD_DESC = new TField("myListField", TType.LIST, (short)7);
    private final List<Double> myListTypedef;
    public static final int _MYLISTTYPEDEF = 8;
    private static final TField MY_LIST_TYPEDEF_FIELD_DESC = new TField("myListTypedef", TType.LIST, (short)8);
    private final Map<Short, List<List<Double>>> myMapListOfTypeDef;
    public static final int _MYMAPLISTOFTYPEDEF = 9;
    private static final TField MY_MAP_LIST_OF_TYPE_DEF_FIELD_DESC = new TField("myMapListOfTypeDef", TType.MAP, (short)9);

    
    @ThriftField(value=1, name="myLongField", requiredness=Requiredness.NONE)
    public long getMyLongField() { return myLongField; }
        
    @ThriftField(value=2, name="myLongTypeDef", requiredness=Requiredness.NONE)
    public long getMyLongTypeDef() { return myLongTypeDef; }
        
    @ThriftField(value=3, name="myStringField", requiredness=Requiredness.NONE)
    public String getMyStringField() { return myStringField; }
        
    @ThriftField(value=4, name="myStringTypedef", requiredness=Requiredness.NONE)
    public String getMyStringTypedef() { return myStringTypedef; }
        
    @ThriftField(value=5, name="myMapField", requiredness=Requiredness.NONE)
    public Map<Short, String> getMyMapField() { return myMapField; }
        
    @ThriftField(value=6, name="myMapTypedef", requiredness=Requiredness.NONE)
    public Map<Short, String> getMyMapTypedef() { return myMapTypedef; }
        
    @ThriftField(value=7, name="myListField", requiredness=Requiredness.NONE)
    public List<Double> getMyListField() { return myListField; }
        
    @ThriftField(value=8, name="myListTypedef", requiredness=Requiredness.NONE)
    public List<Double> getMyListTypedef() { return myListTypedef; }
        
    @ThriftField(value=9, name="myMapListOfTypeDef", requiredness=Requiredness.NONE)
    public Map<Short, List<List<Double>>> getMyMapListOfTypeDef() { return myMapListOfTypeDef; }
    
    @Override
    public String toString() {
        return toStringHelper(this)
            .add("myLongField", myLongField)
            .add("myLongTypeDef", myLongTypeDef)
            .add("myStringField", myStringField)
            .add("myStringTypedef", myStringTypedef)
            .add("myMapField", myMapField)
            .add("myMapTypedef", myMapTypedef)
            .add("myListField", myListField)
            .add("myListTypedef", myListTypedef)
            .add("myMapListOfTypeDef", myMapListOfTypeDef)
            .toString();
    }
    
    @Override
    public boolean equals(Object o) {
        if (this == o) {
            return true;
        }
        if (o == null || getClass() != o.getClass()) {
            return false;
        }
    
        MyStructTypeDef other = (MyStructTypeDef)o;
    
        return
            Objects.equals(myLongField, other.myLongField) &&
            Objects.equals(myLongTypeDef, other.myLongTypeDef) &&
            Objects.equals(myStringField, other.myStringField) &&
            Objects.equals(myStringTypedef, other.myStringTypedef) &&
            Objects.equals(myMapField, other.myMapField) &&
            Objects.equals(myMapTypedef, other.myMapTypedef) &&
            Objects.equals(myListField, other.myListField) &&
            Objects.equals(myListTypedef, other.myListTypedef) &&
            Objects.equals(myMapListOfTypeDef, other.myMapListOfTypeDef) &&
            true;
    }
    
    @Override
    public int hashCode() {
        return Arrays.deepHashCode(new Object[] {
            myLongField,
            myLongTypeDef,
            myStringField,
            myStringTypedef,
            myMapField,
            myMapTypedef,
            myListField,
            myListTypedef,
            myMapListOfTypeDef
        });
    }
    
    public void write0(TProtocol oprot) throws TException {
      oprot.writeStructBegin(STRUCT_DESC);
      oprot.writeFieldBegin(MY_LONG_FIELD_FIELD_DESC);
      oprot.writeI64(this.myLongField);
      oprot.writeFieldEnd();
      oprot.writeFieldBegin(MY_LONG_TYPE_DEF_FIELD_DESC);
      oprot.writeI64(this.myLongTypeDef);
      oprot.writeFieldEnd();
      if (this.myStringField != null) {
        oprot.writeFieldBegin(MY_STRING_FIELD_FIELD_DESC);
        oprot.writeString(this.myStringField);
        oprot.writeFieldEnd();
      }
      if (this.myStringTypedef != null) {
        oprot.writeFieldBegin(MY_STRING_TYPEDEF_FIELD_DESC);
        oprot.writeString(this.myStringTypedef);
        oprot.writeFieldEnd();
      }
      if (this.myMapField != null) {
        oprot.writeFieldBegin(MY_MAP_FIELD_FIELD_DESC);
        Map<Short, String> _iter0 = this.myMapField;
        oprot.writeMapBegin(new TMap(TType.I16, TType.STRING, _iter0.size()));
        for (Map.Entry<Short, String> _iter1 : _iter0.entrySet()) {
          oprot.writeI16(_iter1.getKey());
          oprot.writeString(_iter1.getValue());
        }
        oprot.writeMapEnd();
        oprot.writeFieldEnd();
      }
      if (this.myMapTypedef != null) {
        oprot.writeFieldBegin(MY_MAP_TYPEDEF_FIELD_DESC);
        Map<Short, String> _iter0 = this.myMapTypedef;
        oprot.writeMapBegin(new TMap(TType.I16, TType.STRING, _iter0.size()));
        for (Map.Entry<Short, String> _iter1 : _iter0.entrySet()) {
          oprot.writeI16(_iter1.getKey());
          oprot.writeString(_iter1.getValue());
        }
        oprot.writeMapEnd();
        oprot.writeFieldEnd();
      }
      if (this.myListField != null) {
        oprot.writeFieldBegin(MY_LIST_FIELD_FIELD_DESC);
        List<Double> _iter0 = this.myListField;
        oprot.writeListBegin(new TList(TType.DOUBLE, _iter0.size()));
        for (double _iter1 : _iter0) {
          oprot.writeDouble(_iter1);
        }
        oprot.writeListEnd();
        oprot.writeFieldEnd();
      }
      if (this.myListTypedef != null) {
        oprot.writeFieldBegin(MY_LIST_TYPEDEF_FIELD_DESC);
        List<Double> _iter0 = this.myListTypedef;
        oprot.writeListBegin(new TList(TType.DOUBLE, _iter0.size()));
        for (double _iter1 : _iter0) {
          oprot.writeDouble(_iter1);
        }
        oprot.writeListEnd();
        oprot.writeFieldEnd();
      }
      if (this.myMapListOfTypeDef != null) {
        oprot.writeFieldBegin(MY_MAP_LIST_OF_TYPE_DEF_FIELD_DESC);
        Map<Short, List<List<Double>>> _iter0 = this.myMapListOfTypeDef;
        oprot.writeMapBegin(new TMap(TType.I16, TType.LIST, _iter0.size()));
        for (Map.Entry<Short, List<List<Double>>> _iter1 : _iter0.entrySet()) {
          oprot.writeI16(_iter1.getKey());
          
          oprot.writeListBegin(new TList(TType.LIST, _iter1.getValue().size()));
        for (List<Double> _iter2 : _iter1.getValue()) {
          oprot.writeListBegin(new TList(TType.DOUBLE, _iter2.size()));
        for (double _iter3 : _iter2) {
          oprot.writeDouble(_iter3);
        }
        oprot.writeListEnd();
        }
        oprot.writeListEnd();
        }
        oprot.writeMapEnd();
        oprot.writeFieldEnd();
      }
      oprot.writeFieldStop();
      oprot.writeStructEnd();
    }
    
}