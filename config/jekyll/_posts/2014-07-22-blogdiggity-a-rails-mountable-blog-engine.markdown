---
layout: post
published: true 
title: Blogdiggity - A Rails Blog mountable engine powered by Github
comments: true
---

Brian Sam-Bodden, my boss at Integrallis, created a Rails Blog engine called Blogdiggity last year, which offers numerous advantages over other Rails Blog engines.
 
This excerpt, taken directly github documentation, sums up Blogdiggity very well:

> Blogdiggity is a minimalist Rails Blog powered by Git (Github in particular) and Asciidoc. The premise behind Blogdiggity is that you should never have redeploy your app to add, modify or delete blog entries. We (the Integrallis Team) are sick of dealing with database-driven blog engines. In most cases they are slow and bloated and try to become mini-application frameworks which ends up feeling pretty invasive. Blogdiggity deals with one format and one format only; AsciiDoc (http://www.methods.co.nz/asciidoc/). When you add, remove or make changes to an article on the repo, those changes are automatically reflected on your site using the magic of Github post receive hooks (https://help.github.com/articles/post-receive-hooks). Articles are never stored on your app’s db. They are read directly from the repo, rendered into HTML using AsciiDoctor (https://github.com/asciidoctor/asciidoctor) and cached until a post receive hook invalidates the cache, making page loads very fast!

Blogdiggity was initially built in early 2013 on Rails 3, and Brian has charged me with cleaning up and updating code, as well as adding new features and patching major holes. Since this project will serve as a large-scale undertaking for me as a developer, I have decided to chronicle my progress with a series of posts covering valuable technical gains I make along the way.

I should add that I found it quite ironic to blog about a blogging engine :) 
