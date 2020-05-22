import 'package:flutter_tiktok/style/text.dart';
import 'package:flutter_tiktok/style/style.dart';
import 'package:flutter_tiktok/views/loadingButton.dart';
import 'package:flutter_tiktok/views/tilTokAppBar.dart';
import 'package:flutter/material.dart';
import 'package:tapped/tapped.dart';

class NewWalletPage extends StatefulWidget {
  @override
  _NewWalletPageState createState() => _NewWalletPageState();
}

class _NewWalletPageState extends State<NewWalletPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorPlate.white,
      body: Column(
        children: <Widget>[
          TikTokAppbar(title: '钱包'),
          Expanded(
            child: ListView(
              padding: EdgeInsets.zero,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(bottom: 12),
                  child: FittedBox(
                    fit: BoxFit.cover,
                    child: Stack(
                      children: <Widget>[
                        Container(
                          height: 190,
                          width: 375,
                          color: ColorPlate.orange,
                        ),
                        Container(
                          width: 375,
                          margin: EdgeInsets.only(top: 112),
                          padding: EdgeInsets.symmetric(horizontal: 12),
                          child: Row(
                            children: <Widget>[
                              Expanded(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: <Widget>[
                                    Container(
                                      padding: EdgeInsets.only(bottom: 4),
                                      child: AdMucisText.normal(
                                        '元',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          color: ColorPlate.clear,
                                        ),
                                      ),
                                    ),
                                    AdMucisText.big(
                                      '666',
                                      style: TextStyle(
                                        fontSize: 30,
                                        color: ColorPlate.darkGray,
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.only(bottom: 4),
                                      child: AdMucisText.normal(
                                        '币',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          color: ColorPlate.darkGray,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: <Widget>[
                                    Container(
                                      padding: EdgeInsets.only(bottom: 4),
                                      child: AdMucisText.normal(
                                        '元',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          color: ColorPlate.clear,
                                        ),
                                      ),
                                    ),
                                    AdMucisText.big(
                                      '66.66',
                                      style: TextStyle(
                                        fontSize: 30,
                                        color: ColorPlate.darkGray,
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.only(bottom: 4),
                                      child: AdMucisText.normal(
                                        '元',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          color: ColorPlate.darkGray,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                _Card(
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: AdMucisText.big(
                          '收益秒提现',
                          style: TextStyle(
                            color: ColorPlate.darkGray,
                          ),
                        ),
                      ),
                      Container(
                        width: 80,
                        child: AdMusicLoadingButton(
                          height: 26,
                          margin: EdgeInsets.zero,
                          buttonText: '去提现',
                          textColor: ColorPlate.darkGray,
                        ),
                      ),
                    ],
                  ),
                ),
                _Card(
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: AdMucisText.big(
                          '看视频赚收益',
                          style: TextStyle(
                            color: ColorPlate.darkGray,
                          ),
                        ),
                      ),
                      Container(
                        width: 80,
                        child: AdMusicLoadingButton(
                          height: 26,
                          margin: EdgeInsets.zero,
                          buttonText: '去赚钱',
                          textColor: ColorPlate.darkGray,
                        ),
                      ),
                    ],
                  ),
                ),
                _Card(
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: AdMucisText.big(
                          '善意点不足',
                          style: TextStyle(
                            color: ColorPlate.darkGray,
                          ),
                        ),
                      ),
                      Container(
                        width: 80,
                        child: AdMusicLoadingButton(
                          height: 26,
                          margin: EdgeInsets.zero,
                          buttonText: '去升级',
                          textColor: ColorPlate.darkGray,
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
    );
  }
}

class _Card extends StatelessWidget {
  final Widget child;
  const _Card({
    Key key,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(20, 6, 20, 10),
      padding: EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 16,
      ),
      decoration: ShapeDecoration(
        color: ColorPlate.white,
        shadows: [
          BoxShadow(
            color: ColorPlate.black.withOpacity(0.06),
            blurRadius: 28,
          )
        ],
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4),
        ),
      ),
      child: child,
    );
  }
}

class WalletPage extends StatefulWidget {
  @override
  _WalletPageState createState() => _WalletPageState();
}

class _WalletPageState extends State<WalletPage> {
  @override
  Widget build(BuildContext context) {
    Widget body = ListView(
      padding: EdgeInsets.only(
        bottom: 80 + MediaQuery.of(context).padding.bottom,
      ),
      children: <Widget>[
        Container(
          child: Column(
            children: <Widget>[
              Container(height: 30),
              Tapped(
                child: Text(
                  '金币余额',
                  style: StandardTextStyle.smallWithOpacity,
                ),
              ),
              Container(height: 4),
              Text(
                '12156.00',
                style: StandardTextStyle.big.apply(
                  fontSizeDelta: 14,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Text(
                  '充值',
                  style: StandardTextStyle.normal.apply(
                    color: ColorPlate.orange,
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: Text(
            '金币钱包',
            style: StandardTextStyle.smallWithOpacity,
          ),
        ),
        _UserInfoRow(
          title: '已领赏',
          rightIcon: Text(
            '15.62',
            style: StandardTextStyle.small,
          ),
        ),
        _UserInfoRow(
          title: '金币提现',
          rightIcon: Text(
            '296.0可提现',
            style: StandardTextStyle.small,
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: Text(
            '红包/善意点',
            style: StandardTextStyle.smallWithOpacity,
          ),
        ),
        _UserInfoRow(
          title: '等级',
          rightIcon: Text(
            '5级',
            style: StandardTextStyle.small,
          ),
        ),
        _UserInfoRow(
          title: '今日可领红包',
          rightIcon: Text(
            '12个',
            style: StandardTextStyle.small,
          ),
        ),
        _UserInfoRow(
          title: '可用善意点/总数',
          rightIcon: Text(
            '26/28',
            style: StandardTextStyle.small,
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: Text(
            '明细',
            style: StandardTextStyle.smallWithOpacity,
          ),
        ),
        _UserInfoRow(
          title: '领赏明细',
        ),
        _UserInfoRow(
          title: '打赏/消费明细',
        ),
      ],
    );
    body = Center(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
        ),
        child: body,
      ),
    );
    return Scaffold(
      body: Container(
        color: ColorPlate.back1,
        height: double.infinity,
        width: double.infinity,
        child: Column(
          children: <Widget>[
            TikTokAppbar(title: '钱包(旧)'),
            Expanded(child: body),
          ],
        ),
      ),
    );
  }
}

class _UserInfoRow extends StatelessWidget {
  _UserInfoRow({
    this.icon,
    this.title,
    this.rightIcon,
    this.onTap,
  });
  final Widget icon;
  final Widget rightIcon;
  final String title;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    Widget iconImg = Container(
      height: 24,
      width: 24,
      child: icon,
    );

    Widget row = Container(
      height: 48,
      padding: EdgeInsets.fromLTRB(16, 0, 16, 0),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.02),
        border: Border(
          bottom: BorderSide(color: Colors.white12),
        ),
      ),
      child: Row(
        children: <Widget>[
          icon != null ? iconImg : Container(),
          Expanded(
            child: Container(
              padding: EdgeInsets.only(left: 12),
              child: Text(
                title,
                style: TextStyle(fontSize: 14),
              ),
            ),
          ),
          Opacity(
            opacity: 0.6,
            child: rightIcon ??
                Icon(
                  Icons.arrow_forward_ios,
                  size: 12,
                ),
          ),
        ],
      ),
    );
    row = Tapped(
      onTap: onTap,
      child: row,
    );

    return row;
  }
}
