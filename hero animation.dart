import 'package:flutter/material.dart';
import 'package:assets_audio_player/assets_audio_player.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {

  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  AssetsAudioPlayer audioPlayer = AssetsAudioPlayer();
  late String path;
  bool isAnimated = false;
  void initState() {
    // TODO: implement initState
    super.initState();
    audioPlayer.open(Audio('assets/dolphin.mp3'),autoStart: false,showNotification: true);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Welcome To Zoo"),
      ),
      body:SingleChildScrollView(
      child:Column(

          children: [

            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    children: [
                      GestureDetector(
                        child: const Hero(
                            tag: "a",
                            child: CircleAvatar(
                              foregroundImage: AssetImage("assets/dolphin.jpg"),
                              radius: 60,
                            )
                        ),
                        onTap: ()async{

                          Navigator.push(context,MaterialPageRoute(builder: (context)=>A()));
    setState((){
    audioPlayer.open(Audio('assets/dolphin.mp3'));});
    AnimateIcon();

                        },
                      ),
                      GestureDetector(
                        child: const Hero(

                            tag: "b",
                            child: CircleAvatar(
                              foregroundImage: AssetImage("assets/elephant.jpg"),
                              radius: 60,

                            )

                        ),
                        onTap:()async{

    Navigator.push(context,MaterialPageRoute(builder: (context)=>B()));
    setState((){
    audioPlayer.open(Audio('assets/elephant.mp3'));});
    AnimateIcon();

    },
                      ),
                      GestureDetector(
                        child: const Hero(
                            tag: "c",
                            child: CircleAvatar(
                              foregroundImage: AssetImage("assets/flemingo.jpg"),
                              radius: 60,

                            )

                        ),
                        onTap: ()async{

                          Navigator.push(context,MaterialPageRoute(builder: (context)=>C()));
                          setState((){
                            audioPlayer.open(Audio('assets/flemingo.mp3'));});
                          AnimateIcon();

                        },

                      ),GestureDetector(
                        child: const Hero(
                            tag: "d",
                            child: CircleAvatar(
                              foregroundImage: AssetImage("assets/lion.jpg"),
                              radius: 60,

                            )

                        ),
                        onTap: ()async{
                          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>D()));
                          setState((){
                            audioPlayer.open(Audio('assets/lion.mp3'));});
    AnimateIcon();}
                      ),



                    ],
                  ),
                )
              ],
            ),
