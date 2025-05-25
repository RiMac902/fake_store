
import 'dart:async';

import 'package:fake_store/feature/authentication/presentation/bloc/auth/auth_bloc.dart';
import 'package:flutter/foundation.dart';

class GoRouterRefreshStream extends ChangeNotifier {
  GoRouterRefreshStream(Stream<AuthState> stream) {
    _subscription = stream.listen((_) {
      notifyListeners();
    });
  }
  late final StreamSubscription<AuthState> _subscription;
  @override
  void dispose() {
    _subscription.cancel();
    super.dispose();
  }
}
