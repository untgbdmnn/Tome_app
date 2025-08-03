import 'package:flutter_riverpod/flutter_riverpod.dart';

class NavbarProviderModel {
  final bool hide;

  NavbarProviderModel({required this.hide});

  NavbarProviderModel copyWith({
    bool? hide
  }) {
    return NavbarProviderModel(hide: hide ?? this.hide);
  }
}

class NavbarProvider extends StateNotifier<NavbarProviderModel> {
  NavbarProvider() : super(NavbarProviderModel(hide: false));

  void hide() {
    state = state.copyWith(hide: !state.hide);
  }
}

final navbarProvider = StateNotifierProvider<NavbarProvider, NavbarProviderModel>((ref) => NavbarProvider());