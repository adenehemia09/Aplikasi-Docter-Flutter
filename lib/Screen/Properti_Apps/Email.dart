import 'package:flutter/material.dart';

class Email extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFFA31B5F),
          title: Text('Kotak Masuk'),
          bottom: TabBar(
            indicatorColor: Colors.black,
            indicatorWeight: 2,
            indicatorSize: TabBarIndicatorSize.label,
            isScrollable: true,
            //onTap: ,
            tabs: <Widget>[
              Tab(child:Text('Chat Saya')),
              Tab(child:Text('Janji Saya')),
              Tab(child:Text('Pesanan')),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ChatSaya(),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: JanjiSaya(),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: JanjiSaya(),
            ),
          ],
        ),
      ),
    );
  }

}
class ChatSaya extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: Stack(
          children: [
            Container(height: 50, width: double.infinity,
                child: ListView(
                  children: [
                    TabBar(
                      isScrollable: true, indicatorColor: Colors.white, indicatorWeight: 2, indicatorSize: TabBarIndicatorSize.label,
                      tabs: <Widget>[
                        Tab(
                          child: Container(
                            height: 45,
                            width: 80,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.blue[100],
                              border: Border.all(
                                  color: Colors.blue,
                                  width: 1
                              ),
                            ),
                            child: Center(
                              child: Text(
                                "Semua",
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.blue
                                ),
                              ),
                            ),
                          ),
                        ),
                        Tab(
                          child: Container(
                            height: 45,
                            width: 70,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.blue[100],
                              border: Border.all(
                                  color: Colors.blue,
                                  width: 1
                              ),
                            ),
                            child: Center(
                              child: Text(
                                "Aktif",
                                style: TextStyle(
                                    color: Colors.blue),
                              ),
                            ),
                          ),
                        ),
                        Tab(
                          child: Container(
                            height: 45,
                            width: 78,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.blue[100],
                                border: Border.all(
                                    color: Colors.blue,
                                    width: 1
                                )
                            ),
                            child: Center(
                              child: Text(
                                "Selesai",
                                style: TextStyle(
                                    color: Colors.blue
                                ),
                              ),
                            ),
                          ),
                        ),

                      ],
                    ),
                  ],
                )
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 60, 0, 0),
              child: TabBarView(
                children: <Widget>[
                  NotificasiChatSaya(),
                  NotificasiChatSaya(),
                  NotificasiChatSaya(),

                ],
              ),
            )
          ],
        ),
      ),

    );

  }
}

class NotificasiChatSaya extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 200),
        child: Center(
          child: Column(
            children: <Widget>[
              Text('Chat Masih Kosong',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19),),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Semua chat akan tersimpan di sini. Ayo mulai chat gratis dengan Dokterku, docter spesialis, dan psikolog',
                    style: TextStyle(fontSize: 15),
                  ),
                ),
              ),
              Center(
                child: MaterialButton(
                  onPressed: () {
                  },
                  color: const Color(0xFF0048FF),
                  padding: EdgeInsets.symmetric(
                    horizontal: 100,
                    vertical: 16,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(7),
                  ),
                  child: Text(
                    'Chat Sekarang',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 19,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class JanjiSaya extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return DefaultTabController(
      length: 4 ,
      child: Scaffold(
        body: Stack(
          children: [
            Container(height: 50, width: double.infinity,
                child: ListView(
                  children: [
                    TabBar(
                      isScrollable: true, indicatorColor: Colors.white, indicatorWeight: 2, indicatorSize: TabBarIndicatorSize.label,
                      tabs: <Widget>[
                        Tab(
                          child: Container(
                            height: 45,
                            width: 80,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.blue[100],
                              border: Border.all(
                                  color: Colors.blue,
                                  width: 1
                              ),
                            ),
                            child: Center(
                              child: Text(
                                "Semua",
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.blue
                                ),
                              ),
                            ),
                          ),
                        ),
                        Tab(
                          child: Container(
                            height: 45,
                            width: 70,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.blue[100],
                              border: Border.all(
                                  color: Colors.blue,
                                  width: 1
                              ),
                            ),
                            child: Center(
                              child: Text(
                                "Aktif",
                                style: TextStyle(
                                    color: Colors.blue),
                              ),
                            ),
                          ),
                        ),
                        Tab(
                          child: Container(
                            height: 45,
                            width: 78,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.blue[100],
                                border: Border.all(
                                    color: Colors.blue,
                                    width: 1
                                )
                            ),
                            child: Center(
                              child: Text(
                                "Selesai",
                                style: TextStyle(
                                    color: Colors.blue
                                ),
                              ),
                            ),
                          ),
                        ),
                        Tab(
                          child: Container(
                            height: 45,
                            width: 70,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.blue[100],
                              border: Border.all(
                                  color: Colors.blue,
                                  width: 1
                              ),
                            ),
                            child: Center(
                              child: Text(
                                "Batal",
                                style: TextStyle(
                                    color: Colors.blue),
                              ),
                            ),
                          ),
                        ),

                      ],
                    ),
                  ],
                )
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 60, 0, 0),
              child: TabBarView(
                children: <Widget>[
                  NotificasiJanjiSaya(),
                  NotificasiJanjiSaya(),
                  NotificasiJanjiSaya(),
                  NotificasiJanjiSaya(),

                ],
              ),
            )
          ],
        ),
      ),

    );

  }
}

class NotificasiJanjiSaya extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 200),
        child: Center(
          child: Column(
            children: <Widget>[
              Text('Belum Ada Riwayat Konsultasi',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19),),
              Padding(
                padding: const EdgeInsets.fromLTRB(40, 20, 40, 20),
                child: Center(
                  child: Text(
                    'Riwayat konsultasu Anda bersama dokter ditampilkan disini.'
                        'Yuk buat janji konsultasi sekarang, lebih mudah dan cepat',
                    style: TextStyle(fontSize: 15),
                  ),
                ),
              ),
              Center(
                child: MaterialButton(
                  onPressed: () {
                  },
                  color: const Color(0xFF0048FF),
                  padding: EdgeInsets.symmetric(
                    horizontal: 75,
                    vertical: 16,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(7),
                  ),
                  child: Text(
                    'Cari Dokter Sekarang',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 19,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


