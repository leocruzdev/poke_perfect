import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:poke_perfect/platform/design_system/design_constants.dart';

class NavigableAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String? title;
  final IconData? leadingIcon;
  final VoidCallback? leadingAction;
  final List<Widget>? middleWidgets;
  final List<Widget>? actionIcons;
  final PopupMenuButton? menuOverflowItems;
  final Color? backgroundColor;
  final double elevation;

  const NavigableAppBar({
    super.key,
    this.title,
    this.leadingIcon,
    this.leadingAction,
    this.middleWidgets,
    this.actionIcons,
    this.menuOverflowItems,
    this.backgroundColor,
    this.elevation = 0,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return AppBar(
      elevation: elevation,
      automaticallyImplyLeading: false,
      titleSpacing: 0,
      backgroundColor: backgroundColor ?? theme.primaryColor,
      title: Padding(
        padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 8.w),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            if (leadingIcon != null)
              IconButton(
                highlightColor: Colors.transparent,
                splashColor: Colors.transparent,
                icon: Icon(
                  size: kIconSize + 4,
                  leadingIcon,
                  color: theme.colorScheme.onPrimary,
                ),
                onPressed: leadingAction,
              ),
            if (title != null)
              Flexible(
                flex: 3,
                fit: FlexFit.tight,
                child: Text(
                  title!,
                  style: theme.textTheme.headlineSmall?.copyWith(
                    color: theme.colorScheme.onPrimary,
                    fontWeight: FontWeight.w300,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ),
            const Spacer(),
            if (middleWidgets != null) ...middleWidgets!,
          ],
        ),
      ),
      actions: [
        if (actionIcons != null) ...actionIcons!,
        if (menuOverflowItems != null) menuOverflowItems!,
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
