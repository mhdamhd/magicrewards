import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:magic_rewards/core/core_compoent/app_scaffold.dart';
import 'package:magic_rewards/core/core_compoent/custom_appbar.dart';
import 'package:magic_rewards/core/core_compoent/empty_component.dart';
import 'package:magic_rewards/core/core_compoent/failuer_component.dart';
import 'package:magic_rewards/core/core_compoent/loading_compoent.dart';
import 'package:magic_rewards/core/utils/base_state.dart';
import 'package:magic_rewards/generated/l10n.dart';
import 'package:magic_rewards/modules/rewards/domain/entities/transactions_entity.dart';
import 'package:magic_rewards/modules/rewards/presentation/blocs/transactions_bloc/transactions_bloc.dart';
import 'package:magic_rewards/modules/rewards/presentation/components/transaction_card.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class TransactionsScreen extends StatelessWidget {
  final RefreshController refreshController = RefreshController();

  TransactionsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      appBar: CustomAppBar(titleText: S.of(context).history, withBack: true),
      body: BlocBuilder<TransactionsBloc, BaseState<TransactionsEntity>>(
        builder: (context, state) {
          if (state.isInit) getTransactions(context);
          if (state.isLoading) return const LoadingComponent();
          if (state.isError) return FailureComponent(failure: state.failure);
          if (state.isSuccess) {
            return SmartRefresher(
              controller: refreshController,
              onRefresh: () => getTransactions(context),
              child: ListView(
                children: state.data?.orders.isEmpty ?? true
                    ? [const EmptyComponent()]
                    : [
                        const SizedBox(height: 10),
                        ...state.data?.orders
                                .map((e) => TransactionCard(transaction: e))
                                .toList() ??
                            [],
                        const SizedBox(height: 100),
                      ],
              ),
            );
          }
          return const SizedBox();
        },
      ),
    );
  }

  void getTransactions(BuildContext context) {
    context.read<TransactionsBloc>().add(const FetchTransactionsEvent());
  }
}
