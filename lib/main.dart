// Package Imports
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// Internal Imports
import 'theme/dark_theme.dart';
import 'theme/light_theme.dart';
import 'providers/theme_provider.dart';
import 'utilities/helper_widgets.dart';
import 'widgets/action_switch.dart';

void main() {
  runApp(const ProviderScope(child: App()));
}

class App extends ConsumerWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var themeMode = ref.watch(themeManagerProvider);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Themeing Demo',
      darkTheme: darkTheme,
      theme: lightTheme,
      themeMode: themeMode,
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextTheme _textTheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Theming Demo'),
        centerTitle: false,
        actions: const [
          ActionSwitch(),
        ],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/profile_pic.png',
                width: 200,
                height: 200,
              ),
              const Spacing.vertical(10),
              Text(
                'Your Name',
                style: _textTheme.headlineMedium,
              ),
              const Spacing.vertical(10),
              Text(
                '@yourusername',
                style: _textTheme.titleMedium,
              ),
              const Spacing.vertical(10),
              const Text('This is a simple Status'),
              const Spacing.vertical(20),
              const TextField(),
              const Spacing.vertical(20),
              ElevatedButton(
                onPressed: () {},
                child: const Text('Just Click'),
              ),
              const Spacing.vertical(20),
              ElevatedButton(
                onPressed: () {},
                child: const Text('Click Me'),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: Theme(
        data: Theme.of(context).copyWith(splashColor: Colors.blue),
        child: FloatingActionButton(
          onPressed: () {},
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
