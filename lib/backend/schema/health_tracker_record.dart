import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'health_tracker_record.g.dart';

abstract class HealthTrackerRecord
    implements Built<HealthTrackerRecord, HealthTrackerRecordBuilder> {
  static Serializer<HealthTrackerRecord> get serializer =>
      _$healthTrackerRecordSerializer;

  @BuiltValueField(wireName: 'health_device_name')
  String? get healthDeviceName;

  @BuiltValueField(wireName: 'health_device_description')
  String? get healthDeviceDescription;

  @BuiltValueField(wireName: 'health_device_time')
  String? get healthDeviceTime;

  @BuiltValueField(wireName: 'health_device_type')
  String? get healthDeviceType;

  @BuiltValueField(wireName: 'health_device_vital_sign')
  int? get healthDeviceVitalSign;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(HealthTrackerRecordBuilder builder) => builder
    ..healthDeviceName = ''
    ..healthDeviceDescription = ''
    ..healthDeviceTime = ''
    ..healthDeviceType = ''
    ..healthDeviceVitalSign = 0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('health_tracker');

  static Stream<HealthTrackerRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<HealthTrackerRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  HealthTrackerRecord._();
  factory HealthTrackerRecord(
          [void Function(HealthTrackerRecordBuilder) updates]) =
      _$HealthTrackerRecord;

  static HealthTrackerRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createHealthTrackerRecordData({
  String? healthDeviceName,
  String? healthDeviceDescription,
  String? healthDeviceTime,
  String? healthDeviceType,
  int? healthDeviceVitalSign,
}) {
  final firestoreData = serializers.toFirestore(
    HealthTrackerRecord.serializer,
    HealthTrackerRecord(
      (h) => h
        ..healthDeviceName = healthDeviceName
        ..healthDeviceDescription = healthDeviceDescription
        ..healthDeviceTime = healthDeviceTime
        ..healthDeviceType = healthDeviceType
        ..healthDeviceVitalSign = healthDeviceVitalSign,
    ),
  );

  return firestoreData;
}
