import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';


class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Settings'),
        ),
        body: ListView(
          children: <Widget>[
            ListTile(
              contentPadding:
              const EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
              leading: Hero(
                tag: 'profile-pic',
                child: CircleAvatar(
                  radius: 32.0,
                  backgroundImage: imageIcon(Icons.),
                ),
              ),
              title: Text(
                'NAME',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
              subtitle: Text(
                'STATUS',
                style: TextStyle(
                  fontSize: 12.0,
                ),
              ),
              onTap: () {
                Application.router.navigateTo(
                  context,
                  Routes.yourProfile,
                  transition: TransitionType.fadeIn,
                );
              },
            ),
            Divider(
              height: 0.0,
            ),
            SettingItem(
                icon: Icons.vpn_key,
                title: 'Account',
                subtitle: 'Privacy, security, change number',
                onTap: () {
                  Application.router.navigateTo(
                    context,
                    Routes.accountSettings,
                    transition: TransitionType.inFromRight,
                  );
                }),
            SettingItem(
                icon: Icons.chat,
                title: 'Chats',
                subtitle: 'Backup, history, wallpaper',
                onTap: () {
                  Application.router.navigateTo(
                    context,
                    Routes.chatsSettings,
                    transition: TransitionType.inFromRight,
                  );
                }),
            SettingItem(
                icon: Icons.notifications,
                title: 'Notifications',
                subtitle: 'Message, group & call tones',
                onTap: () {
                  Application.router.navigateTo(
                    context,
                    Routes.notificationsSettings,
                    transition: TransitionType.inFromRight,
                  );
                }),
            SettingItem(
                icon: Icons.data_usage,
                title: 'Data and storage usage',
                subtitle: 'Network usage, auto-download',
                onTap: () {
                  Application.router.navigateTo(
                    context,
                    //Routes.dataSettings,
                    Routes.futureTodo,
                    transition: TransitionType.inFromRight,
                  );
                }),
            SettingItem(
                icon: Icons.help_outline,
                title: 'Help',
                subtitle: 'FAQ, contact us, privacy policy',
                onTap: () {
                  Application.router.navigateTo(
                    context,
                    Routes.helpSettings,
                    transition: TransitionType.inFromRight,
                  );
                }),
            Divider(
              indent: 72.0,
              height: 0.0,
            ),
            Builder(builder: (context) {
              return SettingItem(
                  icon: Icons.group,
                  title: 'Invite a friend',
                  onTap: () {
                    AndroidIntentHelpers.inviteFriend(context);
                  });
            }),
          ],
        ));
  }
}
