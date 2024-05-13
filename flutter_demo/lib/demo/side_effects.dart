import 'package:flutter/cupertino.dart';
import 'package:flutter_styled_toast/flutter_styled_toast.dart';

class SideEffects extends StatefulWidget {
  const SideEffects({super.key});

  @override
  State<StatefulWidget> createState() => _SideEffectsState();
}

class _SideEffectsState extends State<SideEffects> {
  @override
  void initState() {
    super.initState();
    triggerSideEffect();
  }

  void triggerSideEffect() async {
    await Future.delayed(const Duration(milliseconds: 1500));
    if (mounted) {
      showToast('Side effect triggered!', context: context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(8.0),
      child: Text('Side effect will be triggered after 1500ms.'),
    );
  }
}