import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_playground/equal_map_wrapper/equal_map_wrapper.dart';

part 'main.g.dart';

@riverpod
class MapStateNotifier extends _$MapStateNotifier {
  @override
  Map<String, String> build() {
    return {};
  }

  void update(Map<String, String> newValue) {
    state = {...newValue};
  }
}

@riverpod
class MapFreezedStateNotifier extends _$MapFreezedStateNotifier {
  @override
  EqualMapWrapper<String, String> build() {
    return const EqualMapWrapper(map: {});
  }

  void update(Map<String, String> newValue) {
    state = EqualMapWrapper(map: {...newValue});
  }
}

@riverpod
Map<String, String> mapProvider(MapProviderRef ref) {
  return ref.watch(mapStateNotifierProvider);
}

@riverpod
EqualMapWrapper<String, String> mapFreezedProvider(MapFreezedProviderRef ref) {
  return ref.watch(mapFreezedStateNotifierProvider);
}

void main() {
  runApp(const ProviderScope(
    child: MyApp(),
  ));
}

class MyHomePage extends HookConsumerWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final map = ref.watch(mapProviderProvider);
    final map = ref.watch(mapFreezedProviderProvider);
    final controller = useTextEditingController();

    print(map);
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextField(
          controller: controller,
        ),
        ElevatedButton(
          onPressed: () {
            ref
                .read(mapFreezedStateNotifierProvider.notifier)
                .update({'1': controller.text});
            ref
                .read(mapStateNotifierProvider.notifier)
                .update({'1': controller.text});
          },
          child: const Text('Update Value'),
        ),
      ],
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  int? test() {
    return null;
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Scaffold(
        body: MyHomePage(),
      ),
    );
  }
}
