# Generated by ./update.sh script
{ javaVersionPlatform, ... }:
[
  {
    sha256 = {
      "11-linux-aarch64" = "0hsjxp6ly7jsn9k94fddcl7afc5gda66jyppcnfvslishbizqd0i";
      "17-linux-aarch64" = "09hzl80m7f5ppmcvryz9aq0yw9scdkp5dqhblrqnkzyhvdjl5ycn";
      "11-linux-amd64" = "1ylk5l933z813k0k1xlayiv8fa0f1gmpr66bma51532iy3mch6rs";
      "17-linux-amd64" = "1xn3shwkai61vvzsg595k8776a21ds00w2pjlscvfcbs1ag07n0i";
      "11-darwin-amd64" = "0qpqnnmqxvxzj3mwz05acpg4n8ffqsz0sji8lbl03fgswpvgfavc";
      "17-darwin-amd64" = "1akpsrd9r2igcls0cvhpqw3jrnh59m8z80knx83lmj0cj836a8v0";
    }.${javaVersionPlatform} or null;
    url = "https://github.com/graalvm/graalvm-ce-builds/releases/download/vm-21.3.0/graalvm-ce-java${javaVersionPlatform}-21.3.0.tar.gz";
  }
  {
    sha256 = {
      "11-linux-aarch64" = "0qlmg5fwvqsb5ab3irj2hrcd5jc94mibnlz1gvzpnq85rw1zcb6h";
      "17-linux-aarch64" = "0jmarhwngs6vpbcgsix0dxhj42qj9vnk3vln8fhdxmydwnns8r1m";
      "11-linux-amd64" = "0kvnjr55rizy53vn0ff9w27z1qh9d1vp3s7r1kdl0wyhrbhd8n49";
      "17-linux-amd64" = "0h14sml42jda54agjs1prfnyjaxxsc67350fr51n8p20nl28lj6z";
      "11-darwin-amd64" = "1mg8c8hh8wmbwsisgarmp35jd0dall1fwdv49mggp74hicbc32h3";
      "17-darwin-amd64" = "0qz0xf2ph9gi45vvri7vphxh35m11nk7sa8nkwxl28l8bza0kb40";
    }.${javaVersionPlatform} or null;
    url = "https://github.com/graalvm/graalvm-ce-builds/releases/download/vm-21.3.0/native-image-installable-svm-java${javaVersionPlatform}-21.3.0.jar";
  }
  {
    sha256 = {
      "11-linux-aarch64" = "02rvwl1nng8d3qn226rjx5yq2blxs4yz009ab928qanhmb4vhv8b";
      "17-linux-aarch64" = "13kaxbgfp9pm6s28i5hfyg957iiwzrxf0ibibkv2yndgj64vj8xg";
      "11-linux-amd64" = "0zz62zr7imjaw9a3j5m66xs7c72cqb1i74ab3rnlh0dgs1mdpljg";
      "17-linux-amd64" = "1v2iwznlav8dsjj30nlhvsvv7pxmyzkhkp1p7spjjma09d34q4iv";
      "11-darwin-amd64" = "1wiv0299b2xrc229alczmjfj1bsn90p0wdm64rr39xnyyhbqrr80";
      "17-darwin-amd64" = "095sii8ibjcvvc6wnxk77ax151c4zgj8bpp81q3kyaazgpzvrk5s";
    }.${javaVersionPlatform} or null;
    url = "https://github.com/oracle/truffleruby/releases/download/vm-21.3.0/ruby-installable-svm-java${javaVersionPlatform}-21.3.0.jar";
  }
  {
    sha256 = {
      "11-linux-aarch64" = "1ck4c1z98h1zn4i6xhh1hb6w2jab6n17ddykb72xxw4vig9nhlc7";
      "17-linux-aarch64" = "0p9gx5iq730br9wvacxs4403anxnjln6mx8v0dl4w4lhikjxsy8x";
      "11-linux-amd64" = "0gy8jj9d9msmj0i44sysiwq3j2k2w2g47fhq6y1aq47n3kmwj9kv";
      "17-linux-amd64" = "0qk8rgbmnk84isnb33x5bbh17bnnmq9yqasfgy5p953min6pbxj7";
      "11-darwin-amd64" = "0agw6k3jn2jh8wyc9h8rvzlgs96qh4nlj0y8nyzsmidvwq2ahl00";
      "17-darwin-amd64" = "0l1il0rq48sw6sha9jr0xphjgrm7q0kywy8z94mabm9maqh7l3rn";
    }.${javaVersionPlatform} or null;
    url = "https://github.com/graalvm/graalvm-ce-builds/releases/download/vm-21.3.0/wasm-installable-svm-java${javaVersionPlatform}-21.3.0.jar";
  }
  {
    sha256 = {
      "11-linux-amd64" = "1l5av2v459q88zfl83877h7b3426z3d86kp6wqjvz2441brvidi0";
      "17-linux-amd64" = "100p1cgw0z4yfy4axb3gr32m8jnyx1f8bj6f6kk0mf3l8fv2kb7p";
      "11-darwin-amd64" = "06694n74dzsfwlli1sjdsrfbj9ngw7bhrcayvy4sgy2va5qpdjs0";
      "17-darwin-amd64" = "1qwg45q0760lsa62h0nk2zdv0r1npr82bh6p1z3md6pjppm7i025";
    }.${javaVersionPlatform} or null;
    url = "https://github.com/graalvm/graalpython/releases/download/vm-21.3.0/python-installable-svm-java${javaVersionPlatform}-21.3.0.jar";
  }
]