///////////////////////////////////////////////////////////////////////////////////////////
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    children: [
                      GestureDetector(
                        child:
                        const Hero(
                            tag: "e",
                            child: CircleAvatar(
                              foregroundImage: AssetImage("assets/panda.jpg"),
                              radius: 60,
                            )

                        ),
                        onTap: ()async{

                          Navigator.push(context,MaterialPageRoute(builder: (context)=>E()));
                          setState((){
                            audioPlayer.open(Audio('assets/panda.mp3'));});
                          AnimateIcon();

                        },
    ),
                      GestureDetector(
                        child: const Hero(
                      tag: "f",
                      child: CircleAvatar(
                      foregroundImage: AssetImage("assets/parrort.jpg"),
                      radius: 60,
                      )

                      ),
                        onTap: ()async{

                          Navigator.push(context,MaterialPageRoute(builder: (context)=>F()));
                          setState((){
                            audioPlayer.open(Audio('assets/Parrot.mp3'));});
                          AnimateIcon();

                        },
                      ),
                      GestureDetector(
                      child: const Hero(
    tag: "g",
    child: CircleAvatar(
    foregroundImage: AssetImage("assets/peacock.jpg"),
    radius: 60,
    )

    ),
                        onTap: ()async{

                          Navigator.push(context,MaterialPageRoute(builder: (context)=>G()));
                          setState((){
                            audioPlayer.open(Audio('assets/peacock.mp3'));});
                          AnimateIcon();

                        },
    ),
    GestureDetector(
    child: const Hero(
    tag: "h",
    child: CircleAvatar(
    foregroundImage: AssetImage("assets/swan.jpg"),
    radius: 60,

    )

    ),
      onTap: ()async{

        Navigator.push(context,MaterialPageRoute(builder: (context)=>H()));
        setState((){
          audioPlayer.open(Audio('assets/swan.mp3'));});
        AnimateIcon();

      },
    ),]
                      ),


                      ),
                      ],
            ),
            /////////////////////////////////////////////////////////////////////////////////////////////////////
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                      children: [
                        GestureDetector(
                          child:
                          const Hero(
                              tag: "i",
                              child: CircleAvatar(
                                foregroundImage: AssetImage("assets/bat.jpg"),
                                radius: 60,
                              )

                          ),
                          onTap: ()async{

                            Navigator.push(context,MaterialPageRoute(builder: (context)=>I()));
                            setState((){
                              audioPlayer.open(Audio('assets/bat.mp3'));});
                            AnimateIcon();

                          },
                        ),
                        GestureDetector(
                          child: const Hero(
                              tag: "j",
                              child: CircleAvatar(
                                foregroundImage: AssetImage("assets/cat.jpg"),
                                radius: 60,
                              )

                          ),
                          onTap: ()async{

                            Navigator.push(context,MaterialPageRoute(builder: (context)=>J()));
                            setState((){
                              audioPlayer.open(Audio('assets/cat.mp3'));});
                            AnimateIcon();

                          },
                        ),
                        GestureDetector(
                          child: const Hero(
                              tag: "k",
                              child: CircleAvatar(
                                foregroundImage: AssetImage("assets/cock.jpg"),
                                radius: 60,
                              )

                          ),
                          onTap:()async{

                            Navigator.push(context,MaterialPageRoute(builder: (context)=>K()));
                            setState((){
                              audioPlayer.open(Audio('assets/cock.mp3'));});
                            AnimateIcon();

                          },
                        ),
                        GestureDetector(
                          child: const Hero(
                              tag: "l",
                              child: CircleAvatar(
                                foregroundImage: AssetImage("assets/dog.jpg"),
                                radius: 60,

                              )

                          ),
                          onTap: ()async{

                            Navigator.push(context,MaterialPageRoute(builder: (context)=>L()));
                            setState((){
                              audioPlayer.open(Audio('assets/dog.mp3'));});
                            AnimateIcon();

                          },
                        ),]
                  ),


                ),
              ],
            ),
            ////////////////////////////////////////////////////////////////
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                      children: [
                        GestureDetector(
                          child:
                          const Hero(
                              tag: "m",
                              child: CircleAvatar(
                                foregroundImage: AssetImage("assets/cow.jpg"),
                                radius: 60,
                              )

                          ),
                          onTap: ()async{

                            Navigator.push(context,MaterialPageRoute(builder: (context)=>M()));
                            setState((){
                              audioPlayer.open(Audio('assets/cow.mp3'));});
                            AnimateIcon();

                          },
                        ),
                        GestureDetector(
                          child: const Hero(
                              tag: "n",
                              child: CircleAvatar(
                                foregroundImage: AssetImage("assets/duck.jpg"),
                                radius: 60,
                              )

                          ),
                          onTap: ()async{

                            Navigator.push(context,MaterialPageRoute(builder: (context)=>N()));
                            setState((){
                              audioPlayer.open(Audio('assets/duck.mp3'));});
                            AnimateIcon();

                          },
                        ),
                        GestureDetector(
                          child: const Hero(
                              tag: "o",
                              child: CircleAvatar(
                                foregroundImage: AssetImage("assets/frog.jpg"),
                                radius: 60,
                              )

                          ),
                          onTap: ()async{

                            Navigator.push(context,MaterialPageRoute(builder: (context)=>O()));
                            setState((){
                              audioPlayer.open(Audio('assets/frog.wav'));});
                            AnimateIcon();

                          },
                        ),
                        GestureDetector(
                          child: const Hero(
                              tag: "p",
                              child: CircleAvatar(
                                foregroundImage: AssetImage("assets/horse.jpg"),
                                radius: 60,

                              )

                          ),
                          onTap: ()async{

                            Navigator.push(context,MaterialPageRoute(builder: (context)=>P()));
                            setState((){
                              audioPlayer.open(Audio('assets/horse.mp3'));});
                            AnimateIcon();

                          },
                        ),]
                  ),


                ),
              ],
            ),
            ////////////////////////////////////////////////////////////////////////////////////////////////////
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                      children: [
                        GestureDetector(
                          child:
                          const Hero(
                              tag: "q",
                              child: CircleAvatar(
                                foregroundImage: AssetImage("assets/bear.jpg"),
                                radius: 60,
                              )

                          ),
                          onTap: ()async{

                            Navigator.push(context,MaterialPageRoute(builder: (context)=>Q()));
                            setState((){
                              audioPlayer.open(Audio('assets/bear.mp3'));});
                            AnimateIcon();

                          },
                        ),
                        GestureDetector(
                          child: const Hero(
                              tag: "r",
                              child: CircleAvatar(
                                foregroundImage: AssetImage("assets/bee.jpg"),
                                radius: 60,
                              )

                          ),
                          onTap: ()async{

                            Navigator.push(context,MaterialPageRoute(builder: (context)=>R()));
                            setState((){
                              audioPlayer.open(Audio('assets/bee.mp3'));});
                            AnimateIcon();

                          },
                        ),
                        GestureDetector(
                          child: const Hero(
                              tag: "s",
                              child: CircleAvatar(
                                foregroundImage: AssetImage("assets/donkey.jpg"),
                                radius: 60,
                              )

                          ),
                          onTap: ()async{

                            Navigator.push(context,MaterialPageRoute(builder: (context)=>S()));
                            setState((){
                              audioPlayer.open(Audio('assets/donkey.mp3'));});
                            AnimateIcon();

                          },
                        ),
                        GestureDetector(
                          child: const Hero(
                              tag: "t",
                              child: CircleAvatar(
                                foregroundImage: AssetImage("assets/monkey.jpg"),
                                radius: 60,

                              )

                          ),
                          onTap: ()async{

                            Navigator.push(context,MaterialPageRoute(builder: (context)=>T()));
                            setState((){
                              audioPlayer.open(Audio('assets/monkey.mp3'));});
                            AnimateIcon();

                          },
                        ),]
                  ),


                ),
              ],
            ),
            ////////////////////////////////////////////////////////////////////////////
      Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                      children: [
                        GestureDetector(
                          child:
                          const Hero(
                              tag: "u",
                              child: CircleAvatar(
                                foregroundImage: AssetImage("assets/wolf.jpg"),
                                radius: 60,
                              )

                          ),
                          onTap:()async{

                            Navigator.push(context,MaterialPageRoute(builder: (context)=>U()));
                            setState((){
                              audioPlayer.open(Audio('assets/wolf.mp3'));});
                            AnimateIcon();

                          },
                        ),
                        GestureDetector(
                          child: const Hero(
                              tag: "v",
                              child: CircleAvatar(
                                foregroundImage: AssetImage("assets/mouse.jpg"),
                                radius: 60,
                              )

                          ),
                          onTap: ()async{

                            Navigator.push(context,MaterialPageRoute(builder: (context)=>V()));
                            setState((){
                              audioPlayer.open(Audio('assets/mouse.mp3'));});
                            AnimateIcon();

                          },
                        ),
                        GestureDetector(
                          child: const Hero(
                              tag: "w",
                              child: CircleAvatar(
                                foregroundImage: AssetImage("assets/pig.jpg"),
                                radius: 60,
                              )

                          ),
                          onTap: ()async{

                            Navigator.push(context,MaterialPageRoute(builder: (context)=>W()));
                            setState((){
                              audioPlayer.open(Audio('assets/pig.mp3'));});
                            AnimateIcon();

                          },
                        ),]
                  ),


                ),
              ],
            ),
            //////////////////////////////////////////////////////////////////////////////////
            //////////
          ],),
      )
    );
  }
  void AnimateIcon() {
    setState(() {
      isAnimated = !isAnimated;
      if(isAnimated)
      {
        audioPlayer.play();
        isAnimated = false;
      }

    });
  }
}


