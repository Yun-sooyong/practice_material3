import 'package:flutter/material.dart';
import 'package:practice_material3/conatainer_box.dart';
import 'package:practice_material3/seed_color.dart';
import 'package:provider/provider.dart';
import 'package:random_color/random_color.dart';

void main() {
  runApp(
    ChangeNotifierProvider<Colored>(
      create: (_) => Colored(),
      child: const MaterialColorPractice(),
    ),
  );
}

class MaterialColorPractice extends StatefulWidget {
  const MaterialColorPractice({Key? key}) : super(key: key);

  @override
  State<MaterialColorPractice> createState() => _MaterialColorPracticeState();
}

//Color seedColor = const Color(0xff348feb);

class _MaterialColorPracticeState extends State<MaterialColorPractice> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme:
            ColorScheme.fromSeed(seedColor: context.watch<Colored>().seedColor),
        brightness: Brightness.light,
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeState();
}

class _HomeState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text('Material Color'),
      ),
      body: SafeArea(
        child: AnimatedContainer(
          color: Theme.of(context).colorScheme.primary,
          duration: const Duration(milliseconds: 200),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                      'now seedColor is ${context.watch<Colored>().seedColor}'),
                ),
                ElevatedButton(
                  onPressed: () {
                    context.read<Colored>().changeColor();
                  },
                  child: const Text('color change'),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        ContainerBox(
                          color: Theme.of(context).colorScheme.onBackground,
                          title: 'onBackground',
                          fontlight: true,
                        ),
                        ContainerBox(
                          color: Theme.of(context).colorScheme.onError,
                          title: 'onError',
                          fontlight: false,
                        ),
                        ContainerBox(
                          color: Theme.of(context).colorScheme.onErrorContainer,
                          title: 'onErrorContainer',
                          fontlight: true,
                        ),
                        ContainerBox(
                          color: Theme.of(context).colorScheme.onInverseSurface,
                          title: 'onInverseSurface',
                          fontlight: false,
                        ),
                        ContainerBox(
                          color: Theme.of(context).colorScheme.onPrimary,
                          title: 'onPrimary',
                          fontlight: false,
                        ),
                        ContainerBox(
                          color:
                              Theme.of(context).colorScheme.onPrimaryContainer,
                          title: 'onPrimaryContainer',
                          fontlight: true,
                        ),
                        ContainerBox(
                          color: Theme.of(context).colorScheme.onSecondary,
                          title: 'onSecondary',
                          fontlight: false,
                        ),
                        ContainerBox(
                          color: Theme.of(context)
                              .colorScheme
                              .onSecondaryContainer,
                          title: 'onSecondaryContainer',
                          fontlight: true,
                        ),
                        ContainerBox(
                          color: Theme.of(context).colorScheme.onSurface,
                          title: 'onSurface',
                          fontlight: true,
                        ),
                        ContainerBox(
                          color: Theme.of(context).colorScheme.onSurfaceVariant,
                          title: 'onSurfaceVariant',
                          fontlight: true,
                        ),
                        ContainerBox(
                          color: Theme.of(context).colorScheme.onTertiary,
                          title: 'onTertiary',
                          fontlight: false,
                        ),
                        ContainerBox(
                          color:
                              Theme.of(context).colorScheme.onTertiaryContainer,
                          title: 'onTertiaryContainer',
                          fontlight: true,
                        ),
                        const ContainerBox(
                          color: Colors.transparent,
                          title: '',
                          fontlight: true,
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        ContainerBox(
                          color: Theme.of(context).colorScheme.background,
                          title: 'background',
                          fontlight: false,
                        ),
                        ContainerBox(
                          color: Theme.of(context).colorScheme.error,
                          title: 'error',
                          fontlight: true,
                        ),
                        ContainerBox(
                          color: Theme.of(context).colorScheme.errorContainer,
                          title: 'errorContainer',
                          fontlight: false,
                        ),
                        ContainerBox(
                          color: Theme.of(context).colorScheme.inverseSurface,
                          title: 'inverseSurface',
                          fontlight: true,
                        ),
                        ContainerBox(
                          color: Theme.of(context).colorScheme.primary,
                          title: 'primary',
                          fontlight: true,
                        ),
                        ContainerBox(
                          color: Theme.of(context).colorScheme.primaryContainer,
                          title: 'primaryContainer',
                          fontlight: false,
                        ),
                        ContainerBox(
                          color: Theme.of(context).colorScheme.secondary,
                          title: 'secondary',
                          fontlight: true,
                        ),
                        ContainerBox(
                          color:
                              Theme.of(context).colorScheme.secondaryContainer,
                          title: 'secondaryContainer',
                          fontlight: false,
                        ),
                        ContainerBox(
                          color: Theme.of(context).colorScheme.surface,
                          title: 'surface',
                          fontlight: false,
                        ),
                        ContainerBox(
                          color: Theme.of(context).colorScheme.surfaceVariant,
                          title: 'surfaceVariant',
                          fontlight: false,
                        ),
                        ContainerBox(
                          color: Theme.of(context).colorScheme.tertiary,
                          title: 'tertiary',
                          fontlight: false,
                        ),
                        ContainerBox(
                          color:
                              Theme.of(context).colorScheme.tertiaryContainer,
                          title: 'tertiaryContainer',
                          fontlight: false,
                        ),
                        ContainerBox(
                          color: Theme.of(context).colorScheme.inversePrimary,
                          title: 'inversePrimary',
                          fontlight: false,
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
