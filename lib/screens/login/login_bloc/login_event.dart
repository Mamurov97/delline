part of 'login_bloc.dart';

abstract class LoginEvent {}

class ButtonPressedEvent extends LoginEvent {
  TextEditingController logController = TextEditingController();
  TextEditingController passController = TextEditingController();

  ButtonPressedEvent(
      {required this.logController, required this.passController});
}
