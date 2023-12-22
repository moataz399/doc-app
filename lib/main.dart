import 'package:base_project/core/routing/app_router.dart';
import 'package:base_project/doc_app.dart';
import 'package:flutter/material.dart';

import 'core/di/dependency_injection.dart';

void main() {
  setUpGetIt();
  WidgetsFlutterBinding.ensureInitialized();
  runApp(DocApp(appRouter: AppRouter()));
}
