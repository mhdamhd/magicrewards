import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:magic_rewards/core/core_compoent/custom_appbar.dart';
import 'package:magic_rewards/core/core_compoent/empty_component.dart';
import 'package:magic_rewards/core/core_compoent/failuer_component.dart';
import 'package:magic_rewards/core/core_compoent/loading_compoent.dart';
import 'package:magic_rewards/core/services/service_locator.dart';
import 'package:magic_rewards/core/utils/base_state.dart';
import 'package:magic_rewards/generated/l10n.dart';
import 'package:magic_rewards/modules/live_offers/domain/entities/live_offer_entity.dart';
import 'package:magic_rewards/modules/live_offers/presentation/blocs/live_offers_bloc/live_offers_bloc.dart';
import 'package:magic_rewards/modules/live_offers/presentation/components/live_offer_component.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class LiveOffersScreen extends StatelessWidget {
  LiveOffersScreen({Key? key}) : super(key: key);

  final RefreshController _refreshController = RefreshController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        titleText: S.of(context).liveOffers,
      ),
      body: BlocProvider(
        create: (context) => sl<LiveOffersBloc>(),
        child: BlocBuilder<LiveOffersBloc, BaseState<LiveOffersEntity>>(
          builder: (context, state) {
            if (state.isInit) getLiveOffers(context);
            if (state.isLoading) return const LoadingComponent();
            if (state.isError) return FailureComponent(failure: state.failure);
            if (state.isSuccess) {
              _refreshController.loadComplete();
              _refreshController.refreshCompleted();
              return SmartRefresher(
                controller: _refreshController,
                onRefresh: () => getLiveOffers(context, refresh: true),
                onLoading: () => getLiveOffers(context),
                enablePullUp: true,
                footer: const ClassicFooter(height: 200),
                child: ListView(
                  children: (state.data?.liveOffers.isEmpty ?? true)
                      ? [const EmptyComponent()]
                      : (state.data!.liveOffers
                          .map((e) => LiveOfferComponent(liveOffer: e))
                          .toList()),
                ),
              );
            }
            return const SizedBox();
          },
        ),
      ),
    );
  }

  void getLiveOffers(BuildContext context, {bool refresh = false}) {
    context.read<LiveOffersBloc>().add(FetchLiveOffersEvent(refresh: refresh));
  }
}
