import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class HomePage extends StatefulWidget {
 
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}



/**
 * la navegación modal se itera de acuerdo a las paginas que exista
 * 
 */
class _Navegacion extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // obtengo la instancia de la clase singleton.
    final navegar = Provider.of<_NavegacionModal>(context);

    return BottomNavigationBar(
        currentIndex: navegar.paginaActual,
        onTap: (i) {
          print("$i");
          navegar.paginaActual = i;
        },
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.black,
              ),
              title: Text('Home')),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
                color: Colors.black,
              ),
              title: Text('Search')),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.video_collection_outlined,
                color: Colors.black,
              ),
              title: Text('Reels')),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.shop_outlined,
                color: Colors.black,
              ),
              title: Text('Shop')),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person_pin,
                color: Colors.black,
              ),
              title: Text('Profile')),
        ]);
  }
}


class _NavegacionModal with ChangeNotifier {
  int _paginaActual = 0;

  PageController _pageController = new PageController();

  int get paginaActual => this._paginaActual;

  PageController get pageControler => this._pageController;

  /**
   * setter para cambiar la pagina actual.
   */
  set paginaActual(int valor) {
    this._paginaActual = valor;
    /**se navega por l paginas porque el getter se establece en el pageview en el controller */
    _pageController.animateToPage(valor,
        duration: Duration(milliseconds: 450), curve: Curves.decelerate);
    notifyListeners();
  }
}