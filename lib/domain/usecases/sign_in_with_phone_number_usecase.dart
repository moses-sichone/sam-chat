

import 'package:samchat/domain/repositories/firebase_repository.dart';

class SignInWithPhoneNumberUseCase{
  final FirebaseRepository repository;

  SignInWithPhoneNumberUseCase({this.repository});

  Future<void> call(String smsPinCode)async{
    print('signing with phone with smsPinCode: $smsPinCode');
    return await repository.signInWithPhoneNumber(smsPinCode);
  }
}