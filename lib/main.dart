import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:valorant_app/presentation/bloc/valorant_agents_bloc/valorant_agents_bloc.dart';
import 'package:valorant_app/presentation/bloc/valorant_bloc.dart';
import 'package:valorant_app/presentation/bloc/valorant_buddies_bloc/valorant_buddies_bloc.dart';
import 'package:valorant_app/presentation/bloc/valorant_bunddles_bloc/valorant_bunddle_bloc.dart';
import 'package:valorant_app/presentation/bloc/valorant_ceremony_bloc/valorant_ceremony_bloc.dart';
import 'package:valorant_app/presentation/bloc/valorant_competetive_tiers_bloc/valorant_competetive_tiers_bloc.dart';
import 'package:valorant_app/presentation/bloc/valorant_content_tiers_bloc/valorant_content_tiers_bloc.dart';
import 'package:valorant_app/presentation/bloc/valorant_contracts_bloc/valorant_contracts_bloc.dart';
import 'package:valorant_app/presentation/bloc/valorant_maps_bloc/valorant_maps_bloc.dart';
import 'package:valorant_app/presentation/pages/main_screen.dart';
import 'injector.dart' as di;

void main() {
  di.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => di.locator<ValorantAgentsBloc>(),
        ),
        BlocProvider(
          create: (_) => di.locator<ValorantBuddiesBloc>(),
        ),
        BlocProvider(
          create: (_) => di.locator<ValorantBunddleBloc>(),
        ),
        BlocProvider(
          create: (_) => di.locator<ValorantCeremonyBloc>(),
        ),
        BlocProvider(
          create: (_) => di.locator<ValorantCompetetiveTiersBloc>(),
        ),
        BlocProvider(
          create: (_) => di.locator<ValorantContentTiersBloc>(),
        ),
        BlocProvider(
          create: (_) => di.locator<ValorantContractsBloc>(),
        ),
        BlocProvider(
          create: (_) => di.locator<ValorantMapsBloc>(),
        ),
      ],
      child: MaterialApp(
        title: 'Valorant App',
        theme: ThemeData(),
        home: MainScreen(),
      ),
    );
  }
}
