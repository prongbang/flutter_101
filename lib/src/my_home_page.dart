import 'package:flutter/material.dart';
import 'package:flutter_101/src/asynchronous/asynchronous_page.dart';
import 'package:flutter_101/src/login/user.dart';
import 'package:flutter_101/src/packages/liquid_swipe_page.dart';
import 'package:flutter_101/src/qr_reader/qr_reader_page.dart';
import 'package:flutter_101/src/state/bloc_page.dart';
import 'package:flutter_101/src/state/state_page.dart';
import 'package:flutter_101/src/widgets/_01container/container_page.dart';
import 'package:flutter_101/src/widgets/_02sizedbox/sized_box_page.dart';
import 'package:flutter_101/src/widgets/_03expanded/expanded_page.dart';
import 'package:flutter_101/src/widgets/_04padding/padding_page.dart';
import 'package:flutter_101/src/widgets/_05center/center_page.dart';
import 'package:flutter_101/src/widgets/_06align/align_page.dart';
import 'package:flutter_101/src/widgets/_07layout/layout_page.dart';
import 'package:flutter_101/src/widgets/_08stack/stack_page.dart';
import 'package:flutter_101/src/widgets/_09positioned/positioned_page.dart';
import 'package:flutter_101/src/widgets/_10button/buttons_page.dart';
import 'package:flutter_101/src/widgets/_10button/custom_button.dart';
import 'package:flutter_101/src/widgets/_11card/card_page.dart';
import 'package:flutter_101/src/widgets/_12image/image_page.dart';
import 'package:flutter_101/src/widgets/_13aspectratio/aspect_ratio_page.dart';
import 'package:flutter_101/src/widgets/_14scaffold/scaffold_page.dart';
import 'package:flutter_101/src/widgets/_15appbar/appbar_page.dart';
import 'package:flutter_101/src/widgets/_15appbar/sliver_app_bar_page.dart';
import 'package:flutter_101/src/widgets/_16listview/list_view_page.dart';
import 'package:flutter_101/src/widgets/_17gridview/gridview_page.dart';
import 'package:flutter_101/src/widgets/_18scrolling/single_child_scroll_view_page.dart';
import 'package:flutter_101/src/widgets/_19refresh_indicator/refresh_indicator_page.dart';
import 'package:flutter_101/src/widgets/_20pageview/page_view_page.dart';
import 'package:flutter_101/src/widgets/_21richtext/rich_text_page.dart';
import 'package:flutter_101/src/widgets/_21textfield/text_field_page.dart';
import 'package:flutter_101/src/widgets/_21textfield/text_form_field_page.dart';
import 'package:flutter_101/src/widgets/_22dialog/alert_dialog_page.dart';
import 'package:flutter_101/src/widgets/_22dialog/bottom_sheet_dialog_page.dart';
import 'package:flutter_101/src/widgets/_23bottombar/bottom_navigation_bar_page.dart';
import 'package:flutter_101/src/widgets/_24drawer/drawer_page.dart';
import 'package:flutter_101/src/widgets/_25snackbar/snack_bar_page.dart';
import 'package:flutter_101/src/widgets/_26loading/loading_page.dart';
import 'package:flutter_101/src/widgets/_27checkbox_radio/checkbox_radio_page.dart';
import 'package:flutter_101/src/widgets/_28switch/switch_page.dart';
import 'package:flutter_101/src/widgets/_29date_picker/date_picker_page.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter 101'),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // ContainerPage(),
            // SizedBoxPage(),
            // ExpandedPage(),
            // PaddingPage(),
            // CenterPage(),
            // AlignPage(),
            // LayoutPage(),
            // StackPage(),
            // PositionedPage(),
            // ButtonsPage(),
            // CardPage(),
            // ImagePage(),
            // AspectRatioPage(),
            // _buildScaffoldPageButton(context),
            // _buildAppBarButton(context),
            // _buildSliverAppBarPageButton(context),
            // ListViewPage(),
            // GridViewPage(),
            // _buildSingleChildScrollViewPageButton(context),
            // RefreshIndicatorPage(),
            // PageViewPage(),
            // RichTextPage(),
            // TextFieldPage(),
            // TextFormFieldPage(),
            // AlertDialogPage(),
            // BottomSheetDialogPage(),
            // _buildBottomNavigationBarPageButton(context),
            // _buildDrawerPageButton(context),
            // SnackBarPage(),
            // LoadingPage(),
            // CheckboxRadioPage(),
            // SwitchPage(),
            // DatePickerPage(),
            // _buildNavigatorPageButton(context),
            // _buildLiquidSwipePageButton(context),
            // _buildAsynchronousPageButton(context),
            // _buildStatePageButton(context),
            // _buildBlocPageButton(context),
            // _buildWeChannelPageButton(context),
            // _buildQrReaderPageButton(context),
            // _buildLoginPageButton(context),
            // _buildLogoutButton(context),
          ],
        ),
      ),
    );
  }

  Widget _buildNavigatorPageButton(BuildContext context) {
    return CustomButton(
      text: 'Navigator Page',
      color: Colors.amber,
      onPressed: () {
        Navigator.pushNamed(context, '/navigator');
      },
    );
  }

  Widget _buildDrawerPageButton(BuildContext context) {
    return CustomButton(
      text: 'Drawer Page',
      color: Colors.orange,
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (BuildContext context) => DrawerPage(),
          ),
        );
      },
    );
  }

  Widget _buildBlocPageButton(BuildContext context) {
    return CustomButton(
      text: 'BloC Page',
      color: Colors.deepPurple,
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (BuildContext context) => BlocPage(),
          ),
        );
      },
    );
  }

  Widget _buildStatePageButton(BuildContext context) {
    return CustomButton(
      text: 'State Page',
      color: Colors.blue,
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (BuildContext context) => StatePage(),
          ),
        );
      },
    );
  }

  Widget _buildLoginPageButton(BuildContext context) {
    return CustomButton(
      text: 'Login Page',
      color: Colors.blue,
      onPressed: () {
        Navigator.pushReplacementNamed(context, '/login');
      },
    );
  }

  Widget _buildLogoutButton(BuildContext context) {
    return CustomButton(
      text: 'Logout',
      color: Colors.red,
      onPressed: () async {
        await User().logout();
        Navigator.pushReplacementNamed(context, '/login');
      },
    );
  }

  Widget _buildAsynchronousPageButton(BuildContext context) {
    return CustomButton(
      text: 'Asynchronous Page',
      color: Colors.green,
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (BuildContext context) => AsynchronousPage(),
          ),
        );
      },
    );
  }

  Widget _buildLiquidSwipePageButton(BuildContext context) {
    return CustomButton(
      text: 'Liquid Swipe Page',
      color: Colors.red,
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (BuildContext context) => LiquidSwipePage(),
          ),
        );
      },
    );
  }

  Widget _buildBottomNavigationBarPageButton(BuildContext context) {
    return CustomButton(
      text: 'Bottom Navigation Bar Page',
      color: Colors.cyan,
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (BuildContext context) => BottomNavigationBarPage(),
          ),
        );
      },
    );
  }

  Widget _buildSingleChildScrollViewPageButton(BuildContext context) {
    return CustomButton(
      text: 'Single Child Scroll View Page',
      color: Colors.lightGreenAccent,
      textColor: Colors.black,
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (BuildContext context) => SingleChildScrollViewPage(),
          ),
        );
      },
    );
  }

  Widget _buildScaffoldPageButton(BuildContext context) {
    return CustomButton(
      text: 'Scaffold Page',
      color: Colors.blueGrey,
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (BuildContext context) => ScaffoldPage(),
          ),
        );
      },
    );
  }

  Widget _buildAppBarButton(BuildContext context) {
    return CustomButton(
      text: 'App Page',
      color: Colors.grey,
      textColor: Colors.black,
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (BuildContext context) => AppBarPage(),
          ),
        );
      },
    );
  }

  Widget _buildSliverAppBarPageButton(BuildContext context) {
    return CustomButton(
      text: 'Sliver App Page',
      color: Colors.brown,
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (BuildContext context) => SliverAppBarPage(),
          ),
        );
      },
    );
  }

  Widget _buildQrReaderPageButton(BuildContext context) {
    return CustomButton(
      text: 'Qr Reader Page',
      color: Colors.greenAccent,
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (BuildContext context) => QrReaderPage(),
          ),
        );
      },
    );
  }

  Widget _buildWeChannelPageButton(BuildContext context) {
    return CustomButton(
      text: 'WE Channel Page',
      color: Colors.pink,
      onPressed: () {
        Navigator.pushNamed(context, '/we-channel');
      },
    );
  }
}
