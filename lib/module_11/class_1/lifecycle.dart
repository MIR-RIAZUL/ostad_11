import 'package:flutter/material.dart';

class lifecyle extends StatefulWidget {
  const lifecyle({super.key});

  @override
  State<lifecyle> createState() => _lifecyleState();
}

class _lifecyleState extends State<lifecyle> {
  @override
  void initState() {
    super.initState();
    print("Init State");
  }

  @override
  void deactivate() {
    super.deactivate();
    print("Deactivate");
  }

  @override
  void dispose() {
    super.dispose();
    print("Dispose");
  }

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class test extends StatelessWidget {
  const test({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
