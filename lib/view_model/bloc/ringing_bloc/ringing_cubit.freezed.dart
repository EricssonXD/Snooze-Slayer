// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ringing_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RingingState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(AlarmSettings alarmSettings) ringing,
    required TResult Function() stoppedRinging,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(AlarmSettings alarmSettings)? ringing,
    TResult? Function()? stoppedRinging,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(AlarmSettings alarmSettings)? ringing,
    TResult Function()? stoppedRinging,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Ringing value) ringing,
    required TResult Function(_StoppedRinging value) stoppedRinging,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Ringing value)? ringing,
    TResult? Function(_StoppedRinging value)? stoppedRinging,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Ringing value)? ringing,
    TResult Function(_StoppedRinging value)? stoppedRinging,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RingingStateCopyWith<$Res> {
  factory $RingingStateCopyWith(
          RingingState value, $Res Function(RingingState) then) =
      _$RingingStateCopyWithImpl<$Res, RingingState>;
}

/// @nodoc
class _$RingingStateCopyWithImpl<$Res, $Val extends RingingState>
    implements $RingingStateCopyWith<$Res> {
  _$RingingStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$RingingStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl with DiagnosticableTreeMixin implements _Initial {
  const _$InitialImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RingingState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'RingingState.initial'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(AlarmSettings alarmSettings) ringing,
    required TResult Function() stoppedRinging,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(AlarmSettings alarmSettings)? ringing,
    TResult? Function()? stoppedRinging,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(AlarmSettings alarmSettings)? ringing,
    TResult Function()? stoppedRinging,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Ringing value) ringing,
    required TResult Function(_StoppedRinging value) stoppedRinging,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Ringing value)? ringing,
    TResult? Function(_StoppedRinging value)? stoppedRinging,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Ringing value)? ringing,
    TResult Function(_StoppedRinging value)? stoppedRinging,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements RingingState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$RingingImplCopyWith<$Res> {
  factory _$$RingingImplCopyWith(
          _$RingingImpl value, $Res Function(_$RingingImpl) then) =
      __$$RingingImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AlarmSettings alarmSettings});
}

/// @nodoc
class __$$RingingImplCopyWithImpl<$Res>
    extends _$RingingStateCopyWithImpl<$Res, _$RingingImpl>
    implements _$$RingingImplCopyWith<$Res> {
  __$$RingingImplCopyWithImpl(
      _$RingingImpl _value, $Res Function(_$RingingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? alarmSettings = null,
  }) {
    return _then(_$RingingImpl(
      null == alarmSettings
          ? _value.alarmSettings
          : alarmSettings // ignore: cast_nullable_to_non_nullable
              as AlarmSettings,
    ));
  }
}

/// @nodoc

class _$RingingImpl with DiagnosticableTreeMixin implements _Ringing {
  const _$RingingImpl(this.alarmSettings);

  @override
  final AlarmSettings alarmSettings;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RingingState.ringing(alarmSettings: $alarmSettings)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RingingState.ringing'))
      ..add(DiagnosticsProperty('alarmSettings', alarmSettings));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RingingImpl &&
            (identical(other.alarmSettings, alarmSettings) ||
                other.alarmSettings == alarmSettings));
  }

  @override
  int get hashCode => Object.hash(runtimeType, alarmSettings);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RingingImplCopyWith<_$RingingImpl> get copyWith =>
      __$$RingingImplCopyWithImpl<_$RingingImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(AlarmSettings alarmSettings) ringing,
    required TResult Function() stoppedRinging,
  }) {
    return ringing(alarmSettings);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(AlarmSettings alarmSettings)? ringing,
    TResult? Function()? stoppedRinging,
  }) {
    return ringing?.call(alarmSettings);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(AlarmSettings alarmSettings)? ringing,
    TResult Function()? stoppedRinging,
    required TResult orElse(),
  }) {
    if (ringing != null) {
      return ringing(alarmSettings);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Ringing value) ringing,
    required TResult Function(_StoppedRinging value) stoppedRinging,
  }) {
    return ringing(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Ringing value)? ringing,
    TResult? Function(_StoppedRinging value)? stoppedRinging,
  }) {
    return ringing?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Ringing value)? ringing,
    TResult Function(_StoppedRinging value)? stoppedRinging,
    required TResult orElse(),
  }) {
    if (ringing != null) {
      return ringing(this);
    }
    return orElse();
  }
}

abstract class _Ringing implements RingingState {
  const factory _Ringing(final AlarmSettings alarmSettings) = _$RingingImpl;

  AlarmSettings get alarmSettings;
  @JsonKey(ignore: true)
  _$$RingingImplCopyWith<_$RingingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StoppedRingingImplCopyWith<$Res> {
  factory _$$StoppedRingingImplCopyWith(_$StoppedRingingImpl value,
          $Res Function(_$StoppedRingingImpl) then) =
      __$$StoppedRingingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StoppedRingingImplCopyWithImpl<$Res>
    extends _$RingingStateCopyWithImpl<$Res, _$StoppedRingingImpl>
    implements _$$StoppedRingingImplCopyWith<$Res> {
  __$$StoppedRingingImplCopyWithImpl(
      _$StoppedRingingImpl _value, $Res Function(_$StoppedRingingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StoppedRingingImpl
    with DiagnosticableTreeMixin
    implements _StoppedRinging {
  const _$StoppedRingingImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RingingState.stoppedRinging()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'RingingState.stoppedRinging'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StoppedRingingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(AlarmSettings alarmSettings) ringing,
    required TResult Function() stoppedRinging,
  }) {
    return stoppedRinging();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(AlarmSettings alarmSettings)? ringing,
    TResult? Function()? stoppedRinging,
  }) {
    return stoppedRinging?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(AlarmSettings alarmSettings)? ringing,
    TResult Function()? stoppedRinging,
    required TResult orElse(),
  }) {
    if (stoppedRinging != null) {
      return stoppedRinging();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Ringing value) ringing,
    required TResult Function(_StoppedRinging value) stoppedRinging,
  }) {
    return stoppedRinging(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Ringing value)? ringing,
    TResult? Function(_StoppedRinging value)? stoppedRinging,
  }) {
    return stoppedRinging?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Ringing value)? ringing,
    TResult Function(_StoppedRinging value)? stoppedRinging,
    required TResult orElse(),
  }) {
    if (stoppedRinging != null) {
      return stoppedRinging(this);
    }
    return orElse();
  }
}

abstract class _StoppedRinging implements RingingState {
  const factory _StoppedRinging() = _$StoppedRingingImpl;
}
