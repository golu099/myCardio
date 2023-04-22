// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'health_tracker_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<HealthTrackerRecord> _$healthTrackerRecordSerializer =
    new _$HealthTrackerRecordSerializer();

class _$HealthTrackerRecordSerializer
    implements StructuredSerializer<HealthTrackerRecord> {
  @override
  final Iterable<Type> types = const [
    HealthTrackerRecord,
    _$HealthTrackerRecord
  ];
  @override
  final String wireName = 'HealthTrackerRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, HealthTrackerRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.healthDeviceName;
    if (value != null) {
      result
        ..add('health_device_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.healthDeviceDescription;
    if (value != null) {
      result
        ..add('health_device_description')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.healthDeviceTime;
    if (value != null) {
      result
        ..add('health_device_time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.healthDeviceType;
    if (value != null) {
      result
        ..add('health_device_type')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.healthDeviceVitalSign;
    if (value != null) {
      result
        ..add('health_device_vital_sign')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  HealthTrackerRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new HealthTrackerRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'health_device_name':
          result.healthDeviceName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'health_device_description':
          result.healthDeviceDescription = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'health_device_time':
          result.healthDeviceTime = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'health_device_type':
          result.healthDeviceType = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'health_device_vital_sign':
          result.healthDeviceVitalSign = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$HealthTrackerRecord extends HealthTrackerRecord {
  @override
  final String? healthDeviceName;
  @override
  final String? healthDeviceDescription;
  @override
  final String? healthDeviceTime;
  @override
  final String? healthDeviceType;
  @override
  final int? healthDeviceVitalSign;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$HealthTrackerRecord(
          [void Function(HealthTrackerRecordBuilder)? updates]) =>
      (new HealthTrackerRecordBuilder()..update(updates))._build();

  _$HealthTrackerRecord._(
      {this.healthDeviceName,
      this.healthDeviceDescription,
      this.healthDeviceTime,
      this.healthDeviceType,
      this.healthDeviceVitalSign,
      this.ffRef})
      : super._();

  @override
  HealthTrackerRecord rebuild(
          void Function(HealthTrackerRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HealthTrackerRecordBuilder toBuilder() =>
      new HealthTrackerRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HealthTrackerRecord &&
        healthDeviceName == other.healthDeviceName &&
        healthDeviceDescription == other.healthDeviceDescription &&
        healthDeviceTime == other.healthDeviceTime &&
        healthDeviceType == other.healthDeviceType &&
        healthDeviceVitalSign == other.healthDeviceVitalSign &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, healthDeviceName.hashCode);
    _$hash = $jc(_$hash, healthDeviceDescription.hashCode);
    _$hash = $jc(_$hash, healthDeviceTime.hashCode);
    _$hash = $jc(_$hash, healthDeviceType.hashCode);
    _$hash = $jc(_$hash, healthDeviceVitalSign.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'HealthTrackerRecord')
          ..add('healthDeviceName', healthDeviceName)
          ..add('healthDeviceDescription', healthDeviceDescription)
          ..add('healthDeviceTime', healthDeviceTime)
          ..add('healthDeviceType', healthDeviceType)
          ..add('healthDeviceVitalSign', healthDeviceVitalSign)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class HealthTrackerRecordBuilder
    implements Builder<HealthTrackerRecord, HealthTrackerRecordBuilder> {
  _$HealthTrackerRecord? _$v;

  String? _healthDeviceName;
  String? get healthDeviceName => _$this._healthDeviceName;
  set healthDeviceName(String? healthDeviceName) =>
      _$this._healthDeviceName = healthDeviceName;

  String? _healthDeviceDescription;
  String? get healthDeviceDescription => _$this._healthDeviceDescription;
  set healthDeviceDescription(String? healthDeviceDescription) =>
      _$this._healthDeviceDescription = healthDeviceDescription;

  String? _healthDeviceTime;
  String? get healthDeviceTime => _$this._healthDeviceTime;
  set healthDeviceTime(String? healthDeviceTime) =>
      _$this._healthDeviceTime = healthDeviceTime;

  String? _healthDeviceType;
  String? get healthDeviceType => _$this._healthDeviceType;
  set healthDeviceType(String? healthDeviceType) =>
      _$this._healthDeviceType = healthDeviceType;

  int? _healthDeviceVitalSign;
  int? get healthDeviceVitalSign => _$this._healthDeviceVitalSign;
  set healthDeviceVitalSign(int? healthDeviceVitalSign) =>
      _$this._healthDeviceVitalSign = healthDeviceVitalSign;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  HealthTrackerRecordBuilder() {
    HealthTrackerRecord._initializeBuilder(this);
  }

  HealthTrackerRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _healthDeviceName = $v.healthDeviceName;
      _healthDeviceDescription = $v.healthDeviceDescription;
      _healthDeviceTime = $v.healthDeviceTime;
      _healthDeviceType = $v.healthDeviceType;
      _healthDeviceVitalSign = $v.healthDeviceVitalSign;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HealthTrackerRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$HealthTrackerRecord;
  }

  @override
  void update(void Function(HealthTrackerRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  HealthTrackerRecord build() => _build();

  _$HealthTrackerRecord _build() {
    final _$result = _$v ??
        new _$HealthTrackerRecord._(
            healthDeviceName: healthDeviceName,
            healthDeviceDescription: healthDeviceDescription,
            healthDeviceTime: healthDeviceTime,
            healthDeviceType: healthDeviceType,
            healthDeviceVitalSign: healthDeviceVitalSign,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