//////////////////////////////////////////////////////////////////////////////////////

class E extends StatefulWidget {
  const E({Key? key}) : super(key: key);

  @override
  State<E> createState() => _EState();
}

class _EState extends State<E> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          children: [
            Hero(tag: "e", child: Image.asset("assets/panda.jpg")),
            Text(
              "The giant panda (Ailuropoda melanoleuca), also known as the panda bear"
                  " (or simply the panda), is a bear species endemic to China.[4] It is characterised by its bold "
                  "black-and-white coat and rotund body. The name giant panda is "
                  "sometimes used to distinguish it from the red panda, a neighboring musteloid.",

              style: TextStyle(fontSize: 20,
                  color: Colors.black,
                  decoration: TextDecoration.none),
            )
          ],
        ),
      ),
    );
  }
}

class A extends StatefulWidget {
  const A({Key? key}) : super(key: key);

  @override
  State<A> createState() => _AState();
}

class _AState extends State<A> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          children: [
            Hero(tag: "a", child: Image.asset("assets/dolphin.jpg")),
            Text(
              "A dolphin is an aquatic mammal within the infraorder Cetacea. Dolphin species belong to the families Delphinidae (the oceanic dolphins), Platanistidae (the Indian river dolphins), Iniidae (the New World river dolphins), Pontoporiidae (the brackish dolphins), and the extinct Lipotidae (baiji or Chinese river dolphin). ",

              style: TextStyle(fontSize: 20,
                  color: Colors.black,
                  decoration: TextDecoration.none),
            )
          ],
        ),
      ),
    );
  }
}
class B extends StatefulWidget {
  const B({Key? key}) : super(key: key);

