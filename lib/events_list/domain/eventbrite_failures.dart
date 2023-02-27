import 'package:freezed_annotation/freezed_annotation.dart';

part 'github_failures.freezed.dart';

@freezed
class EventbriteFailures with _$EventbriteFailures {
  const EventbriteFailures._();
  const factory EventbriteFailures.api(int? errorCode) = _Api;
}
