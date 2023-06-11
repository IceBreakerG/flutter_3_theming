// Package Imports
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// Inteernal Imports
import '../providers/theme_provider.dart';

class ActionSwitch extends ConsumerWidget {
  const ActionSwitch({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var themeState = ref.watch(themeStateProvider);

    return Switch(
      value: themeState,
      onChanged: (bool value) {
        ref.read(themeStateProvider.notifier).toggleState();
      },
    );
  }
}