  @override
  State<B> createState() => _BState();
}

class _BState extends State<B> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          children: [
            Hero(tag: "b", child: Image.asset("assets/elephant.jpg")),
            Text(
              "Elephants are the largest existing land animals. Three living species are currently recognised: the African bush elephant, the African forest elephant, and the Asian elephant. They are an informal grouping within the subfamily Elephantinae of the order Proboscidea; extinct members include the mastodons. Elephantinae also contains several extinct groups, including the mammoths and straight-tusked elephants. ",

              style: TextStyle(fontSize: 20,
                  color: Colors.black,
                  decoration: TextDecoration.none),
            )
          ],
        ),
      ),
    );
  }
}
class C extends StatefulWidget {
  const C({Key? key}) : super(key: key);

  @override
  State<C> createState() => _CState();
}

class _CState extends State<C> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          children: [
            Hero(tag: "c", child: Image.asset("assets/flemingo.jpg")),
            Text(
              "Flamingos or flamingoes[a] /fləˈmɪŋɡoʊz/ are a type of wading bird in the family Phoenicopteridae, which is the only extant family in the order Phoenicopteriformes. There are four flamingo species distributed throughout the Americas (including the Caribbean), and two species native to Afro-Eurasia.",
              style: TextStyle(fontSize: 20,
                  color: Colors.black,
                  decoration: TextDecoration.none),
            )
          ],
        ),
      ),
    );
  }
}
class D extends StatefulWidget {
  const D({Key? key}) : super(key: key);

  @override
  State<D> createState() => _DState();
}

