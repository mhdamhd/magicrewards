import 'dart:async';

import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:magic_rewards/modules/auth/domain/entities/check_email_entity.dart';
import 'package:magic_rewards/modules/auth/domain/parameters/check_email_parameters.dart';

import '../../../../../core/utils/base_state.dart';
import '../../../domain/repository/auth_repository.dart';

part 'check_email_event.dart';

class CheckEmailBloc
    extends Bloc<CheckEmailEvent, BaseState<CheckEmailEntity>> {
  final AuthRepository authRepository;

  CheckEmailBloc(this.authRepository)
      : super(const BaseState<CheckEmailEntity>()) {
    on<CheckEmailButtonTappedEvent>(_checkEmail, transformer: restartable());
  }

  FutureOr<void> _checkEmail(CheckEmailButtonTappedEvent event, emit) async {
    emit(state.loading());
    final result = await authRepository.checkEmail(
      CheckEmailParameters(email: event.email),
    );
    result.fold((l) => emit(state.error(l)), (r) => emit(state.success(r)));
  }
}
