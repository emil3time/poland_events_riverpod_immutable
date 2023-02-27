// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'event_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EventDTO _$EventDTOFromJson(Map<String, dynamic> json) {
  return _EventDTO.fromJson(json);
}

/// @nodoc
mixin _$EventDTO {
  String get name => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'summary')
  String get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'start_date')
  String get startDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'start_time')
  String get startTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'primary_venue')
  PrimaryVenueDTO get primaryVenue => throw _privateConstructorUsedError;
  @JsonKey(name: 'tickets_url')
  String get ticketUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'ticket_availability')
  TicketAvailabilityDTO get ticketAvailability =>
      throw _privateConstructorUsedError;
  ImageUrlDTO get image => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EventDTOCopyWith<EventDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventDTOCopyWith<$Res> {
  factory $EventDTOCopyWith(EventDTO value, $Res Function(EventDTO) then) =
      _$EventDTOCopyWithImpl<$Res, EventDTO>;
  @useResult
  $Res call(
      {String name,
      String status,
      @JsonKey(name: 'summary')
          String description,
      @JsonKey(name: 'start_date')
          String startDate,
      @JsonKey(name: 'start_time')
          String startTime,
      @JsonKey(name: 'primary_venue')
          PrimaryVenueDTO primaryVenue,
      @JsonKey(name: 'tickets_url')
          String ticketUrl,
      @JsonKey(name: 'ticket_availability')
          TicketAvailabilityDTO ticketAvailability,
      ImageUrlDTO image});

  $PrimaryVenueDTOCopyWith<$Res> get primaryVenue;
  $TicketAvailabilityDTOCopyWith<$Res> get ticketAvailability;
  $ImageUrlDTOCopyWith<$Res> get image;
}

