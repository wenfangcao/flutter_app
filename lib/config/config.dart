bool isDev = true;
//bool isDev = false;

class api {
  Map<String, String> dev =  {
     'url': 'https://dev.dongxicc.cn/WeCloud',
  };
  Map<String, String> prod = {
      'url': 'https://dev.dongxicc.cn/WeCloud',
  };

  get(String context) {
    return isDev ? dev[context] : prod[context] ;
  }
}