class _DState extends State<D> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          children: [
            Hero(tag: "d", child: Image.asset("assets/lion.jpg")),
            Text(
              "The lion (Panthera leo) is a large cat of the genus Panthera native to Africa and India. It has a muscular, broad-chested body, short, rounded head, round ears, and a hairy tuft at the end of its tail. It is sexually dimorphic; adult male lions are larger than females and have a prominent mane. It is a social species, forming groups called prides.",

              style: TextStyle(fontSize: 20,
                  color: Colors.black,
                  decoration: TextDecoration.none),
            )
          ],
        ),
      ),
    );
  }
}
class F extends StatefulWidget {
  const F({Key? key}) : super(key: key);

  @override
  State<F> createState() => _FState();
}

class _FState extends State<F> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          children: [
            Hero(tag: "f", child: Image.asset("assets/parrort.jpg")),
            Text(
              "Parrots, also known as psittacines (/ˈsɪtəsaɪnz/),[1][2] are birds of the roughly 398 species[3] in 92 genera comprising the order Psittaciformes (/ˈsɪtəsɪfɔːrmiːz/), found mostly in tropical and subtropical regions. The order is subdivided into three superfamilies: the Psittacoidea ( parrots), the Cacatuoidea (cockatoos), and the Strigopoidea (New Zealand parrots). One-third of all parrot species are threatened by extinction, with higher aggregate extinction risk (IUCN Red List Index) than any other comparable bird group",

              style: TextStyle(fontSize: 20,
                  color: Colors.black,
                  decoration: TextDecoration.none),
            )
          ],
        ),
      ),
    );
  }
}
class G extends StatefulWidget {
  const G({Key? key}) : super(key: key);

  @override
  State<G> createState() => _GState();
}

class _GState extends State<G> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          children: [
            Hero(tag: "g", child: Image.asset("assets/peacock.jpg")),
            Text(
              "Peafowl is a common name for three bird species in the genera Pavo and Afropavo within the tribe Pavonini of the family Phasianidae, the pheasants and their allies. Male peafowl are referred to as peacocks, and female peafowl are referred to as peahens, even though peafowl of either sex are often referred to colloquially as peacocks",

              style: TextStyle(fontSize: 20,
                  color: Colors.black,
                  decoration: TextDecoration.none),
            )
          ],
        ),
      ),
    );
  }
}
class H extends StatefulWidget {
  const H({Key? key}) : super(key: key);

  @override
  State<H> createState() => _HState();
}

class _HState extends State<H> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          children: [
            Hero(tag: "h", child: Image.asset("assets/swan.jpg")),
            Text(
              "Swans are birds of the family Anatidae within the genus Cygnus.[3] The swans' closest relatives include the geese and ducks. Swans are grouped with the closely related geese in the subfamily Anserinae where they form the tribe Cygnini. Sometimes, they are considered a distinct subfamily, Cygninae. There are six living and many extinct species of swan; in addition, there is a species known as the coscoroba swan which is no longer considered one of the true swans",
              style: TextStyle(fontSize: 20,
                  color: Colors.black,
                  decoration: TextDecoration.none),
            )
          ],
        ),
      ),
    );
  }
}
class I extends StatefulWidget {
  const I({Key? key}) : super(key: key);

  @override
  State<I> createState() => _IState();
}

class _IState extends State<I> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          children: [
            Hero(tag: "i", child: Image.asset("assets/bat.jpg")),
            Text(
              "Swans are birds of the family Anatidae within the genus Cygnus.[3] The swans' closest relatives include the geese and ducks. Swans are grouped with the closely related geese in the subfamily Anserinae where they form the tribe Cygnini. Sometimes, they are considered a distinct subfamily, Cygninae. There are six living and many extinct species of swan; in addition, there is a species known as the coscoroba swan which is no longer considered one of the true swans",
              style: TextStyle(fontSize: 20,
                  color: Colors.black,
                  decoration: TextDecoration.none),
            )
          ],
        ),
      ),
    );
  }
}
class J extends StatefulWidget {
  const J({Key? key}) : super(key: key);

