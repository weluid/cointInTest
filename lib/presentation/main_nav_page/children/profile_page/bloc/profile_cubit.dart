import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_state.dart';

part 'profile_cubit.freezed.dart';

class ProfileCubit extends Cubit<ProfileState> {
  ProfileCubit() : super(const ProfileState.initial());

  void initialStateTap() {
    emit(ProfileState.userState("HELLO WORLD"));
  }

  void userStateTap() {
    emit(ProfileState.loading());
  }

  void elseStateTap() {
    emit(ProfileState.initial());
  }
}
