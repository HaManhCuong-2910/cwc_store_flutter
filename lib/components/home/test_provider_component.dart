import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

// We create a "provider", which will store a value (here "Hello world").
// By using a provider, this allows us to mock/override the value exposed.
final helloWorldProvider = StateProvider((ref) => 'Hello world 123');

class TestProviderComponent extends HookConsumerWidget {
  const TestProviderComponent({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final String value = ref.watch(helloWorldProvider);
    return Column(children: [
      Text(
        value,
        style: const TextStyle(fontSize: 20.0),
      ),
      Container(
        margin: const EdgeInsets.only(top: 10.0),
        child: ElevatedButton(
            onPressed: () {
              ref.read(helloWorldProvider.notifier).state = 'change state';
            },
            child: const Text('change state')),
      )
    ]);
  }
}
