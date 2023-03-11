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
import 'package:valorant_app/presentation/bloc/valorant_state.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                context.read<ValorantBuddiesBloc>().getBuddies();
              },
              child: Text('getBuddies'),
            ),
            TextButton(
              onPressed: () {
                context.read<ValorantBunddleBloc>().getBunddles();
              },
              child: Text('getBunddles'),
            ),
            TextButton(
              onPressed: () {
                context.read<ValorantCeremonyBloc>().getCeremonies();
              },
              child: Text('getCeremonies'),
            ),
            TextButton(
              onPressed: () {
                context
                    .read<ValorantCompetetiveTiersBloc>()
                    .getCompetetiveTiers();
              },
              child: Text('getCompetetiveTiers'),
            ),
            TextButton(
              onPressed: () {
                context.read<ValorantContentTiersBloc>().getContentTiers();
              },
              child: Text('getContentTiers'),
            ),
            TextButton(
              onPressed: () {
                context.read<ValorantContractsBloc>().getContracts();
              },
              child: Text('getContracts'),
            ),
            TextButton(
              onPressed: () {
                context.read<ValorantMapsBloc>().getMaps();
              },
              child: Text('getMaps'),
            ),
            TextButton(
              onPressed: () {
                context.read<ValorantAgentsBloc>().getAgents();
              },
              child: Text('getAgents'),
              // child: BlocBuilder<ValorantBloc, ValorantState>(
              //   builder: (context, state) {
              //     if (state is ValorantLoading) {
              //       return const Center(child: CircularProgressIndicator());
              //     } else if (state is ValorantHasData) {
              //       return Column(
              //         children: [
              //           Text('getAgents'),
              //           Expanded(
              //             child: ListView.builder(
              //               itemBuilder: (context, index) {
              //                 return Column(
              //                   children: [
              //                     Image.network(
              //                         state.result[index].displayIcon),
              //                     Text(state.result[index].displayName),
              //                   ],
              //                 );
              //               },
              //               itemCount: state.result.length,
              //             ),
              //           ),
              //         ],
              //       );
              //     }

              //     return TextButton(
              //         child: Text('dsdsds'),
              //         onPressed: () {
              //           context.read<ValorantBloc>().getAgents();
              //         });
              //   },
              // ),
            ),
          ],
        ),
      ),
    );
  }
}
