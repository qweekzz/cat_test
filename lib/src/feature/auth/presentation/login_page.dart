import 'package:auto_route/auto_route.dart';
import 'package:car_test/src/core/extension/extensions.dart';
import 'package:car_test/src/core/router/router.dart';
import 'package:car_test/src/feature/auth/bloc/auth_bloc.dart';
import 'package:car_test/src/feature/profile/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@immutable
@RoutePage<void>()
class LoginPage extends StatefulWidget {
  const LoginPage({
    Key? key,
  }) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late final AuthBloc dataBloc;

  @override
  void initState() {
    super.initState();
    dataBloc = BlocProvider.of<AuthBloc>(context);
    dataBloc.add(AuthEvent.started(context));
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => BlocBuilder<AuthBloc, AuthState>(
        builder: (context, state) => state.maybeMap(
          orElse: _BodyLayout.new,
          authSuccess: (value) => const ProfilePage(),
        ),
      );
}

@immutable
class _BodyLayout extends StatelessWidget {
  const _BodyLayout({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => AutoTabsRouter.tabBar(
        routes: const [
          LoginTab(),
          RegisterTab(),
        ],
        builder: (context, child, tabController) => Scaffold(
          appBar: TabAppBar(tabController: tabController),
          body: child,
        ),
      );
}

class TabAppBar extends StatelessWidget implements PreferredSizeWidget {
  final TabController tabController;

  const TabAppBar({
    required this.tabController,
    super.key,
  });

  @override
  Size get preferredSize => const Size.fromHeight(48); // Высота AppBar

  @override
  Widget build(BuildContext context) => AppBar(
        surfaceTintColor: context.theme.colors.background,
        bottom: TabBar(
          controller: tabController,
          onTap: (index) => FocusScope.of(context).unfocus(),
          indicatorPadding: const EdgeInsets.only(bottom: 1),
          tabs: const [
            Tab(
              child: Padding(
                padding: EdgeInsets.only(top: 12, bottom: 14),
                child: Text('Войти'),
              ),
            ),
            Tab(
              child: Padding(
                padding: EdgeInsets.only(top: 12, bottom: 14),
                child: Text('Регистрация'),
              ),
            ),
          ],
        ),
      );
}
