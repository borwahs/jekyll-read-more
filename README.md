# Read More Plugin for Jekyll

A [Liquid Filter](http://liquidmarkup.org/) to determine if a [Jekyll](http://jekyllrb.com/) Post has an excerpt to display and retrieve the excerpt to use on a list page for read more capability.


## Usage

In any post where an excerpt should be used to display elsewhere, include the following tag `<!---excerpt-break-->` after the content that should be displayed as the excerpt.

_Please note that the tag has three dashes (-) after the bang (!). This is to support HTML comments in markdown._

Two methods are provided via Liquid Filters:

* post\_contains\_excerpt\_tag?
* get\_post\_excerpt

### post\_contains\_excerpt\_tag?

Determines if the excerpt tag exists in the post. The return value is a boolean.

Example Usage:

    {% if post.content | post_should_be_truncated? %}
      <a href="{{ post.url }}">Read more →</a>
    {% endif %}

### get\_post\_excerpt

Will remove all content from the excerpt tag and after. The return value will be a string.

If the excerpt tag cannot be found, it will perform no action.

Example Usage:

    <p class="excerpt">
      {{ post.content | get_post_excerpt }}
    </p>

## License

This is released under the MIT license. Please see LICENSE file for more details.