  @override
  State<J> createState() => _JState();
}

class _JState extends State<J> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          children: [
            Hero(tag: "j", child: Image.asset("assets/cat.jpg")),
            Text(
              "Swans are birds of the family Anatidae within the genus Cygnus.[3] The swans' closest relatives include the geese and ducks. Swans are grouped with the closely related geese in the subfamily Anserinae where they form the tribe Cygnini. Sometimes, they are considered a distinct subfamily, Cygninae. There are six living and many extinct species of swan; in addition, there is a species known as the coscoroba swan which is no longer considered one of the true swans",
              style: TextStyle(fontSize: 20,
                  color: Colors.black,
                  decoration: TextDecoration.none),
            )
          ],
        ),
      ),
    );
  }
}
class K extends StatefulWidget {
  const K({Key? key}) : super(key: key);

  @override
  State<K> createState() => _KState();
}

class _KState extends State<K> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          children: [
            Hero(tag: "k", child: Image.asset("assets/cock.jpg")),
            Text(
              "Swans are birds of the family Anatidae within the genus Cygnus.[3] The swans' closest relatives include the geese and ducks. Swans are grouped with the closely related geese in the subfamily Anserinae where they form the tribe Cygnini. Sometimes, they are considered a distinct subfamily, Cygninae. There are six living and many extinct species of swan; in addition, there is a species known as the coscoroba swan which is no longer considered one of the true swans",
              style: TextStyle(fontSize: 20,
                  color: Colors.black,
                  decoration: TextDecoration.none),
            )
          ],
        ),
      ),
    );
  }
}
class L extends StatefulWidget {
  const L({Key? key}) : super(key: key);

  @override
  State<L> createState() => _LState();
}

class _LState extends State<L> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          children: [
            Hero(tag: "l", child: Image.asset("assets/dog.jpg")),
            Text(
              "Swans are birds of the family Anatidae within the genus Cygnus.[3] The swans' closest relatives include the geese and ducks. Swans are grouped with the closely related geese in the subfamily Anserinae where they form the tribe Cygnini. Sometimes, they are considered a distinct subfamily, Cygninae. There are six living and many extinct species of swan; in addition, there is a species known as the coscoroba swan which is no longer considered one of the true swans",
              style: TextStyle(fontSize: 20,
                  color: Colors.black,
                  decoration: TextDecoration.none),
            )
          ],
        ),
      ),
    );
  }
}
class M extends StatefulWidget {
  const M({Key? key}) : super(key: key);

  @override
  State<M> createState() => _MState();
}

class _MState extends State<M> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          children: [
            Hero(tag: "h", child: Image.asset("assets/cow.jpg")),
            Text(
              "Swans are birds of the family Anatidae within the genus Cygnus.[3] The swans' closest relatives include the geese and ducks. Swans are grouped with the closely related geese in the subfamily Anserinae where they form the tribe Cygnini. Sometimes, they are considered a distinct subfamily, Cygninae. There are six living and many extinct species of swan; in addition, there is a species known as the coscoroba swan which is no longer considered one of the true swans",
              style: TextStyle(fontSize: 20,
                  color: Colors.black,
                  decoration: TextDecoration.none),
            )
          ],
        ),
      ),
    );
  }
}
class N extends StatefulWidget {
  const N({Key? key}) : super(key: key);

  @override
  State<N> createState() => _NState();
}

class _NState extends State<N> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          children: [
            Hero(tag: "n", child: Image.asset("assets/duck.jpg")),
            Text(
              "Swans are birds of the family Anatidae within the genus Cygnus.[3] The swans' closest relatives include the geese and ducks. Swans are grouped with the closely related geese in the subfamily Anserinae where they form the tribe Cygnini. Sometimes, they are considered a distinct subfamily, Cygninae. There are six living and many extinct species of swan; in addition, there is a species known as the coscoroba swan which is no longer considered one of the true swans",
              style: TextStyle(fontSize: 20,
                  color: Colors.black,
                  decoration: TextDecoration.none),
            )
          ],
        ),
      ),
    );
  }
}
class O extends StatefulWidget {
  const O({Key? key}) : super(key: key);

