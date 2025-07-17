part of 'profile_cubit.dart';

@freezed
sealed class ProfileState with _$ProfileState {
  const factory ProfileState.initial() = Initial;
  const factory ProfileState.loading() = Loading;
  const factory ProfileState.userState(String user) = UserState;
}