# Pears

## A Symphony Ensemble

Dan Cedarholm [announced Pears](http://simplebits.com/notebook/2012/02/07/pears/) on 6 February 2012.

> Yesterday, on stage at [An Event Apart Atlanta](http://aneventapart.com/2012/atlanta/), I announced [Pears](http://pea.rs): an open source WordPress theme for creating your own markup & style pattern library.
> 
> I wanted to create my own database repository of commonly used patterns and figured the tool might be useful for others as well. Breaking interfaces down into patterns has been immensely helpful in learning and re-evaluating the best possible code to implement them. I’ve just gotten started and will be adding more as I create them.
> 
> But Pears isn’t about how I code these patterns—it’s a tool for creating your own.
> 
> The theme is available [on GitHub](https://github.com/simplebits/Pears) for those that want to chip in and make it even better. Admittedly, the code is a little rough here and there, but it works.
> 
> Looking forward to seeing others’ takes on the patterns that power flexible web interfaces.

When I saw the [Pears theme](https://github.com/simplebits/Pears) that [Dan Cedarholm](http://simplebits.com) had created for WordPress, I thought it would make a great [Symphony](http://getsymphony.com/) ensemble. So, I created this Symphony ensemble. I chose to start from scratch, rather than fork the WordPress theme, so as not to bloat this repository.

A [Symphony ensemble](http://getsymphony.com/learn/concepts/view/ensembles/) is a means of packaging a site as an installer, used by the Symphony development team to package the official releases. It also works well as a way to share entire sites without worrying about sharing sensitive author login details and database credentials.

This ensemble demonstrates my usual process of building an ensemble with the Symphony core as the `master` branch and the `workspace` directory as the `workspace` branch. I use the Export Ensemble and the Dump DB extensions to track database changes in the Git repository, so it is possible to revert back to a previous version and restore the database to the state it was in at the time of that commit.

### Installing this Symphony Ensemble

Follow the usual instructions for installing Symphony. You'll find these instructions in the README file of the [`master` branch](https://github.com/bauhouse/sym-pears).

Now you have your choice of CMS on which to build your pattern library. You can find more about the original WordPress theme below.

## A WordPress Theme by Dan Cedarholm

Pears are common patterns of markup & style.

Pears is an open source WordPress theme. I'll admit the code 
is a bit rough, initially based on the default 'twentyone' theme.

I wanted a handy way of collecting HTML & CSS pattern pairs. 
Often used modules with a minimal of style applied. It's become 
a valuable learning tool, whereby breaking interfaces down into 
small pieces make it easier to learn and improve running code.

HOW TO ADD CODE PATTERNS

- Each pattern is a post in WordPress. 
- Add markup in a custom field named 'html'.
- Add style in a custom field named 'css'.
- Use the main content field for optional notes.

Learn more and see it in action here:
http://pea.rs

Enjoy.

Dan Cederholm
Salem, Massachusetts
February, 2012
http://simplebits.com
