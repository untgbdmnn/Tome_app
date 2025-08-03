import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tome_app/providers/navbar_provider.dart';

class ScaffoldWithNavbar extends StatelessWidget {
  const ScaffoldWithNavbar(this.navigationShell, {super.key});

  /// The navigation shell and container for the branch Navigators.
  final StatefulNavigationShell navigationShell;

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (BuildContext context, WidgetRef ref, child) {
        NavbarProviderModel navbarStateProvider = ref.watch(navbarProvider);

        return Scaffold(
          body: navigationShell,
          bottomNavigationBar: Visibility(
            visible: navbarStateProvider.hide == false,
            child: BottomNavigationBar(
              currentIndex: navigationShell.currentIndex,
              type: BottomNavigationBarType.fixed,
              backgroundColor: Theme.of(context).colorScheme.surface,
              selectedLabelStyle: Theme.of(context).textTheme.bodyMedium,
              unselectedLabelStyle: Theme.of(context).textTheme.bodyMedium,
              selectedItemColor: Theme.of(context).colorScheme.primary,
              unselectedItemColor: Theme.of(context).colorScheme.onSurface,
              items: <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: navigationShell.currentIndex == 0
                      ? Icon(
                          Icons.home_work,
                          color: Theme.of(context).colorScheme.primary,
                        )
                      : Icon(
                          Icons.home,
                          color: Theme.of(context).colorScheme.onSurface,
                        ),
                  label: 'Beranda',
                ),
                BottomNavigationBarItem(
                  icon: navigationShell.currentIndex == 1
                      ? Icon(
                          Icons.bookmark_added,
                          color: Theme.of(context).colorScheme.primary,
                        )
                      : Icon(
                          Icons.bookmark,
                          color: Theme.of(context).colorScheme.onSurface,
                        ),
                  label: 'Pinjaman',
                ),
                BottomNavigationBarItem(
                  icon: navigationShell.currentIndex == 2
                      ? Icon(
                          Icons.manage_history_sharp,
                          color: Theme.of(context).colorScheme.primary,
                        )
                      : Icon(
                          Icons.history_outlined,
                          color: Theme.of(context).colorScheme.onSurface,
                        ),
                  label: 'Riwayat',
                ),
                BottomNavigationBarItem(
                  icon: navigationShell.currentIndex == 3
                      ? Icon(
                          Icons.person_pin_rounded,
                          color: Theme.of(context).colorScheme.primary,
                        )
                      : Icon(
                          Icons.person,
                          color: Theme.of(context).colorScheme.onSurface,
                        ),
                  label: 'Profil',
                ),
              ],
              onTap: _onTap,
            ),
          ),
        );
      },
    );
  }

  void _onTap(index) {
    navigationShell.goBranch(
      index,
      initialLocation: index == navigationShell.currentIndex,
    );
  }
}
