import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SliverAppBarPage extends StatefulWidget {
  const SliverAppBarPage({Key? key}) : super(key: key);

  @override
  _SliverAppBarPageState createState() => _SliverAppBarPageState();
}

class _SliverAppBarPageState extends State<SliverAppBarPage> {
  double _textScale = 1.0;
  bool _isLarge = false;

  void _toggleLargeFont(bool isLarge) {
    _textScale = isLarge ? 1.2 : 1.0;
    setState(() {
      _isLarge = isLarge;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MediaQuery(
      data: MediaQuery.of(context).copyWith(
        textScaleFactor: _textScale,
      ),
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              backgroundColor: Colors.blueAccent.withOpacity(0.3),
              floating: true,
              pinned: true,
              snap: false,
              expandedHeight: 180,
              toolbarHeight: 60,
              flexibleSpace: FlexibleSpaceBar(
                title: Text(
                  "記事カテゴリー",
                  style: GoogleFonts.kosugiMaru(),
                ),
                background: Stack(
                  children: [
                    Container(
                      width: double.infinity,
                      child: Image.network(
                        "https://images.pexels.com/photos/267392/pexels-photo-267392.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
                        fit: BoxFit.fill,
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: FractionalOffset.topCenter,
                          end: FractionalOffset.bottomCenter,
                          stops: [0.5, 1],
                          colors: [
                            Colors.grey.withOpacity(0),
                            Colors.black38,
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SliverList(
              delegate: SliverChildListDelegate(
                <Widget>[
                  Container(
                    color: Colors.grey[200],
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 20.0,
                        right: 20.0,
                        bottom: 20.0,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 8,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                "文字を大きく",
                                style: GoogleFonts.sawarabiGothic(),
                              ),
                              Switch(
                                value: _isLarge,
                                onChanged: _toggleLargeFont,
                              ),
                            ],
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Expanded(
                                child: Text(
                                  "Sept. 29 2020",
                                  style: GoogleFonts.lato(),
                                ),
                              ),
                              IconButton(
                                icon: Icon(
                                  Icons.share,
                                  color: Colors.blueAccent,
                                ),
                                onPressed: () {},
                              ),
                            ],
                          ),
                          Text(
                            "記事タイトル記事タイトル記事タイトル記事タイトル記事タイトル記事タイトル",
                            style: GoogleFonts.sawarabiGothic(),
                          ),
                          Divider(
                            height: 30,
                            thickness: 1,
                          ),
                          SizedBox(
                            height: 8.0,
                          ),
                          Row(
                            children: [
                              CircleAvatar(
                                backgroundImage: NetworkImage(
                                  'https://images.pexels.com/photos/736716/pexels-photo-736716.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
                                ),
                                radius: 26,
                                backgroundColor: Colors.grey[200],
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "山田　太郎",
                                  ),
                                  Text(
                                    "ジャーナリスト",
                                  ),
                                ],
                              ),
                              Expanded(
                                child: SizedBox(),
                              ),
                              Icon(
                                Icons.favorite_border,
                                color: Colors.blueAccent,
                              ),
                              SizedBox(
                                width: 5.0,
                              ),
                              Text(
                                "350",
                                style: GoogleFonts.lato(),
                              ),
                              SizedBox(
                                width: 16.0,
                              ),
                              Icon(
                                Icons.comment,
                                color: Colors.blueAccent,
                              ),
                              SizedBox(
                                width: 5.0,
                              ),
                              Text(
                                "25",
                                style: GoogleFonts.lato(),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Text(
                            '''ゴーシュは町の活動写真館でセロを弾く係りでした。けれどもあんまり上手でないという評判でした。上手でないどころではなく実は仲間の楽手のなかではいちばん下手でしたから、いつでも楽長にいじめられるのでした。
　ひるすぎみんなは楽屋に円くならんで今度の町の音楽会へ出す第六｜交響曲《こうきょうきょく》の練習をしていました。
　トランペットは一生けん命歌っています。
　ヴァイオリンも二いろ風のように鳴っています。
　クラリネットもボーボーとそれに手伝っています。
　ゴーシュも口をりんと結んで眼《め》を皿《さら》のようにして楽譜《がくふ》を見つめながらもう一心に弾いています。
　にわかにぱたっと楽長が両手を鳴らしました。みんなぴたりと曲をやめてしんとしました。楽長がどなりました。
「セロがおくれた。トォテテ　テテテイ、ここからやり直し。はいっ。」
　みんなは今の所の少し前の所からやり直しました。ゴーシュは顔をまっ赤にして額に汗《あせ》を出しながらやっといま云《い》われたところを通りました。ほっと安心しながら、つづけて弾いていますと楽長がまた手をぱっと拍《う》ちました。
「セロっ。糸が合わない。困るなあ。ぼくはきみにドレミファを教えてまでいるひまはないんだがなあ。」
　みんなは気の毒そうにしてわざとじぶんの譜をのぞき込《こ》んだりじぶんの楽器をはじいて見たりしています。ゴーシュはあわてて糸を直しました。これはじつはゴーシュも悪いのですがセロもずいぶん悪いのでした。
「今の前の小節から。はいっ。」
　みんなはまたはじめました。ゴーシュも口をまげて一生けん命です。そしてこんどはかなり進みました。いいあんばいだと思っていると楽長がおどすような形をしてまたぱたっと手を拍ちました。またかとゴーシュはどきっとしましたがありがたいことにはこんどは別の人でした。ゴーシュはそこでさっきじぶんのときみんながしたようにわざとじぶんの譜へ眼を近づけて何か考えるふりをしていました。
「ではすぐ今の次。はいっ。」
　そらと思って弾き出したかと思うといきなり楽長が足をどんと踏《ふ》んでどなり出しました。
「だめだ。まるでなっていない。このへんは曲の心臓なんだ。それがこんながさがさしたことで。諸君。演奏までもうあと十日しかないんだよ。音楽を専門にやっているぼくらがあの金沓鍛冶《かなぐつかじ》だの砂糖屋の丁稚《でっち》なんかの寄り集りに負けてしまったらいったいわれわれの面目《めんもく》はどうなるんだ。おいゴーシュ君。君には困るんだがなあ。表情ということがまるでできてない。怒《おこ》るも喜ぶも感情というものがさっぱり出ないんだ。それにどうしてもぴたっと外の楽器と合わないもなあ。いつでもきみだけとけた靴《くつ》のひもを引きずってみんなのあとをついてあるくようなんだ、困るよ、しっかりしてくれないとねえ。光輝《こうき》あるわが金星音楽団がきみ一人のために悪評をとるようなことでは、みんなへもまったく気の毒だからな。では今日は練習はここまで、休んで六時にはかっきりボックスへ入ってくれ給《たま》え。」
　みんなはおじぎをして、それからたばこをくわえてマッチをすったりどこかへ出て行ったりしました。ゴーシュはその粗末《そまつ》な箱《はこ》みたいなセロをかかえて壁《かべ》の方へ向いて口をまげてぼろぼろ泪《なみだ》をこぼしましたが、気をとり直してじぶんだけたったひとりいまやったところをはじめからしずかにもいちど弾きはじめました。
　その晩｜遅《おそ》くゴーシュは何か巨《おお》きな黒いものをしょってじぶんの家へ帰ってきました。家といってもそれは町はずれの川ばたにあるこわれた水車小屋で、ゴーシュはそこにたった一人ですんでいて午前は小屋のまわりの小さな畑でトマトの枝《えだ》をきったり甘藍《キャベジ》の虫をひろったりしてひるすぎになるといつも出て行っていたのです。ゴーシュがうちへ入ってあかりをつけるとさっきの黒い包みをあけました。それは何でもない。あの夕方のごつごつしたセロでした。ゴーシュはそれを床《ゆか》の上にそっと置くと、いきなり棚《たな》からコップをとってバケツの水をごくごくのみました。
　それから頭を一つふって椅子《いす》へかけるとまるで虎《とら》みたいな勢《いきおい》でひるの譜を弾きはじめました。譜をめくりながら弾いては考え考えては弾き一生けん命しまいまで行くとまたはじめからなんべんもなんべんもごうごうごうごう弾きつづけました。
　夜中もとうにすぎてしまいはもうじぶんが弾いているのかもわからないようになって顔もまっ赤になり眼もまるで血走ってとても物凄《ものすご》い顔つきになりいまにも倒《たお》れるかと思うように見えました。
　そのとき誰《たれ》かうしろの扉《と》をとんとんと叩《たた》くものがありました。
「ホーシュ君か。」ゴーシュはねぼけたように叫《さけ》びました。ところがすうと扉を押《お》してはいって来たのはいままで五六ぺん見たことのある大きな三毛猫《みけねこ》でした。
　ゴーシュの畑からとった半分熟したトマトをさも重そうに持って来てゴーシュの前におろして云いました。
「ああくたびれた。なかなか運搬《うんぱん》はひどいやな。」
「何だと」ゴーシュがききました。
「これおみやです。たべてください。」三毛猫が云いました。
　ゴーシュはひるからのむしゃくしゃを一ぺんにどなりつけました。
「誰がきさまにトマトなど持ってこいと云った。第一おれがきさまらのもってきたものなど食うか。それからそのトマトだっておれの畑のやつだ。何だ。赤くもならないやつをむしって。いままでもトマトの茎《くき》をかじったりけちらしたりしたのはおまえだろう。行ってしまえ。ねこめ。」
　すると猫は肩《かた》をまるくして眼をすぼめてはいましたが口のあたりでにやにやわらって云いました。
「先生、そうお怒りになっちゃ、おからだにさわります。それよりシューマンのトロメライをひいてごらんなさい。きいてあげますから。」
「生意気なことを云うな。ねこのくせに。」
　セロ弾きはしゃくにさわってこのねこのやつどうしてくれようとしばらく考えました。
「いやご遠慮《えんりょ》はありません。どうぞ。わたしはどうも先生の音楽をきかないとねむられないんです。」
「生意気だ。生意気だ。生意気だ。」
　ゴーシュはすっかりまっ赤になってひるま楽長のしたように足ぶみしてどなりましたがにわかに気を変えて云いました。
「では弾くよ。」
　ゴーシュは何と思ったか扉《と》にかぎをかって窓もみんなしめてしまい、それからセロをとりだしてあかしを消しました。すると外から二十日過ぎの月のひかりが室《へや》のなかへ半分ほどはいってきました。
「何をひけと。」
「トロメライ、ロマチックシューマン作曲。」猫は口を拭《ふ》いて済まして云いました。
「そうか。トロメライというのはこういうのか。」
　セロ弾きは何と思ったかまずはんけちを引きさいてじぶんの耳の穴へぎっしりつめました。それからまるで嵐《あらし》のような勢《いきおい》で「印度《インド》の虎狩《とらがり》」という譜を弾きはじめました。
　すると猫はしばらく首をまげて聞いていましたがいきなりパチパチパチッと眼をしたかと思うとぱっと扉の方へ飛びのきました。そしていきなりどんと扉へからだをぶっつけましたが扉はあきませんでした。猫はさあこれはもう一生一代の失敗をしたという風にあわてだして眼や額からぱちぱち火花を出しました。するとこんどは口のひげからも鼻からも出ましたから猫はくすぐったがってしばらくくしゃみをするような顔をしてそれからまたさあこうしてはいられないぞというようにはせあるきだしました。ゴーシュはすっかり面白《おもしろ》くなってますます勢よくやり出しました。
「先生もうたくさんです。たくさんですよ。ご生ですからやめてください。これからもう先生のタクトなんかとりませんから。」
「だまれ。これから虎をつかまえる所だ。」
　猫はくるしがってはねあがってまわったり壁にからだをくっつけたりしましたが壁についたあとはしばらく青くひかるのでした。しまいは猫はまるで風車のようにぐるぐるぐるぐるゴーシュをまわりました。
　ゴーシュもすこしぐるぐるして来ましたので、
「さあこれで許してやるぞ」と云いながらようようやめました。
　すると猫もけろりとして
「先生、こんやの演奏はどうかしてますね。」と云いました。
　セロ弾きはまたぐっとしゃくにさわりましたが何気ない風で巻たばこを一本だして口にくわえそれからマッチを一本とって
「どうだい。工合《ぐあい》をわるくしないかい。舌を出してごらん。」
　猫はばかにしたように尖《とが》った長い舌をベロリと出しました。 （省略）''',
                            style: GoogleFonts.sawarabiGothic(),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
