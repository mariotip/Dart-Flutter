import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  const AvatarPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text('Avatar'),
          actions: [
            Container(
              padding: EdgeInsets.all(5.0),
              child: CircleAvatar(
                radius: 23,
                backgroundImage: NetworkImage(
                    'https://instagram.fgdl5-3.fna.fbcdn.net/v/t51.2885-19/s150x150/119707472_2668658346681459_8675267899989940793_n.jpg?_nc_ht=instagram.fgdl5-3.fna.fbcdn.net&_nc_ohc=UXO6OehxirsAX9RF7N2&oh=d479d614f06804402d580c2997768efc&oe=5F91FB21'),
              ),
            )
          ],
        ),
        body: Center(
          child: FadeInImage(
            image: NetworkImage(
                'https://scontent.fgdl5-1.fna.fbcdn.net/v/t1.0-9/82299737_10158089990327122_5942035117407993856_o.jpg?_nc_cat=110&_nc_sid=730e14&_nc_ohc=X-7UDikYyMAAX-f1zeh&_nc_ht=scontent.fgdl5-1.fna&oh=e41792d8272c9ba2430cb45479e883d1&oe=5F8F7DBF'),
            placeholder: AssetImage('assets/load.gif'),
          ),
        ),
      );
}
