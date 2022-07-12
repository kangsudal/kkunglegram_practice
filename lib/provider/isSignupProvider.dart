import 'package:flutter_riverpod/flutter_riverpod.dart';

final isSignupScreenProvider =
    StateNotifierProvider<IsSignupScreenNotifier, bool>((ref) {
  return IsSignupScreenNotifier();
});

class IsSignupScreenNotifier extends StateNotifier<bool> {
  IsSignupScreenNotifier() : super(true);

  void update(bool val){
    state = val;
  }
}
