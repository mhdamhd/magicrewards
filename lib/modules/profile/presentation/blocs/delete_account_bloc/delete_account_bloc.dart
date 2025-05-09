import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:magic_rewards/core/utils/base_state.dart';
import 'package:magic_rewards/modules/profile/domain/parameters/delete_account_parameters.dart';
import 'package:magic_rewards/modules/profile/domain/repository/profile_repository.dart';

part 'delete_account_event.dart';

class DeleteAccountBloc extends Bloc<DeleteAccountEvent, BaseState<void>> {
  final ProfileRepository profileRepository;

  DeleteAccountBloc(this.profileRepository) : super(const BaseState<void>()) {
    on<DeleteAccountButtonPressedEvent>(_deleteAccount);
  }

  FutureOr<void> _deleteAccount(
      DeleteAccountButtonPressedEvent event, emit) async {
    emit(state.loading());
    final result =
        await profileRepository.deleteAccount(DeleteAccountParameters());
    result.fold((l) => emit(state.error(l)), (r) => emit(state.success(r)));
  }
}
