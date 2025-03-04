import 'package:supabase_flutter/supabase_flutter.dart';

abstract interface class AuthRemoteDatasources {
  Future<String> signUpWithEmail({
    required String name,
    required String email,
    required String password,
  });
  Future<String> signInWithEmail({
    required String email,
    required String password,
  });
}

class authRemoteDatasourcesImpl implements AuthRemoteDatasources {
  
  final SupabaseClient supabaseClient;

  AuthRemoteDatasourcesImpl(this.supabaseClient);

  @override
  Future<String> signUpWithEmail({
    required String name,
    required String email,
    required String password,
  }) {
    throw UnimplementedError();
  }

  @override
  Future<String> signInWithEmail({
    required String email,
    required String password,
  }) {
    throw UnimplementedError();
  }
}
