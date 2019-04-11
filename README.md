# README

HEADS UP! i18n 1.1 changed fallbacks to exclude default locale.
But that may break your application.

Please check your Rails app for 'config.i18n.fallbacks = true'.
If you're using I18n (>= 1.1.0) and Rails (< 5.2.2), this should be
'config.i18n.fallbacks = [I18n.default_locale]'.
If not, fallbacks will be broken in your app by I18n 1.1.x.

For more info see:
https://github.com/svenfuchs/i18n/releases/tag/v1.1.0

Post-install message from chromedriver-helper:

+--------------------------------------------------------------------+
| |
| NOTICE: chromedriver-helper is deprecated after 2019-03-31. |
| |
| Please update to use the 'webdrivers' gem instead. |
| See https://github.com/flavorjones/chromedriver-helper/issues/83 |
| |
+--------------------------------------------------------------------+

Post-install message from sass:

Ruby Sass has reached end-of-life and should no longer be used.

- If you use Sass as a command-line tool, we recommend using Dart Sass, the new
  primary implementation: https://sass-lang.com/install

- If you use Sass as a plug-in for a Ruby web framework, we recommend using the
  sassc gem: https://github.com/sass/sassc-ruby#readme

- For more details, please refer to the Sass blog:
  https://sass-lang.com/blog/posts/7828841

         run  bundle exec spring binstub --all

- bin/rake: spring inserted
- bin/rails: spring inserted
