import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage() 

class {{feature_name.pascalCase()}}Screen extends StatefulWidget {
  const {{feature_name.pascalCase()}}Screen({super.key});

  @override
  State<{{feature_name.pascalCase()}}Screen> createState() => _{{feature_name.pascalCase()}}ScreenState();
}

class _{{feature_name.pascalCase()}}ScreenState extends State<{{feature_name.pascalCase()}}Screen>{
 
  @override
  void initState() {
    super.initState();
   }

  @override
  void dispose() {
     super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
} 

