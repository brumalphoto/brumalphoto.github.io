---
layout: page
title: "Sound Categories"
permalink: /categories/
---
Browse my sounds by category:

{% assign categories = site.categories | sort %}
{% for category in categories %}
<h2>{{ category[0] | capitalize }}</h2>
<ul>
  {% for post in category[1] %}
  <li><a href="{{ post.url }}">{{ post.title }}</a></li>
  {% endfor %}
</ul>
{% endfor %}