  @override
  State<O> createState() => _OState();
}

class _OState extends State<O> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          children: [
            Hero(tag: "h", child: Image.asset("assets/frog.jpg")),
            Text(
              "Swans are birds of the family Anatidae within the genus Cygnus.[3] The swans' closest relatives include the geese and ducks. Swans are grouped with the closely related geese in the subfamily Anserinae where they form the tribe Cygnini. Sometimes, they are considered a distinct subfamily, Cygninae. There are six living and many extinct species of swan; in addition, there is a species known as the coscoroba swan which is no longer considered one of the true swans",
              style: TextStyle(fontSize: 20,
                  color: Colors.black,
                  decoration: TextDecoration.none),
            )
          ],
        ),
      ),
    );
  }
}
class P extends StatefulWidget {
  const P({Key? key}) : super(key: key);

  @override
  State<P> createState() => _PState();
}

class _PState extends State<P> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          children: [
            Hero(tag: "o", child: Image.asset("assets/horse.jpg")),
            Text(
              "Swans are birds of the family Anatidae within the genus Cygnus.[3] The swans' closest relatives include the geese and ducks. Swans are grouped with the closely related geese in the subfamily Anserinae where they form the tribe Cygnini. Sometimes, they are considered a distinct subfamily, Cygninae. There are six living and many extinct species of swan; in addition, there is a species known as the coscoroba swan which is no longer considered one of the true swans",
              style: TextStyle(fontSize: 20,
                  color: Colors.black,
                  decoration: TextDecoration.none),
            )
          ],
        ),
      ),
    );
  }
}
class Q extends StatefulWidget {
  const Q({Key? key}) : super(key: key);

  @override
  State<Q> createState() => _QState();
}

class _QState extends State<Q> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          children: [
            Hero(tag: "q", child: Image.asset("assets/bear.jpg")),
            Text(
              "Swans are birds of the family Anatidae within the genus Cygnus.[3] The swans' closest relatives include the geese and ducks. Swans are grouped with the closely related geese in the subfamily Anserinae where they form the tribe Cygnini. Sometimes, they are considered a distinct subfamily, Cygninae. There are six living and many extinct species of swan; in addition, there is a species known as the coscoroba swan which is no longer considered one of the true swans",
              style: TextStyle(fontSize: 20,
                  color: Colors.black,
                  decoration: TextDecoration.none),
            )
          ],
        ),
      ),
    );
  }
}
class R extends StatefulWidget {
  const R({Key? key}) : super(key: key);

  @override
  State<R> createState() => _RState();
}

class _RState extends State<R> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          children: [
            Hero(tag: "r", child: Image.asset("assets/bee.jpg")),
            Text(
              "Swans are birds of the family Anatidae within the genus Cygnus.[3] The swans' closest relatives include the geese and ducks. Swans are grouped with the closely related geese in the subfamily Anserinae where they form the tribe Cygnini. Sometimes, they are considered a distinct subfamily, Cygninae. There are six living and many extinct species of swan; in addition, there is a species known as the coscoroba swan which is no longer considered one of the true swans",
              style: TextStyle(fontSize: 20,
                  color: Colors.black,
                  decoration: TextDecoration.none),
            )
          ],
        ),
      ),
    );
  }
}
class S extends StatefulWidget {
  const S({Key? key}) : super(key: key);

  @override
  State<S> createState() => _SState();
}

