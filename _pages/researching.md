---
layout: page
title: Researching
permalink: "/researching/"
sidebar: "language_bar"
lang: english
class: en
ref: researching
pagination:
  enabled: true
  category: researching
--- 

## Juggling researches

> Just a bunch of small videos that I have had the opportunity to record.

...and haven't had words to explain. The idea idea is that the ideas won't get forgotten. Nothing that one would expect from a _professional_ juggler. Quite the opposite, just plain, raw and dirty material.

 
<!-- start of pagination -->

<div class="small-12 columns wraptainer">

{% assign posts=site.posts | where:"lang", page.lang %}	

<div class="roll page-content">
    {% for post in paginator.posts %}
        <header>
                <span class="post-meta">{{ post.date | date: "%b %-d, %Y" }}</span>
                <h2>
                    <a class="post-link" href="{{ post.url }}">{{ post.title }}</a>
                </h2>
        </header>
        <article>
        {% if post.thumbnail %}
            <a href="{{ site.url }}{{ post.url }}">
                <figure>
                    <img src="{{ post.thumbnail }}" class="thumb" width="150px" height="150px" />
                </figure>
            </a>
        {% endif %}
                <p>{{ post.excerpt }}  <a href="{{ post.url }}">Read More</a></p>
        </article>
    {% endfor %}

    <!-- Pagination links -->
    {% if paginator.total_pages > 1 %}
    <ul>
	  {% if paginator.previous_page %}
	    <li>
		    <a href="{{ paginator.previous_page_path | prepend: site.baseurl }}">Newer</a>
		      </li>
		        {% endif %}
			  {% if paginator.next_page %}
			    <li>
				    <a href="{{ paginator.next_page_path | prepend: site.baseurl }}">Older</a>
				      </li>
				        {% endif %}
    </ul>
    {% endif %}

</div>
