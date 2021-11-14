class Language {
  final int id;
  final String flag;
  final String name;
  final String languageCode;

  Language(this.id, this.flag, this.name, this.languageCode);

  static List<Language> languageList() {
    return <Language>[
      Language(1, "🇦🇫", "فارسی", "fa"),
      Language(2, "🇺🇸", "English", "en"),
      Language(5, "🇯🇵", "日本語", "ja"),
      Language(5, "🇹🇼", "繁體中文", "zh-TW"),
      Language(6, "🇨🇳", "簡體中文", "zh-CN"),
    ];
  }
}
