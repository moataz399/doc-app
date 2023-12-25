import 'package:base_project/core/routing/app_router.dart';
import 'package:base_project/doc_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'core/di/dependency_injection.dart';
import 'core/helpers/bloc_observer.dart';

void main() {
  setUpGetIt();
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = MyBlocObserver();
  runApp(DocApp(appRouter: AppRouter()));
}
