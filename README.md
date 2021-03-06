# Read More Plugin for Jekyll

[![Gem Version](https://badge.fury.io/rb/jekyll-read-more.svg)](http://badge.fury.io/rb/jekyll-read-more)

A [Liquid Filter](http://liquidmarkup.org/) to determine if a [Jekyll](http://jekyllrb.com/) Post has an excerpt to display and retrieve the excerpt to use on a list page for read more capability.

## Installation

The easiest way to install this plugin is with RubyGems: `gem install jekyll-read-more`.

You can see the gem on Ruby Gems: [jekyll-read-more](https://rubygems.org/gems/jekyll-read-more).

This Liquid Filter is designed specifically for Jekyll. This plugin can be installed directly to the `_plugins/` directory by dropping the contents of the `lib` directory into the `_plugins` folder.

See [documentation on installing Jekyll plugins](http://jekyllrb.com/docs/plugins/#installing-a-plugin) for more detailed instructions.

## Usage

In any post where an excerpt should be used to display elsewhere, include the following tag `<!---excerpt-break-->` after the content that should be displayed as the excerpt.

_Please note that the tag has three dashes (-) after the bang (!). This is to support HTML comments in markdown._

Two methods are provided via Liquid Filters:

* post\_contains\_excerpt\_tag
* get\_post\_excerpt

### post\_contains\_excerpt\_tag

Determines if the excerpt tag exists in the post. The return value is a boolean.

Example Usage:

    {% if post.content | post_contains_excerpt_tag %}
      <a href="{{ post.url }}">Read more →</a>
    {% endif %}

### get\_post\_excerpt

Will remove all content from the excerpt tag and after. The return value will be a string.

If the excerpt tag cannot be found, it will perform no action.

Example Usage:

    <p class="excerpt">
      {{ post.content | get_post_excerpt }}
    </p>
    
## Using Rake in Development

The Read More project includes a Rake file if there is a need to create a custom packaged gem for local reuse.

Available commands:

* `rake build`
* `rake install`
* `rake uninstall`
* `rake version`
    
## Versioning

The version numbers of this project conform to [Semantic Versioning 2.0](http://semver.org/).

* __0.1.3__ (2015-05-10): Fixes issue #6 caused by 0.1.1 release.
* __0.1.2__ (2015-05-10): Fixes issue #5 around Gemspec date being hardcoded.
* __0.1.1__ (2015-05-10): Fixes issue #1 and contains development improvements.
* __0.1.0__ (2015-03-09): Initial release of gem.

## License

This is released under the MIT license. Please see LICENSE file for more details.

