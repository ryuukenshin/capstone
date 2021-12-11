import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'schedule_record.g.dart';

abstract class ScheduleRecord
    implements Built<ScheduleRecord, ScheduleRecordBuilder> {
  static Serializer<ScheduleRecord> get serializer =>
      _$scheduleRecordSerializer;

  @nullable
  String get details;

  @nullable
  String get wasteType;

  @nullable
  DateTime get date;

  @nullable
  DateTime get time;

  @nullable
  String get uid;

  @nullable
  @BuiltValueField(wireName: 'created_time')
  DateTime get createdTime;

  @nullable
  String get barangay;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(ScheduleRecordBuilder builder) => builder
    ..details = ''
    ..wasteType = ''
    ..uid = ''
    ..barangay = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('schedule');

  static Stream<ScheduleRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  ScheduleRecord._();
  factory ScheduleRecord([void Function(ScheduleRecordBuilder) updates]) =
      _$ScheduleRecord;

  static ScheduleRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createScheduleRecordData({
  String details,
  String wasteType,
  DateTime date,
  DateTime time,
  String uid,
  DateTime createdTime,
  String barangay,
}) =>
    serializers.toFirestore(
        ScheduleRecord.serializer,
        ScheduleRecord((s) => s
          ..details = details
          ..wasteType = wasteType
          ..date = date
          ..time = time
          ..uid = uid
          ..createdTime = createdTime
          ..barangay = barangay));
