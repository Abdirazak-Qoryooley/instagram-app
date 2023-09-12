import 'package:flutter/material.dart';
import 'package:instagram_app/data.dart';

void main() {
  runApp(MaterialApp(
    home: badrudiin(),
  ));
}

class badrudiin extends StatelessWidget {
  const badrudiin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff00d1b2a),
      body: SafeArea(
        child: Column(children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  'Eng_Badrudiin',
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Icon(
                  Icons.add_box,
                  color: Colors.white,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Icon(
                  Icons.menu,
                  size: 33,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20.0, top: 15),
                child: CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage('story/4.jpg'),
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: Text(
                      '1',
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: Text(
                      'posts',
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                  )
                ],
              ),
              SizedBox(
                width: 40,
              ),
              Column(
                children: [
                  Text(
                    '1.46',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                  Text(
                    'Followers',
                    style: TextStyle(color: Colors.white, fontSize: 14),
                  )
                ],
              ),
              SizedBox(
                width: 30,
              ),
              Column(
                children: [
                  Text(
                    '80',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                  Text(
                    'Following',
                    style: TextStyle(color: Colors.white, fontSize: 14),
                  )
                ],
              )
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 200.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Badrudiin Sheikh Muhamed',
                  style: TextStyle(color: Colors.white),
                ),
                Text('Software', style: TextStyle(color: Colors.white30)),
                Text(
                  'Computer science student',
                  style: TextStyle(color: Colors.white),
                )
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            width: 373,
            height: 60,
            decoration: BoxDecoration(
                color: Colors.grey[800],
                borderRadius: BorderRadius.circular(12)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 12.0, top: 12),
                  child: Text(
                    'Professional dashboard',
                    style: TextStyle(color: Colors.white70),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 12.0,
                  ),
                  child: Text(
                    '4 accounts reached in the last 30 days',
                    style: TextStyle(color: Colors.white70),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(left: 22),
                width: 180,
                height: 35,
                decoration: BoxDecoration(
                    color: Colors.grey[800],
                    borderRadius: BorderRadius.circular(12)),
                child: Center(
                  child: Text(
                    'Edit Profile',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 2),
                    width: 180,
                    height: 35,
                    decoration: BoxDecoration(
                        color: Colors.grey[800],
                        borderRadius: BorderRadius.circular(12)),
                    child: Center(
                      child: Text(
                        'share Profile',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ],
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
          Column(
            children: [
              DefaultTabController(
                length: 3,
                child: TabBar(
                    labelColor: Colors.black,
                    unselectedLabelColor: Colors.grey[400],
                    indicatorWeight: 1,
                    indicatorColor: Colors.white,
                    tabs: [
                      Tab(
                        icon: Icon(
                          Icons.grid_on_sharp,
                          color: Colors.white,
                        ),
                      ),
                      Tab(
                        icon: Image.asset(
                          'profile/igtv.png',
                          color: Colors.white,
                          width: 30,
                          height: 30,
                        ),
                      ),
                      Tab(
                        icon: Image.asset(
                          'profile/reels.png',
                          color: Colors.white,
                          width: 30,
                          height: 30,
                        ),
                      )
                    ]),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            margin: EdgeInsets.only(right: 250),
            width: 150,
            height: 150,
            decoration: BoxDecoration(
                color: Colors.red,
                image: DecorationImage(
                  image: AssetImage('story/4.jpg'),
                )),
          ),
        ]),
      ),
    );
  }
}
