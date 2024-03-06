import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'main.g.dart';
part 'main.freezed.dart';

@freezed
class FreezedMapWrapper<T, A> with _$FreezedMapWrapper {
  const factory FreezedMapWrapper({
    required Map<T, A> map,
  }) = _FreezedMapWrapper;
}

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
  FreezedMapWrapper<String, String> build() {
    return const FreezedMapWrapper(map: {});
  }

  void update(Map<String, String> newValue) {
    state = FreezedMapWrapper(map: {...newValue});
  }
}

@riverpod
Map<String, String> mapProvider(MapProviderRef ref) {
  return ref.watch(mapStateNotifierProvider);
}

@riverpod
FreezedMapWrapper<String, String> mapFreezedProvider(
    MapFreezedProviderRef ref) {
  return ref.watch(mapFreezedStateNotifierProvider);
}

void main() {
  runApp(const ProviderScope(
    child: MyApp(),
  ));
}

class MyHome extends HookConsumerWidget {
  const MyHome({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final map = ref.watch(
        mapProviderProvider); //// <<<< This is the provider that return normal Map
    final mapFreezed = ref.watch(
        mapFreezedProviderProvider); //// <<<< This is the provider that return freezed Map
    final controller = useTextEditingController();

    const snackBar = SnackBar(content: Text('Rebuilding Widget'));

    ref.listen(mapProviderProvider, (before, after) {
      ScaffoldMessenger.of(context).hideCurrentSnackBar();
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    });

    ref.listen(mapFreezedProviderProvider, (before, after) {
      ScaffoldMessenger.of(context).hideCurrentSnackBar();
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    });

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Map',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Text(map.toString()),
          const Text(
            'Freezed Map',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Text(mapFreezed.toString()),
          const Divider(),
          TextField(
            controller: controller,
          ),
          const Divider(),
          ElevatedButton(
            onPressed: () {
              ref
                  .read(mapStateNotifierProvider.notifier)
                  .update({'1': controller.text});
            },
            child: const Text('Update Map Value'),
          ),
          ElevatedButton(
            onPressed: () {
              ref
                  .read(mapFreezedStateNotifierProvider.notifier)
                  .update({'1': controller.text});
            },
            child: const Text('Update Freezed Map Value'),
          ),
        ],
      ),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  int? test() {
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Scaffold(
        body: MyHome(),
      ),
    );
  }
}