/// @nodoc
class _$EventDTOCopyWithImpl<$Res, $Val extends EventDTO>
    implements $EventDTOCopyWith<$Res> {
  _$EventDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? status = null,
    Object? description = null,
    Object? startDate = null,
    Object? startTime = null,
    Object? primaryVenue = null,
    Object? ticketUrl = null,
    Object? ticketAvailability = null,
    Object? image = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as String,
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as String,
      primaryVenue: null == primaryVenue
          ? _value.primaryVenue
          : primaryVenue // ignore: cast_nullable_to_non_nullable
              as PrimaryVenueDTO,
      ticketUrl: null == ticketUrl
          ? _value.ticketUrl
          : ticketUrl // ignore: cast_nullable_to_non_nullable
              as String,
      ticketAvailability: null == ticketAvailability
          ? _value.ticketAvailability
          : ticketAvailability // ignore: cast_nullable_to_non_nullable
              as TicketAvailabilityDTO,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as ImageUrlDTO,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PrimaryVenueDTOCopyWith<$Res> get primaryVenue {
    return $PrimaryVenueDTOCopyWith<$Res>(_value.primaryVenue, (value) {
      return _then(_value.copyWith(primaryVenue: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TicketAvailabilityDTOCopyWith<$Res> get ticketAvailability {
    return $TicketAvailabilityDTOCopyWith<$Res>(_value.ticketAvailability,
        (value) {
      return _then(_value.copyWith(ticketAvailability: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ImageUrlDTOCopyWith<$Res> get image {
    return $ImageUrlDTOCopyWith<$Res>(_value.image, (value) {
      return _then(_value.copyWith(image: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_EventDTOCopyWith<$Res> implements $EventDTOCopyWith<$Res> {
  factory _$$_EventDTOCopyWith(
          _$_EventDTO value, $Res Function(_$_EventDTO) then) =
      __$$_EventDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String status,
      @JsonKey(name: 'summary')
          String description,
      @JsonKey(name: 'start_date')
          String startDate,
      @JsonKey(name: 'start_time')
          String startTime,
      @JsonKey(name: 'primary_venue')
          PrimaryVenueDTO primaryVenue,
      @JsonKey(name: 'tickets_url')
          String ticketUrl,
      @JsonKey(name: 'ticket_availability')
          TicketAvailabilityDTO ticketAvailability,
      ImageUrlDTO image});

  @override
  $PrimaryVenueDTOCopyWith<$Res> get primaryVenue;
  @override
  $TicketAvailabilityDTOCopyWith<$Res> get ticketAvailability;
  @override
  $ImageUrlDTOCopyWith<$Res> get image;
}

/// @nodoc
class __$$_EventDTOCopyWithImpl<$Res>
    extends _$EventDTOCopyWithImpl<$Res, _$_EventDTO>
    implements _$$_EventDTOCopyWith<$Res> {
  __$$_EventDTOCopyWithImpl(
      _$_EventDTO _value, $Res Function(_$_EventDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? status = null,
    Object? description = null,
    Object? startDate = null,
    Object? startTime = null,
    Object? primaryVenue = null,
    Object? ticketUrl = null,
    Object? ticketAvailability = null,
    Object? image = null,
  }) {
    return _then(_$_EventDTO(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as String,
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as String,
      primaryVenue: null == primaryVenue
          ? _value.primaryVenue
          : primaryVenue // ignore: cast_nullable_to_non_nullable
              as PrimaryVenueDTO,
      ticketUrl: null == ticketUrl
          ? _value.ticketUrl
          : ticketUrl // ignore: cast_nullable_to_non_nullable
              as String,
      ticketAvailability: null == ticketAvailability
          ? _value.ticketAvailability
          : ticketAvailability // ignore: cast_nullable_to_non_nullable
              as TicketAvailabilityDTO,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as ImageUrlDTO,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_EventDTO extends _EventDTO {
  const _$_EventDTO(
      {required this.name,
      required this.status,
      @JsonKey(name: 'summary') required this.description,
      @JsonKey(name: 'start_date') required this.startDate,
      @JsonKey(name: 'start_time') required this.startTime,
      @JsonKey(name: 'primary_venue') required this.primaryVenue,
      @JsonKey(name: 'tickets_url') required this.ticketUrl,
      @JsonKey(name: 'ticket_availability') required this.ticketAvailability,
      required this.image})
      : super._();

  factory _$_EventDTO.fromJson(Map<String, dynamic> json) =>
      _$$_EventDTOFromJson(json);

  @override
  final String name;
  @override
  final String status;
  @override
  @JsonKey(name: 'summary')
  final String description;
  @override
  @JsonKey(name: 'start_date')
  final String startDate;
  @override
  @JsonKey(name: 'start_time')
  final String startTime;
  @override
  @JsonKey(name: 'primary_venue')
  final PrimaryVenueDTO primaryVenue;
  @override
  @JsonKey(name: 'tickets_url')
  final String ticketUrl;
  @override
  @JsonKey(name: 'ticket_availability')
  final TicketAvailabilityDTO ticketAvailability;
  @override
  final ImageUrlDTO image;

  @override
  String toString() {
    return 'EventDTO(name: $name, status: $status, description: $description, startDate: $startDate, startTime: $startTime, primaryVenue: $primaryVenue, ticketUrl: $ticketUrl, ticketAvailability: $ticketAvailability, image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EventDTO &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.primaryVenue, primaryVenue) ||
                other.primaryVenue == primaryVenue) &&
            (identical(other.ticketUrl, ticketUrl) ||
                other.ticketUrl == ticketUrl) &&
            (identical(other.ticketAvailability, ticketAvailability) ||
                other.ticketAvailability == ticketAvailability) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, status, description,
      startDate, startTime, primaryVenue, ticketUrl, ticketAvailability, image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EventDTOCopyWith<_$_EventDTO> get copyWith =>
      __$$_EventDTOCopyWithImpl<_$_EventDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EventDTOToJson(
      this,
    );
  }
}

abstract class _EventDTO extends EventDTO {
  const factory _EventDTO(
      {required final String name,
      required final String status,
      @JsonKey(name: 'summary')
          required final String description,
      @JsonKey(name: 'start_date')
          required final String startDate,
      @JsonKey(name: 'start_time')
          required final String startTime,
      @JsonKey(name: 'primary_venue')
          required final PrimaryVenueDTO primaryVenue,
      @JsonKey(name: 'tickets_url')
          required final String ticketUrl,
      @JsonKey(name: 'ticket_availability')
          required final TicketAvailabilityDTO ticketAvailability,
      required final ImageUrlDTO image}) = _$_EventDTO;
  const _EventDTO._() : super._();

  factory _EventDTO.fromJson(Map<String, dynamic> json) = _$_EventDTO.fromJson;

  @override
  String get name;
  @override
  String get status;
  @override
  @JsonKey(name: 'summary')
  String get description;
  @override
  @JsonKey(name: 'start_date')
  String get startDate;
  @override
  @JsonKey(name: 'start_time')
  String get startTime;
  @override
  @JsonKey(name: 'primary_venue')
  PrimaryVenueDTO get primaryVenue;
  @override
  @JsonKey(name: 'tickets_url')
  String get ticketUrl;
  @override
  @JsonKey(name: 'ticket_availability')
  TicketAvailabilityDTO get ticketAvailability;
  @override
  ImageUrlDTO get image;
  @override
  @JsonKey(ignore: true)
  _$$_EventDTOCopyWith<_$_EventDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
