import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'register_event.dart';
part 'register_state.dart';

class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  RegisterBloc() : super(RegisterState.initial()) {
    on<RegisterEmailChanged>(_mapRegisterEmailChangeToState);
    on<RegisterPasswordChanged>(_mapRegisterPasswordChangeToState);
    on<RegisterSubmitted>(_mapRegisterSubmittedToState);
  }
  void _mapRegisterEmailChangeToState(
      RegisterEmailChanged event, Emitter<RegisterState> emit) {
    emit(state.update(isEmailValid: Validators.isValidEmail(event.email)));
  }

  void _mapRegisterPasswordChangeToState(
      RegisterPasswordChanged event, Emitter<RegisterState> emit) {
    emit(state.update(isEmailValid: Validators.isValidPassword(event.password)));
  }

  void _mapRegisterSubmittedToState(
      RegisterSubmitted event, Emitter<RegisterState> emit) {
    emit(state.update(isEmailValid: Validators.isValidPassword(event.password)));
  }

}

class Validators {
  static isValidPassword(String password) {}

  static isValidEmail(String email) {}
}
