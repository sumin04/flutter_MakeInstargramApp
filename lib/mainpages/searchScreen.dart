import 'package:flutter/material.dart';

class SearchGridScreen extends StatefulWidget {
  const SearchGridScreen({Key? key}) : super(key: key);

  @override
  State<SearchGridScreen> createState() => _SearchGridScreen();
}

class _SearchGridScreen extends State<SearchGridScreen> {
  // 검색창 입력내용 controller
  TextEditingController searchTextEditingController = TextEditingController();
  // // DB에서 검색된 사용자를 가져오는데 활용되는 변수
  // Future<QuerySnapshot> futureSearchResults;

  // X 아이콘 클릭시 검색어 삭제
  emptyTheTextFormField() {
    searchTextEditingController.clear();
  }
  // // 검색어 입력후 submit하게되면 DB에서 검색어와 일치하거나 포함하는 결과 가져와서 future변수에 저장
  // controlSearching(str) {
  //   print(str);
  //   Future<QuerySnapshot> allUsers = userReference.where('profileName', isGreaterThanOrEqualTo: str).get();
  //   setState(() {
  //     futureSearchResults = allUsers;
  //   });
  // }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          height: 40,
          decoration: BoxDecoration(
            // color: Colors.white10,
            color: Colors.black12,
            borderRadius: BorderRadius.circular(12),
          ),
          child: TextFormField(
            keyboardType: TextInputType.number,
            style: TextStyle(
              fontSize: 18,
            ),
            controller: searchTextEditingController, // 검색창 controller
              decoration: InputDecoration(
                hintText: '검색',
                hintStyle: TextStyle(
                  color: Colors.grey,
                ),
                border: InputBorder.none,
                prefixIcon: Icon(Icons.search, color: Colors.black,),
                suffixIcon: IconButton(icon: Icon(Icons.clear, color: Colors.black,), onPressed: emptyTheTextFormField)
            ),
          ),
        ),
        backgroundColor: Colors.white,
        ),
      body: Center(
        child: Text('반갑다'),
      ),
    );
  }
}
