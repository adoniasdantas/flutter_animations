import 'package:flutter/material.dart';
import 'package:flutter_animations/screens/home/widgets/list_data.dart';

class AnimatedListView extends StatelessWidget {
  final Animation<EdgeInsets> listSlidePosition;

  const AnimatedListView({@required this.listSlidePosition});
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        ListData(
          title: 'Estudar Flutter',
          subtitle: 'Com o curso do Daniel Ciolfi',
          image: AssetImage('assets/images/perfil.jpg'),
          margin: listSlidePosition.value * 5,
        ),
        ListData(
          title: 'Estudar Flutter',
          subtitle: 'Com o curso do Daniel Ciolfi',
          image: AssetImage('assets/images/perfil.jpg'),
          margin: listSlidePosition.value * 4,
        ),
        ListData(
          title: 'Estudar Flutter',
          subtitle: 'Com o curso do Daniel Ciolfi',
          image: AssetImage('assets/images/perfil.jpg'),
          margin: listSlidePosition.value * 3,
        ),
        ListData(
          title: 'Estudar Flutter 2',
          subtitle: 'Com o curso do Daniel Ciolfi',
          image: AssetImage('assets/images/perfil.jpg'),
          margin: listSlidePosition.value * 2,
        ),
        ListData(
          title: 'Estudar Flutter',
          subtitle: 'Com o curso do Daniel Ciolfi',
          image: AssetImage('assets/images/perfil.jpg'),
          margin: listSlidePosition.value * 1,
        ),
        ListData(
          title: 'Estudar Flutter 2',
          subtitle: 'Com o curso do Daniel Ciolfi',
          image: AssetImage('assets/images/perfil.jpg'),
          margin: listSlidePosition.value * 0,
        ),
        ListData(
          title: 'Estudar Flutter',
          subtitle: 'Com o curso do Daniel Ciolfi',
          image: AssetImage('assets/images/perfil.jpg'),
          margin: listSlidePosition.value * 1,
        ),
        ListData(
          title: 'Estudar Flutter 2',
          subtitle: 'Com o curso do Daniel Ciolfi',
          image: AssetImage('assets/images/perfil.jpg'),
          margin: listSlidePosition.value * 0,
        ),
      ],
    );
  }
}
