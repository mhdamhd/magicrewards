import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:magic_rewards/core/utils/base_state.dart';
import 'package:magic_rewards/modules/profile/domain/entities/profile_entity.dart';
import 'package:magic_rewards/modules/profile/domain/parameters/profile_parameters.dart';
import 'package:magic_rewards/modules/profile/domain/repository/profile_repository.dart';

part 'profile_event.dart';

class ProfileBloc extends Bloc<ProfileEvent, BaseState<ProfileEntity>> {
  final ProfileRepository profileRepository;

  ProfileBloc(this.profileRepository)
      : super(const BaseState<ProfileEntity>()) {
    on<FetchProfileEvent>(_getProfile);
  }

  FutureOr<void> _getProfile(FetchProfileEvent event, emit) async {
    emit(state.loading());
    final result = await profileRepository.getProfile(ProfileParameters());
    result.fold((l) => emit(state.error(l)), (r) => emit(state.success(r)));
  }
}
