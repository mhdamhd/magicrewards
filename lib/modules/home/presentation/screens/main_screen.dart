import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:magic_rewards/core/constants/app_colors.dart';
import 'package:magic_rewards/core/constants/app_gradient.dart';
import 'package:magic_rewards/core/constants/app_shadow.dart';
import 'package:magic_rewards/core/core_compoent/app_scaffold.dart';
import 'package:magic_rewards/core/paths/images_paths.dart';
import 'package:magic_rewards/core/services/service_locator.dart';
import 'package:magic_rewards/generated/l10n.dart';
import 'package:magic_rewards/modules/home/presentation/screens/home_screen.dart';
import 'package:magic_rewards/modules/profile/presentation/blocs/delete_account_bloc/delete_account_bloc.dart';
import 'package:magic_rewards/modules/profile/presentation/blocs/profile_bloc/profile_bloc.dart';
import 'package:magic_rewards/modules/profile/presentation/screens/profile_screen.dart';
import 'package:magic_rewards/modules/rewards/presentation/screens/redeem_screen.dart';
import 'package:magic_rewards/modules/tasks/presentation/screens/tasks_screen.dart';
import 'package:magic_rewards/modules/top_users/presentation/screens/top_users_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentIndex = 0;

  void changeScreen(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  final bottomNavBarItems = [
    BottomNavigationBarItem(
        icon: SvgPicture.asset(ImagesPaths.navbarIcons[0]),
        activeIcon: SvgPicture.asset(ImagesPaths.navbarIcons[0],
            color: AppColors.primary),
        label: S.current.home,
        backgroundColor: Colors.transparent
        // backgroundColor: AppColors.lightBlack.withOpacity(0.75)
        ),
    BottomNavigationBarItem(
        icon: SvgPicture.asset(ImagesPaths.navbarIcons[1]),
        activeIcon: SvgPicture.asset(ImagesPaths.navbarIcons[1],
            color: AppColors.primary),
        label: S.current.topUsers,
        backgroundColor: Colors.transparent
        // backgroundColor: AppColors.lightBlack.withOpacity(0.5)
        ),
    BottomNavigationBarItem(
        icon: SvgPicture.asset(ImagesPaths.navbarIcons[2]),
        activeIcon: SvgPicture.asset(ImagesPaths.navbarIcons[2],
            color: AppColors.primary),
        label: S.current.tasks,
        backgroundColor: Colors.transparent),
    BottomNavigationBarItem(
        icon: SvgPicture.asset(ImagesPaths.navbarIcons[3]),
        activeIcon: SvgPicture.asset(ImagesPaths.navbarIcons[3],
            color: AppColors.primary),
        label: S.current.redeem,
        backgroundColor: Colors.transparent),
    BottomNavigationBarItem(
        icon: SvgPicture.asset(ImagesPaths.navbarIcons[4]),
        activeIcon: SvgPicture.asset(ImagesPaths.navbarIcons[4],
            color: AppColors.primary),
        label: S.current.profile,
        backgroundColor: Colors.transparent),
  ];

  final List screens = [
    HomeScreen(),
    const TopUsersScreen(),
    const TasksScreen(),
    const RedeemScreen(),
    MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => sl<ProfileBloc>(),
        ),
        BlocProvider(
          create: (_) => sl<DeleteAccountBloc>(),
        ),
      ],
      child: ProfileScreen(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      extendBody: true,
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(16), topLeft: Radius.circular(16)),
        ),
        child: Container(
          decoration: BoxDecoration(
            gradient: AppGradients.blackGradient,
            borderRadius: const BorderRadius.only(
                topRight: Radius.circular(16), topLeft: Radius.circular(16)),
            boxShadow: [AppShadows.blackShadow],
          ),
          child: ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(16),
              topRight: Radius.circular(16),
            ),
            child: BottomNavigationBar(
              backgroundColor: Colors.transparent,
              type: BottomNavigationBarType.fixed,
              selectedItemColor: AppColors.primary,
              unselectedItemColor: AppColors.white,
              currentIndex: currentIndex,
              elevation: 0,
              items: bottomNavBarItems,
              onTap: changeScreen,
            ),
          ),
        ),
      ),
      body: screens[currentIndex],
    );
  }
}
