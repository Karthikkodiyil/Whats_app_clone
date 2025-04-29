import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:whatsapp_clone/features/home/presentation/bloc/local/chat/chat_bloc.dart';
import 'package:whatsapp_clone/features/home/presentation/bloc/local/chat/chat_event.dart';
import 'package:whatsapp_clone/features/home/presentation/bloc/local/home_bloc/home_bloc.dart';
import 'package:whatsapp_clone/features/splash_screen/presentation/pages/splash_page.dart';
import 'package:whatsapp_clone/injection_container.dart';

void main() async {
  await initializeDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
         BlocProvider<HomeBloc>(create: (_) => HomeBloc()),
        BlocProvider<ChatBloc>(create: (_)=> sl()..add((EventGetChat(0)))),
      ],
      child: const MaterialApp(
        home: SplashPage(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
