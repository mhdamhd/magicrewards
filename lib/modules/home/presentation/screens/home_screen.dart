import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gradient_borders/gradient_borders.dart';
import 'package:magic_rewards/core/constants/app_colors.dart';
import 'package:magic_rewards/core/constants/app_gradient.dart';
import 'package:magic_rewards/core/core_compoent/app_avatar.dart';
import 'package:magic_rewards/core/core_compoent/custom_appbar.dart';
import 'package:magic_rewards/core/core_compoent/empty_component.dart';
import 'package:magic_rewards/core/core_compoent/failuer_component.dart';
import 'package:magic_rewards/core/core_compoent/loading_compoent.dart';
import 'package:magic_rewards/core/extensions/theme_extensions/text_theme_extension.dart';
import 'package:magic_rewards/core/paths/images_paths.dart';
import 'package:magic_rewards/core/services/cache_storage_services.dart';
import 'package:magic_rewards/core/services/service_locator.dart';
import 'package:magic_rewards/core/utils/base_state.dart';
import 'package:magic_rewards/generated/l10n.dart';
import 'package:magic_rewards/modules/home/domin/entities/home_entity.dart';
import 'package:magic_rewards/modules/home/presentation/blocs/home_bloc/home_bloc.dart';
import 'package:magic_rewards/modules/home/presentation/components/offer_wall_card.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  final RefreshController refreshController = RefreshController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<HomeBloc>(),
      child: BlocBuilder<HomeBloc, BaseState<HomeEntity>>(
        builder: (context, state) {
          if (state.isInit) _getHome(context);
          if (state.isError) {
            return FailureComponent(
                failure: state.failure, retry: () => _getHome(context));
          }
          return Scaffold(
            appBar: CustomAppBar(
              title: Row(
                children: [
                  const AppAvatar(),
                  const SizedBox(width: 10),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(S.of(context).welome, style: context.f12700),
                      Text("@${CacheStorageServices().username}",
                          style: context.f10500)
                    ],
                  ),
                ],
              ),
              actions: [
                SizedBox(
                  height: 50.w,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Row(
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 30.w, vertical: 5.w),
                            decoration: BoxDecoration(
                                color: AppColors.blue,
                                borderRadius: BorderRadius.circular(25)),
                            child: Text(
                              state.isSuccess
                                  ? (state.data?.balance ?? '-')
                                  : '--',
                              style: context.f12600,
                            ),
                          ),
                          SizedBox(width: 10.w),
                        ],
                      ),
                      PositionedDirectional(
                          end: 0,
                          // top: 0,
                          child: Image.asset(ImagesPaths.coinPng, width: 32.w)),
                    ],
                  ),
                ),
                SizedBox(width: 20.w)
              ],
            ),
            body: state.isLoading
                ? const LoadingComponent()
                : SmartRefresher(
                    controller: refreshController,
                    onRefresh: () =>
                        context.read<HomeBloc>().add(const FetchHomeEvent()),
                    child: ListView(
                      children: state.isSuccess &&
                              state.data!.offerWalls.isEmpty
                          ? [const EmptyComponent()]
                          : [
                              const SizedBox(height: 10),

                              ///todo implement popular
                              // buildTitle(context,
                              //     title: S.of(context).popular,
                              //     icon: const Icon(Icons.favorite,
                              //         color: Colors.white)),
                              // const SizedBox(height: 10),
                              // SizedBox(
                              //   height: 200,
                              //   child: ListView(
                              //     scrollDirection: Axis.horizontal,
                              //     children: List.generate(
                              //         5, (index) => buildPopularWidget(context)),
                              //   ),
                              // ),
                              // const SizedBox(height: 10),
                              // buildTitle(context,
                              //     title: S.of(context).tasks,
                              //     icon: SvgPicture.asset(ImagesPaths.tasksSvg, width: 25.w,)),
                              // const SizedBox(height: 10),
                              // const TasksCard(),
                              const SizedBox(height: 10),
                              buildTitle(context,
                                  title: S.of(context).providers,
                                  icon: Icon(Icons.favorite,
                                      size: 25.w, color: Colors.white)),
                              const SizedBox(height: 10),
                              GridView.count(
                                shrinkWrap: true,
                                primary: false,
                                crossAxisCount: 2,
                                childAspectRatio: 9 / 10,
                                physics: const NeverScrollableScrollPhysics(),
                                children: state.data?.offerWalls
                                        .map((e) => OfferWallCard(
                                              offerWall: e,
                                              index: state.data!.offerWalls
                                                  .indexOf(e),
                                            ))
                                        .toList() ??
                                    [],
                              ),
                              const SizedBox(height: 30),
                            ],
                    ),
                  ),
          );

          return const SizedBox();
        },
      ),
    );
  }

  void _getHome(BuildContext context) {
    context.read<HomeBloc>().add(const FetchHomeEvent());
  }

  Row buildTitle(BuildContext context,
      {required String title, required Widget icon}) {
    return Row(
      children: [
        const SizedBox(width: 20),
        icon,
        const SizedBox(width: 5),
        Text(title, style: context.f12400),
      ],
    );
  }

  Widget buildPopularWidget(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      width: 200,
      child: Column(
        children: [
          Image.asset(ImagesPaths.tiktokPng),
          Container(
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                  bottomRight: Radius.circular(16),
                  bottomLeft: Radius.circular(16)),
              gradient: AppGradients.blue1Gradient,
              border: GradientBoxBorder(
                gradient: AppGradients.blueGradient,
                width: 2,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Row(
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Tiktok", style: context.f10600),
                      Text("Revlum", style: context.f8400)
                    ],
                  ),
                  const Spacer(),
                  Image.asset(ImagesPaths.coinPng, width: 20.w),
                  const SizedBox(width: 5),
                  Text("14.12", style: context.f10600),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
