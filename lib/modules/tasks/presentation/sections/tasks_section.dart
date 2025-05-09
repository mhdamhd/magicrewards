import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:magic_rewards/core/core_compoent/empty_component.dart';
import 'package:magic_rewards/core/core_compoent/failuer_component.dart';
import 'package:magic_rewards/core/core_compoent/loading_compoent.dart';
import 'package:magic_rewards/core/services/service_locator.dart';
import 'package:magic_rewards/core/utils/base_state.dart';
import 'package:magic_rewards/modules/tasks/dmain/entities/tasks_entity.dart';
import 'package:magic_rewards/modules/tasks/presentation/blocs/tasks_bloc/tasks_bloc.dart';
import 'package:magic_rewards/modules/tasks/presentation/components/task_card.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class TasksSection extends StatelessWidget {
  TasksSection({Key? key}) : super(key: key);

  final RefreshController refreshController = RefreshController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => sl<TasksBloc>(),
        child: BlocBuilder<TasksBloc, BaseState<TasksEntity>>(
          builder: (context, state) {
            if (state.isInit) getTasks(context);
            if (state.isLoading) {
              return const LoadingComponent();
            }
            if (state.isError) {
              return FailureComponent(
                failure: state.failure,
                retry: () => getTasks(context),
              );
            }
            if (state.isSuccess) {
              return SmartRefresher(
                controller: refreshController,
                onRefresh: () =>
                    context.read<TasksBloc>().add(const FetchTasksEvent()),
                child: ListView(
                  children: (state.data?.tasks.isEmpty ?? true)
                      ? [const EmptyComponent()]
                      : [
                          const SizedBox(height: 10),
                          ...state.data?.tasks
                                  .map((e) => TaskCard(task: e))
                                  .toList() ??
                              [],
                          const SizedBox(height: 100),
                        ],
                ),
              );
            }
            return const SizedBox();
          },
        ));
  }

  void getTasks(BuildContext context) {
    context.read<TasksBloc>().add(const FetchTasksEvent());
  }
}
