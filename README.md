# Jekyll lin theme

A slick minimalist theme for Jekyll built with [lin.css](https://lin-css.netlify.com/).

[Theme preview](https://jekyll-lin-theme.netlify.com)

## Quick start

1. Fork the this repository
2. Update the `_config.yml` file with your settings
3. Update the content at the `_posts` folder and the pages at the root (`about.md`, `contact.md`)
4. Commit and push the changes to your repository and follow the instructions to deploy your website to:
  - [Github pages](https://jekyllrb.com/docs/github-pages/)
  - or [Netlify](https://www.netlify.com/blog/2017/05/11/migrating-your-jekyll-site-to-netlify/)


## Installation

Add this line to your Jekyll site's Gemfile:

```ruby
gem "jekyll-lin"
```

And then execute:

    $ bundle


### Layouts

Refers to files within the `_layouts` directory, that define the markup for your theme.

  - `default.html` &mdash; The base layout that lays the foundation for subsequent layouts. The derived layouts inject their contents into this file at the line that says ` {{ content }} ` and are linked to this file via [FrontMatter](https://jekyllrb.com/docs/frontmatter/) declaration `layout: default`.
  - `home.html` &mdash; The layout for your landing-page / home-page / index-page. [[More Info.](#home-layout)]
  - `page.html` &mdash; The layout for your documents that contain FrontMatter, but are not posts.
  - `post.html` &mdash; The layout for your posts.

#### Home Layout

`home.html` is a flexible HTML layout for the site's landing-page / home-page / index-page. <br/>

### Includes

Refers to snippets of code within the `_includes` directory that can be inserted in multiple layouts (and another include-file as well) within the same theme-gem.

  - `disqus_comments.html` &mdash; Code to markup disqus comment box.
  - `footer.html` &mdash; Defines the site's footer section.
  - `google-analytics.html` &mdash; Inserts Google Analytics module (active only in production environment).
  - `head.html` &mdash; Code-block that defines the `<head></head>` in *default* layout.
  - `header.html` &mdash; Defines the site's main header section. By default, pages with a defined `title` attribute will have links displayed here.
  - `social.html` &mdash; Renders social-media icons based on the `lin:social_links` data in the config file.


### Assets

Refers to various asset files within the `assets` directory.
Contains the `css/style.scss` that imports sass files from within the `_sass` directory. This `css/style.scss` is what gets processed into the theme's main stylesheet `main.css` called by `_layouts/default.html` via `_includes/head.html`.

This directory can include sub-directories to manage assets of similar type (`img`, `fonts`, `svg`), and will be copied over as is, to the final transformed site directory.

## Usage

Have the following line in your config file:

```yaml
theme: jekyll-lin
```


### Customizing templates

To override the default structure and style of minima, simply create the concerned directory at the root of your site, copy the file you wish to customize to that directory, and then edit the file.
e.g., to override the [`_includes/head.html `](_includes/head.html) file to specify a custom style path, create an `_includes` directory, copy `_includes/head.html` from minima gem folder to `<yoursite>/_includes` and start editing that file.

The site's default CSS has now moved to a new place within the gem itself, [`assets/css/style.scss`](assets/css/style.scss). To **override the default CSS**, the file has to exist at your site source. Do either of the following:
- Create a new instance at site source.
  - Create a new file at `<your-site>/assets/css/style.scss`
  - Add the frontmatter dashes, and
  - Add `@import "minima";`
  - Add your custom CSS.
- Download the file from this repo
  - Create  a new file at `<your-site>/assets/css/style.scss`
  - Copy the contents at [assets/css/style.scss](assets/css/style.scss) onto the `css/style.scss` you just created, and edit away!
- Copy directly from minima gem
  - Go to your local minima gem installation directory ( run `bundle show minima` to get the path to it ).
  - Copy the `assets/` folder from there into the root of `<your-site>`
  - Change whatever values you want, inside `<your-site>/assets/css/style.scss`

### Change default date format

You can change the default date format by specifying `site.lin.date_format`
in `_config.yml`.

### Add your favicons

1. Head over to [https://realfavicongenerator.net/](https://realfavicongenerator.net/) to add your own favicons.
2. [Customize](#customization) default `_includes/head.html` in your source directory and insert the given code snippet.

### Enabling comments (via Disqus)

Optionally, if you have a Disqus account, you can tell Jekyll to use it to show a comments section below each post.

To enable it, add the following lines to your Jekyll site:

```yaml
  disqus:
    shortname: my_disqus_shortname
```

You can find out more about Disqus' shortnames [here](https://help.disqus.com/installation/whats-a-shortname).

Comments are enabled by default and will only appear in production, i.e., `JEKYLL_ENV=production`

If you don't want to display comments for a particular post you can disable them by adding `comments: false` to that post's YAML Front Matter.

:warning: `url`, e.g. `https://example.com`, must be set in you config file for Disqus to work.


### Social networks

You can add links to the accounts you have on other sites, with respective icon, by adding one or more of the following options in your config.
From `Minima-3.0` onwards, the usernames are to be nested under `lin.social_links`, with the keys being simply the social-network's name:

```yaml
minima:
  social_links:
    twitter: jekyllrb
    github:  jekyll
    medium:  jekyll
    rss: rss
    dribbble: jekyll
    facebook: jekyll
    flickr:   jekyll
    instagram: jekyll
    linkedin: jekyll
    pinterest: jekyll
    youtube_user: jekyll
    youtube_channel: UC8CXR0-3I70i1tfPg1PAE1g
    telegram: jekyll
    googleplus: +jekyll
    keybase: jekyll
```

### Enabling Google Analytics

To enable Google Analytics, add the following lines to your Jekyll site:

```yaml
  google_analytics: UA-NNNNNNNN-N
```

Google Analytics will only appear in production, i.e., `JEKYLL_ENV=production`

### Enabling Excerpts on the Home Page

To display post-excerpts on the Home Page, simply add the following to your `_config.yml`:

```yaml
show_excerpts: true
```


## Contributing

Bug reports and pull requests are welcome on GitHub at [https://github.com/ssokurenko/jekyll-lin-theme](https://github.com/ssokurenko/jekyll-lin-theme). This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## Development

To set up your environment to develop this theme, run `script/bootstrap`.

To test your theme, run `script/server` (or `bundle exec jekyll serve`) and open your browser at `http://localhost:4000`. This starts a Jekyll server using your theme and the contents. As you make modifications, your site will regenerate and you should see the changes in the browser after a refresh.

## Publishing

Update the version.

Build the gem:

```
gem build jekyll-lin.gemspec
```

Push the generated file

```
gem push jekyll-lin-x.y.z.gem
```

## License

The theme is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
