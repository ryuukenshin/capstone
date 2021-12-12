import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'report_record.g.dart';

abstract class ReportRecord
    implements Built<ReportRecord, ReportRecordBuilder> {
  static Serializer<ReportRecord> get serializer => _$reportRecordSerializer;

  @nullable
  String get content;

  @nullable
  String get subject;

  @nullable
  String get image;

  @nullable
  String get video;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(ReportRecordBuilder builder) => builder
    ..content = ''
    ..subject = ''
    ..image = ''
    ..video = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('report');

  static Stream<ReportRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  ReportRecord._();
  factory ReportRecord([void Function(ReportRecordBuilder) updates]) =
      _$ReportRecord;

  static ReportRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createReportRecordData({
  String content,
  String subject,
  String image,
  String video,
}) =>
    serializers.toFirestore(
        ReportRecord.serializer,
        ReportRecord((r) => r
          ..content = content
          ..subject = subject
          ..image = image
          ..video = video));
