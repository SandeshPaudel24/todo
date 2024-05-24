import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: false,
      appBar: AppBar(
        title: Text('TODO'),
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {},
        ),
        actions: [
          CircleAvatar(
            backgroundImage: NetworkImage('https://via.placeholder.com/150'),
          ),
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
        ],
        backgroundColor: Colors.transparent,
        elevation: 0,
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ),
        ),
      ),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xFF2193b0), Color(0xFF6dd5ed)],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Header
                  Row(
                    children: [
                      Text(
                        'Welcome, Sandesh!',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      Spacer(),
                      Text(
                        'May 2023', // You can update this with a dynamic date
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ),
                    ],
                  ),
                  SizedBox(height: 16),

                  // Calendar
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text('Sun', style: TextStyle(color: Colors.white)),
                      Text('Mon', style: TextStyle(color: Colors.white)),
                      Text('Tue', style: TextStyle(color: Colors.white)),
                      Text('Wed', style: TextStyle(color: Colors.white)),
                      Text('Thu', style: TextStyle(color: Colors.white)),
                      Text('Fri', style: TextStyle(color: Colors.white)),
                      Text('Sat', style: TextStyle(color: Colors.white)),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text('17', style: TextStyle(color: Colors.white)),
                      Text('18', style: TextStyle(color: Colors.white)),
                      Text('19', style: TextStyle(color: Colors.white)),
                      Text('20', style: TextStyle(color: Colors.white)),
                      Text('21', style: TextStyle(color: Colors.white)),
                      Text('22', style: TextStyle(color: Colors.white)),
                      Text('23', style: TextStyle(color: Colors.white)),
                    ],
                  ),
                  SizedBox(height: 16),

                  // Tasks
                  ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: 4,
                    itemBuilder: (context, index) {
                      return Card(
                        color: Colors.white.withOpacity(0.8),
                        child: ListTile(
                          leading: Icon(
                            Icons.calendar_today,
                            color: index == 0
                                ? Colors.red
                                : index == 1 || index == 2
                                    ? Colors.orange
                                    : Colors.green,
                          ),
                          title: Text('Meeting with Client Today'),
                          subtitle: Text('10:30 AM'),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,
        onPressed: () {},
        child: Icon(Icons.add, color: Colors.blue),
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 10,
        shape: CircularNotchedRectangle(),
        notchMargin: 10,
        color: Colors.transparent,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.calendar_today),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.group),
                onPressed: () {},
              ),
              SizedBox(),
              IconButton(
                icon: Icon(Icons.event),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.more_vert),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
