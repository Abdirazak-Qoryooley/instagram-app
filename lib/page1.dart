import 'package:flutter/material.dart';
import 'package:instagram_app/ahmed.dart';
import 'package:instagram_app/badrudin.dart';
import 'package:instagram_app/pele.dart';
import 'package:instagram_app/profile.dart';
import 'data.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: true,
    home: page1(),
  ));
}

class page1 extends StatelessWidget {
  const page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        physics: AlwaysScrollableScrollPhysics(),
        children: <Widget>[
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  'Instagram',
                  style: TextStyle(fontSize: 25),
                ),
              ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Icon(
                  Icons.send,
                  color: Colors.black,
                  size: 30,
                ),
              )
            ],
          ),
          Container(
            width: double.infinity,
            height: 100,
            // color: Colors.red,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: getdata.length + 1,
              itemBuilder: ((context, index) {
                if (index == 0) {
                  return SizedBox(
                    width: 5,
                  );
                }
                return Container(
                  margin: EdgeInsets.all(10.0),
                  width: 60.0,
                  height: 60.0,
                  decoration: BoxDecoration(shape: BoxShape.circle, boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      offset: Offset(0, 2),
                      blurRadius: 6.0,
                    )
                  ]),
                  child: CircleAvatar(
                    child: ClipOval(
                      child: Container(
                        width: 60.0,
                        height: 60.0,
                        child: Image.asset(getdata[index].image),
                      ),
                    ),
                  ),
                );
              }),
            ),
          ),
          Container(
            width: double.infinity,
            height: 520.0,
            decoration: BoxDecoration(color: Colors.white, boxShadow: [
              BoxShadow(
                color: Colors.black45,
                offset: Offset(0, 2),
                blurRadius: 6.0,
              )
            ]),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Column(
                    children: <Widget>[
                      ListTile(
                        leading: Container(
                          width: 50,
                          height: 50,
                          decoration:
                              BoxDecoration(shape: BoxShape.circle, boxShadow: [
                            BoxShadow(
                              color: Colors.black45,
                              offset: Offset(0, 2),
                              blurRadius: 6.0,
                            ),
                          ]),
                          child: CircleAvatar(
                            child: ClipOval(
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => profile()));
                                },
                                child: Image(
                                  image: AssetImage('story/5.png'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                        ),
                        title: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => profile()));
                            },
                            child: Text('Eng_Bocorow')),
                        subtitle: Text('10 min'),
                        trailing: Icon(Icons.more_horiz),
                      ),
                      Container(
                        margin: EdgeInsets.all(10.0),
                        width: double.infinity,
                        height: 320.0,
                        decoration: BoxDecoration(
                          color: Colors.red,
                          // borderRadius: BorderRadius.circular(25.0),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black45,
                                offset: Offset(0, 5),
                                blurRadius: 8.0)
                          ],
                          image: DecorationImage(
                              image: AssetImage('story/7.png'),
                              fit: BoxFit.fitWidth),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 12.0),
                        child: Row(
                          children: [
                            IconButton(
                              iconSize: 30.0,
                              icon: Icon(Icons.favorite_border),
                              onPressed: () {},
                            ),
                            Text('3,00'),
                            IconButton(
                                iconSize: 30.0,
                                onPressed: () {},
                                icon: Icon(Icons.comment)),
                            Text('500'),
                            IconButton(
                                iconSize: 30.0,
                                onPressed: () {},
                                icon: Icon(Icons.telegram)),
                            Spacer(),
                            IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.bookmark_border))
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            height: 520.0,
            decoration: BoxDecoration(color: Colors.white, boxShadow: [
              BoxShadow(
                color: Colors.black45,
                offset: Offset(0, 2),
                blurRadius: 6.0,
              )
            ]),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Column(
                    children: <Widget>[
                      ListTile(
                        leading: Container(
                          width: 50,
                          height: 50,
                          decoration:
                              BoxDecoration(shape: BoxShape.circle, boxShadow: [
                            BoxShadow(
                              color: Colors.black45,
                              offset: Offset(0, 2),
                              blurRadius: 6.0,
                            ),
                          ]),
                          child: CircleAvatar(
                            child: ClipOval(
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => badrudiin()));
                                },
                                child: Image(
                                  image: AssetImage('story/4.jpg'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                        ),
                        title: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => badrudiin()));
                            },
                            child: Text('Eng Badrudiin')),
                        subtitle: Text('20 min'),
                        trailing: Icon(Icons.more_horiz),
                      ),
                      Container(
                        margin: EdgeInsets.all(10.0),
                        width: double.infinity,
                        height: 320.0,
                        decoration: BoxDecoration(
                          color: Colors.red,
                          // borderRadius: BorderRadius.circular(25.0),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black45,
                                offset: Offset(0, 5),
                                blurRadius: 8.0)
                          ],
                          image: DecorationImage(
                              image: AssetImage('story/4.jpg'),
                              fit: BoxFit.fitWidth),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 12.0),
                        child: Row(
                          children: [
                            IconButton(
                              iconSize: 30.0,
                              icon: Icon(Icons.favorite_border),
                              onPressed: () {},
                            ),
                            Text('1,00'),
                            IconButton(
                                iconSize: 30.0,
                                onPressed: () {},
                                icon: Icon(Icons.comment)),
                            Text('200'),
                            IconButton(
                                iconSize: 30.0,
                                onPressed: () {},
                                icon: Icon(Icons.telegram)),
                            Spacer(),
                            IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.bookmark_border))
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            height: 520.0,
            decoration: BoxDecoration(color: Colors.white, boxShadow: [
              BoxShadow(
                color: Colors.black45,
                offset: Offset(0, 2),
                blurRadius: 6.0,
              )
            ]),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Column(
                    children: <Widget>[
                      ListTile(
                        leading: Container(
                          width: 50,
                          height: 50,
                          decoration:
                              BoxDecoration(shape: BoxShape.circle, boxShadow: [
                            BoxShadow(
                              color: Colors.black45,
                              offset: Offset(0, 2),
                              blurRadius: 6.0,
                            ),
                          ]),
                          child: CircleAvatar(
                            child: ClipOval(
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => ahmed()));
                                },
                                child: Image(
                                  image: AssetImage('story/3.jpg'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                        ),
                        title: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => ahmed()));
                            },
                            child: Text('Eng Ahmed')),
                        subtitle: Text('30 min'),
                        trailing: Icon(Icons.more_horiz),
                      ),
                      Container(
                        margin: EdgeInsets.all(10.0),
                        width: double.infinity,
                        height: 320.0,
                        decoration: BoxDecoration(
                          color: Colors.red,
                          // borderRadius: BorderRadius.circular(25.0),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black45,
                                offset: Offset(0, 5),
                                blurRadius: 8.0)
                          ],
                          image: DecorationImage(
                              image: AssetImage('story/3.jpg'),
                              fit: BoxFit.fitWidth),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 12.0),
                        child: Row(
                          children: [
                            IconButton(
                              iconSize: 30.0,
                              icon: Icon(Icons.favorite_border),
                              onPressed: () {},
                            ),
                            Text('1,00'),
                            IconButton(
                                iconSize: 30.0,
                                onPressed: () {},
                                icon: Icon(Icons.comment)),
                            Text('700'),
                            IconButton(
                                iconSize: 30.0,
                                onPressed: () {},
                                icon: Icon(Icons.telegram)),
                            Spacer(),
                            IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.bookmark_border))
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            height: 520.0,
            decoration: BoxDecoration(color: Colors.white, boxShadow: [
              BoxShadow(
                color: Colors.black45,
                offset: Offset(0, 2),
                blurRadius: 6.0,
              )
            ]),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Column(
                    children: <Widget>[
                      ListTile(
                        leading: Container(
                          width: 50,
                          height: 50,
                          decoration:
                              BoxDecoration(shape: BoxShape.circle, boxShadow: [
                            BoxShadow(
                              color: Colors.black45,
                              offset: Offset(0, 2),
                              blurRadius: 6.0,
                            ),
                          ]),
                          child: CircleAvatar(
                            child: ClipOval(
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => pele()));
                                },
                                child: Image(
                                  image: AssetImage('story/1.jpg'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                        ),
                        title: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => pele()));
                            },
                            child: Text('Mr_pele')),
                        subtitle: Text('40 min'),
                        trailing: Icon(Icons.more_horiz),
                      ),
                      Container(
                        margin: EdgeInsets.all(10.0),
                        width: double.infinity,
                        height: 320.0,
                        decoration: BoxDecoration(
                          color: Colors.red,
                          // borderRadius: BorderRadius.circular(25.0),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black45,
                                offset: Offset(0, 5),
                                blurRadius: 8.0)
                          ],
                          image: DecorationImage(
                              image: AssetImage('story/1.jpg'),
                              fit: BoxFit.fitWidth),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 12.0),
                        child: Row(
                          children: [
                            IconButton(
                              iconSize: 30.0,
                              icon: Icon(Icons.favorite_border),
                              onPressed: () {},
                            ),
                            Text('10,00'),
                            IconButton(
                                iconSize: 30.0,
                                onPressed: () {},
                                icon: Icon(Icons.comment)),
                            Text('900'),
                            IconButton(
                                iconSize: 30.0,
                                onPressed: () {},
                                icon: Icon(Icons.telegram)),
                            Spacer(),
                            IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.bookmark_border))
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        items: [
          BottomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Icon(
                  Icons.home,
                  size: 30,
                  color: Colors.black,
                ),
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
                size: 30,
                color: Colors.black,
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.post_add,
                size: 30,
                color: Colors.black,
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite,
                size: 30,
                color: Colors.black,
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => profile()));
                },
                child: CircleAvatar(
                  radius: 20,
                  backgroundImage: AssetImage('story/5.png'),
                ),
              ),
              label: '')
        ],
      ),
    );
  }
}
