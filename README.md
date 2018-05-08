# doccoli-jekyll

The `doccoli-jekyll` is the Jekyll theme in use for [documentation](https://bubblin.io/docs/) at Bubblin Superbooks. This theme is particularly useful for solo founders (developers) or small bootstrapped teams with very limited time and resources.

Tack a responsive "blog-like" implementation of SEO-optimized documentation onto your website; it will sit on a url like so, right next to your actual product or website:

> https://example.com/docs/

A tutorial on how to set up documentation using the `doccoli-jekyll` theme alongside a rails app is available [here](https://bubblin.io/blog/).

![doccoli-jekyll theme preview](/screenshot.jpg)

## Installation

Add this line to your Jekyll site's Gemfile:

```ruby
gem "doccoli-jekyll"
```

And add this line to your Jekyll site (_config.yml) and set `search: true`:

```yaml
theme: doccoli-jekyll

search: true
```

And then execute:

    $ bundle


### Customization

To override the default structure and style of doccoli-jekyll, simply create the concerned directory at the root of your site, copy the file you wish to customize to that directory, and then edit the file.
e.g., to override the [`_includes/head.html `](_includes/head.html) file to specify a custom style path, create an `_includes` directory, copy `_includes/head.html` from minima gem folder to `<yoursite>/_includes` and start editing that file.

The site's default CSS has now moved to a new place within the gem itself, [`assets/main.scss`](assets/main.scss). To **override the default CSS**, the file has to exist at your site source. Do either of the following:
- Create a new instance of `main.scss` at site source.
  - Create a new file `main.scss` at `<your-site>/assets/`
  - Add the frontmatter dashes, and
  - Add `@import "doccoli-jekyll";`, to `<your-site>/assets/main.scss`
  - Add your custom CSS.
- Download the file from this repo
  - Create  a new file `main.scss` at `<your-site>/assets/`
  - Copy the contents at [assets/main.scss](assets/main.scss) onto the `main.scss` you just created, and edit away!
- Copy directly from doccoli-jekyll gem
  - Go to your local doccoli-jekyll gem installation directory ( run `bundle show doccoli-jekyll` to get the path to it ).
  - Copy the `assets/` folder from there into the root of `<your-site>`
  - Change whatever values you want, inside `<your-site>/assets/main.scss`

--

### Change default date format

You can change the default date format by specifying `site.doccoli-jekyll.date_format`
in `_config.yml`.

```
# doccoli-jekyll date format
# Refer to http://shopify.github.io/liquid/filters/date/ to customize
doccoli-jekyll:
  date_format: "%b %-d, %Y"
```

--

### Enabling comments (via Disqus)

Optionally, if you have a Disqus account, you can tell Jekyll to use it to show a comments section below each post.

To enable it, add the following lines to your Jekyll site:

```yaml
  disqus:
    shortname: my_disqus_shortname
```

You can find out more about Disqus' shortnames [here](https://help.disqus.com/customer/portal/articles/466208).

Comments are enabled by default and will only appear in production, i.e., `JEKYLL_ENV=production`

If you don't want to display comments for a particular post you can disable them by adding `comments: false` to that post's YAML Front Matter.

--

### Enabling Google Analytics

To enable Google Anaytics, add the following lines to your Jekyll site:

```yaml
  google_analytics: UA-NNNNNNNN-N
```

Google Analytics will only appear in production, i.e., `JEKYLL_ENV=production`

### Internal pages

To add internal pages inside your documentation that don't appear on the sidebar directly create a `_pages` directory as sibling to _posts. Then add the following to your `_config.yml`

```yaml
include: ['_pages']

collections:
  pages:
    output: true
    permalink: /:path
```

Any `.markdown` file inside `_pages` directory will be available as HTML over the desired `permalink`. Yay!

## Contributing

Bug reports and pull requests are welcome on GitHub at . This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## Development

To set up your environment to develop this theme, run `script/bootstrap`.

To test your theme, run `script/server` (or `bundle exec jekyll serve`) and open your browser at `http://localhost:4000`. This starts a Jekyll server using your theme and the contents. As you make modifications, your site will regenerate and you should see the changes in the browser after a refresh.

## License

The theme is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
