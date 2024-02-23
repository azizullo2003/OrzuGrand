import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PageController? _pageController;
  PageController? _pageController2;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(viewportFraction: 0.75);
    _pageController2 = PageController(viewportFraction: 0.8);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        surfaceTintColor: const Color.fromRGBO(240, 240, 240, 1),
        backgroundColor: const Color.fromRGBO(240, 240, 240, 1),
        title: const Text(
          "ORZUGRAND",
          style: TextStyle(
              color: Color.fromRGBO(255, 112, 17, 1),
              fontWeight: FontWeight.w800,
              fontSize: 20),
        ),
        leading: IconButton(
          onPressed: () {},
          icon: Image.asset(
            "assets/icons/location.png",
            height: 24,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Image.asset(
              "assets/icons/messages.png",
              height: 24,
            ),
          )
        ],
      ),
      body: ListView(
        shrinkWrap: false,
        physics: const AlwaysScrollableScrollPhysics(),
        children: [
          Container(
            color: const Color.fromRGBO(240, 240, 240, 1),
            padding: const EdgeInsets.only(
                left: 20.0, right: 20, top: 10, bottom: 14),
            child: Row(
              children: [
                Image.asset(
                  "assets/icons/people.png",
                  width: 20,
                  height: 20,
                ),
                const SizedBox(width: 10),
                const Text(
                  "Здравствуйте,",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(width: 5),
                const Text(
                  "Дониёр",
                  style: TextStyle(
                    color: Color.fromRGBO(20, 162, 60, 1),
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.only(bottom: 20),
            color: const Color.fromRGBO(240, 240, 240, 1),
            height: MediaQuery.of(context).size.height / 5,
            child: PageView.builder(
              padEnds: false,
              controller: _pageController,
              physics: const AlwaysScrollableScrollPhysics(),
              itemCount: 3,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {},
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8)),
                    margin: const EdgeInsets.only(left: 18),
                    padding: const EdgeInsets.only(
                        left: 12, right: 0, top: 15, bottom: 0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Готов к выдаче",
                                  style: TextStyle(
                                      color: Color.fromRGBO(255, 112, 17, 1),
                                      fontWeight: FontWeight.w700,
                                      fontSize: 16),
                                ),
                                Text(
                                  "Заказ №10021122",
                                  style: TextStyle(
                                      color: Color.fromRGBO(123, 123, 123, 1),
                                      fontWeight: FontWeight.w600,
                                      fontSize: 14),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 12.0),
                              child: Image.asset(
                                "assets/icons/check.png",
                                width: 32,
                                height: 32,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  "Самовывоз до 29 марта",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 14),
                                ),
                                Container(
                                  height: 34,
                                  width: 141,
                                  decoration: BoxDecoration(
                                      color:
                                          const Color.fromRGBO(255, 112, 17, 1),
                                      borderRadius: BorderRadius.circular(8)),
                                  margin: const EdgeInsets.only(
                                      top: 18, bottom: 14),
                                  alignment: Alignment.center,
                                  child: const Text(
                                    "Забрать заказ",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w700,
                                        fontSize: 14),
                                  ),
                                )
                              ],
                            ),
                            Expanded(
                              child: Image.asset(
                                "assets/icons/box.png",
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          Container(
            padding: const EdgeInsets.only(left: 15),
            alignment: Alignment.centerLeft,
            decoration: BoxDecoration(
              color: const Color.fromRGBO(240, 240, 240, 1),
              borderRadius: BorderRadius.circular(10),
            ),
            height: 40,
            margin: const EdgeInsets.only(
              left: 20,
              right: 20,
              top: 20,
              bottom: 20,
            ),
            child: TextField(
              textAlign: TextAlign.start,
              textAlignVertical: TextAlignVertical.center,
              decoration: InputDecoration(
                isDense: true,
                icon: Image.asset(
                  "assets/icons/search.png",
                  height: 20,
                  width: 20,
                ),
                hintText: "Поиск товаров",
                contentPadding: EdgeInsets.zero,
                border: InputBorder.none,
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                errorBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(bottom: 20),
            color: Colors.white,
            height: MediaQuery.of(context).size.height / 5.5,
            child: PageView.builder(
              padEnds: false,
              controller: _pageController,
              physics: const AlwaysScrollableScrollPhysics(),
              itemCount: 3,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {},
                  child: Container(
                    margin: const EdgeInsets.only(left: 14),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.asset(
                        "assets/images/banner_1.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          Container(
            height: 40,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: const Color.fromRGBO(255, 112, 17, 1),
            ),
            margin: const EdgeInsets.only(left: 20, right: 20),
            alignment: Alignment.center,
            child: const Text(
              "Все акции",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                  fontSize: 16),
            ),
          ),
          const Padding(
            padding:
                EdgeInsets.only(left: 20.0, right: 20, top: 34, bottom: 18),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Товар дня",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                      fontSize: 22),
                ),
                Text(
                  "22:33:15",
                  style: TextStyle(
                      color: Color.fromRGBO(123, 123, 123, 1),
                      fontWeight: FontWeight.w600,
                      fontSize: 15),
                ),
              ],
            ),
          ),
          Container(
            height: 384,
            width: double.infinity,
            margin: const EdgeInsets.only(left: 20, right: 20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  spreadRadius: 5,
                  blurRadius: 8,
                  offset: const Offset(0, 5),
                ),
              ],
            ),
            padding: const EdgeInsets.only(top: 11, bottom: 10),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      "assets/icons/popular.png",
                      height: 23,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0, bottom: 20),
                      child: Image.asset(
                        "assets/images/ps5.png",
                        height: 170,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    )
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.only(
                      left: 20.0, right: 20, top: 20, bottom: 10),
                  child: Text(
                    "Микроволновая печь соло Gorenje MO17E1W",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 20.0, right: 20, top: 10, bottom: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "2 000 000 сум",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                                fontSize: 14,
                              ),
                            ),
                            Text(
                              "1 750 000 сум",
                              style: TextStyle(
                                color: Color.fromRGBO(255, 112, 17, 1),
                                fontWeight: FontWeight.w700,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 32,
                        width: 86,
                        padding: const EdgeInsets.all(3),
                        decoration: BoxDecoration(
                            color: const Color.fromRGBO(255, 112, 17, 1),
                            borderRadius: BorderRadius.circular(8)),
                        child: Image.asset(
                          "assets/icons/cart.png",
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 14, bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/images/icons_1.png",
                  width: 34,
                ),
                Image.asset(
                  "assets/images/icons_2.png",
                  width: 34,
                ),
                Image.asset(
                  "assets/images/icons_3.png",
                  width: 34,
                )
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(
              left: 20,
              top: 10,
              right: 20,
              bottom: 10,
            ),
            child: Text(
              "Рекомендуем вам",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                  fontSize: 22),
            ),
          ),
          SizedBox(
            height: 34,
            child: ListView(
              physics: const AlwaysScrollableScrollPhysics(),
              scrollDirection: Axis.horizontal,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 20.0),
                  child: Text(
                    "Новинки",
                    style: TextStyle(
                        color: Color.fromRGBO(123, 123, 123, 1),
                        fontWeight: FontWeight.w600,
                        fontSize: 16),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Column(
                    children: [
                      const Text(
                        "Популярное",
                        style: TextStyle(
                            color: Color.fromRGBO(255, 112, 17, 1),
                            fontWeight: FontWeight.w600,
                            fontSize: 16),
                      ),
                      Container(
                        height: 1,
                        width: 100,
                        color: const Color.fromRGBO(255, 112, 17, 1),
                      ),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 20.0),
                  child: Text(
                    "Скидки + Рассрочка",
                    style: TextStyle(
                        color: Color.fromRGBO(123, 123, 123, 1),
                        fontWeight: FontWeight.w600,
                        fontSize: 16),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 20.0),
                  child: Text(
                    "Хиты продаж",
                    style: TextStyle(
                        color: Color.fromRGBO(123, 123, 123, 1),
                        fontWeight: FontWeight.w600,
                        fontSize: 16),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.only(bottom: 5),
            color: Colors.white,
            height: 435,
            child: PageView.builder(
              padEnds: false,
              controller: _pageController2,
              physics: const AlwaysScrollableScrollPhysics(),
              itemCount: 3,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {},
                  child: Container(
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.1),
                            spreadRadius: 3,
                            blurRadius: 5,
                            offset: const Offset(0, 1),
                          ),
                        ],
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8)),
                    margin:
                        const EdgeInsets.only(left: 18, top: 10, bottom: 10),
                    padding: const EdgeInsets.only(
                        left: 12, right: 0, top: 15, bottom: 0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              "assets/images/ps5.png",
                              width: 80,
                              height: 120,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(
                                  width: 200,
                                  child: Text(
                                    "Электрическая варочная поверхность MAUNFELD EEHE.32.4B",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 14),
                                  ),
                                ),
                                const SizedBox(height: 10),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "2 000 000 сум",
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w600,
                                            fontSize: 12,
                                          ),
                                        ),
                                        Text(
                                          "1 750 000 сум",
                                          style: TextStyle(
                                            color:
                                                Color.fromRGBO(255, 112, 17, 1),
                                            fontWeight: FontWeight.w700,
                                            fontSize: 14,
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(width: 10),
                                    Container(
                                      height: 32,
                                      width: 65,
                                      padding: const EdgeInsets.all(3),
                                      decoration: BoxDecoration(
                                          color: const Color.fromRGBO(
                                              255, 112, 17, 1),
                                          borderRadius:
                                              BorderRadius.circular(8)),
                                      child: Image.asset(
                                        "assets/icons/cart.png",
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              "assets/images/ps5.png",
                              width: 80,
                              height: 120,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(
                                  width: 200,
                                  child: Text(
                                    "Электрическая варочная поверхность MAUNFELD EEHE.32.4B",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 14),
                                  ),
                                ),
                                const SizedBox(height: 10),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "2 000 000 сум",
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w600,
                                            fontSize: 12,
                                          ),
                                        ),
                                        Text(
                                          "1 750 000 сум",
                                          style: TextStyle(
                                            color:
                                                Color.fromRGBO(255, 112, 17, 1),
                                            fontWeight: FontWeight.w700,
                                            fontSize: 14,
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(width: 10),
                                    Container(
                                      height: 32,
                                      width: 65,
                                      padding: const EdgeInsets.all(3),
                                      decoration: BoxDecoration(
                                          color: const Color.fromRGBO(
                                              255, 112, 17, 1),
                                          borderRadius:
                                              BorderRadius.circular(8)),
                                      child: Image.asset(
                                        "assets/icons/cart.png",
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              "assets/images/ps5.png",
                              width: 80,
                              height: 120,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(
                                  width: 200,
                                  child: Text(
                                    "Электрическая варочная поверхность MAUNFELD EEHE.32.4B",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 14),
                                  ),
                                ),
                                const SizedBox(height: 10),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "2 000 000 сум",
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w600,
                                            fontSize: 12,
                                          ),
                                        ),
                                        Text(
                                          "1 750 000 сум",
                                          style: TextStyle(
                                            color:
                                                Color.fromRGBO(255, 112, 17, 1),
                                            fontWeight: FontWeight.w700,
                                            fontSize: 14,
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(width: 10),
                                    Container(
                                      height: 32,
                                      width: 65,
                                      padding: const EdgeInsets.all(3),
                                      decoration: BoxDecoration(
                                          color: const Color.fromRGBO(
                                              255, 112, 17, 1),
                                          borderRadius:
                                              BorderRadius.circular(8)),
                                      child: Image.asset(
                                        "assets/icons/cart.png",
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          Container(
            height: 40,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: const Color.fromRGBO(255, 112, 17, 1),
            ),
            margin: const EdgeInsets.only(left: 20, right: 20),
            alignment: Alignment.center,
            child: const Text(
              "Смотреть все 15",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                  fontSize: 16),
            ),
          ),
          Container(
            height: 75,
            padding: const EdgeInsets.only(
                left: 20.0, right: 20, top: 30, bottom: 15),
            child: const Wrap(
              children: [
                Text(
                  "ORZU",
                  style: TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.w700,
                      fontSize: 22),
                ),
                Text(
                  "BLOG",
                  style: TextStyle(
                      color: Color.fromRGBO(255, 112, 17, 1),
                      fontWeight: FontWeight.w700,
                      fontSize: 22),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.only(bottom: 20),
            color: Colors.white,
            height: MediaQuery.of(context).size.height / 5,
            width: double.infinity,
            child: PageView.builder(
              padEnds: false,
              controller: _pageController,
              physics: const AlwaysScrollableScrollPhysics(),
              itemCount: 3,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {},
                  child: Container(
                    margin: const EdgeInsets.only(left: 14),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        "assets/images/windows.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          Container(
            height: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: const Color.fromRGBO(255, 112, 17, 1),
            ),
            margin: const EdgeInsets.only(left: 20, right: 20),
            alignment: Alignment.center,
            child: const Text(
              "Читать все",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                  fontSize: 16),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              spreadRadius: 8,
              blurRadius: 8,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        height: 75,
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/icons/home.png",
                  height: 26,
                  width: 26,
                ),
                const Text(
                  "Главная",
                  style: TextStyle(
                      color: const Color.fromRGBO(255, 112, 17, 1),
                      fontWeight: FontWeight.w600,
                      fontSize: 12),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/icons/search_alt.png",
                  height: 26,
                  width: 26,
                ),
                const Text(
                  "Каталог",
                  style: TextStyle(
                      color: Color.fromRGBO(123, 123, 123, 1),
                      fontWeight: FontWeight.w600,
                      fontSize: 12),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/icons/cart_alt.png",
                  height: 26,
                  width: 26,
                ),
                const Text(
                  "Корзина",
                  style: TextStyle(
                      color: Color.fromRGBO(123, 123, 123, 1),
                      fontWeight: FontWeight.w600,
                      fontSize: 12),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/icons/heart.png",
                  height: 26,
                  width: 26,
                ),
                const Text(
                  "Избранное",
                  style: TextStyle(
                      color: Color.fromRGBO(123, 123, 123, 1),
                      fontWeight: FontWeight.w600,
                      fontSize: 12),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/icons/user.png",
                  height: 26,
                  width: 26,
                ),
                const Text(
                  "Профиль",
                  style: TextStyle(
                      color: Color.fromRGBO(123, 123, 123, 1),
                      fontWeight: FontWeight.w600,
                      fontSize: 12),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