class _SState extends State<S> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          children: [
            Hero(tag: "s", child: Image.asset("assets/donkey.jpg")),
            Text(
              "Swans are birds of the family Anatidae within the genus Cygnus.[3] The swans' closest relatives include the geese and ducks. Swans are grouped with the closely related geese in the subfamily Anserinae where they form the tribe Cygnini. Sometimes, they are considered a distinct subfamily, Cygninae. There are six living and many extinct species of swan; in addition, there is a species known as the coscoroba swan which is no longer considered one of the true swans",
              style: TextStyle(fontSize: 20,
                  color: Colors.black,
                  decoration: TextDecoration.none),
            )
          ],
        ),
      ),
    );
  }
}
class U extends StatefulWidget {
  const U({Key? key}) : super(key: key);

  @override
  State<U> createState() => _UState();
}

class _UState extends State<U> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          children: [
            Hero(tag: "u", child: Image.asset("assets/wolf.jpg")),
            Text(
              "Swans are birds of the family Anatidae within the genus Cygnus.[3] The swans' closest relatives include the geese and ducks. Swans are grouped with the closely related geese in the subfamily Anserinae where they form the tribe Cygnini. Sometimes, they are considered a distinct subfamily, Cygninae. There are six living and many extinct species of swan; in addition, there is a species known as the coscoroba swan which is no longer considered one of the true swans",
              style: TextStyle(fontSize: 20,
                  color: Colors.black,
                  decoration: TextDecoration.none),
            )
          ],
        ),
      ),
    );
  }
}
class V extends StatefulWidget {
  const V({Key? key}) : super(key: key);

  @override
  State<V> createState() => _VState();
}

class _VState extends State<V> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          children: [
            Hero(tag: "v", child: Image.asset("assets/mouse.jpg")),
            Text(
              "Swans are birds of the family Anatidae within the genus Cygnus.[3] The swans' closest relatives include the geese and ducks. Swans are grouped with the closely related geese in the subfamily Anserinae where they form the tribe Cygnini. Sometimes, they are considered a distinct subfamily, Cygninae. There are six living and many extinct species of swan; in addition, there is a species known as the coscoroba swan which is no longer considered one of the true swans",
              style: TextStyle(fontSize: 20,
                  color: Colors.black,
                  decoration: TextDecoration.none),
            )
          ],
        ),
      ),
    );
  }
}
class W extends StatefulWidget {
  const W({Key? key}) : super(key: key);

  @override
  State<W> createState() => _WState();
}

class _WState extends State<W> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          children: [
            Hero(tag: "w", child: Image.asset("assets/pig.jpg")),
            Text(
              "Swans are birds of the family Anatidae within the genus Cygnus.[3] The swans' closest relatives include the geese and ducks. Swans are grouped with the closely related geese in the subfamily Anserinae where they form the tribe Cygnini. Sometimes, they are considered a distinct subfamily, Cygninae. There are six living and many extinct species of swan; in addition, there is a species known as the coscoroba swan which is no longer considered one of the true swans",
              style: TextStyle(fontSize: 20,
                  color: Colors.black,
                  decoration: TextDecoration.none),
            )
          ],
        ),
      ),
    );
  }
}
class T extends StatefulWidget {
  const T({Key? key}) : super(key: key);

  @override
  State<T> createState() => _TState();
}

class _TState extends State<T> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          children: [
            Hero(tag: "t", child: Image.asset("assets/monkey.jpg")),
            Text(
              "Swans are birds of the family Anatidae within the genus Cygnus.[3] The swans' closest relatives include the geese and ducks. Swans are grouped with the closely related geese in the subfamily Anserinae where they form the tribe Cygnini. Sometimes, they are considered a distinct subfamily, Cygninae. There are six living and many extinct species of swan; in addition, there is a species known as the coscoroba swan which is no longer considered one of the true swans",
              style: TextStyle(fontSize: 20,
                  color: Colors.black,
                  decoration: TextDecoration.none),
            )
          ],
        ),
      ),
    );
  }
}














