drake-bioinformatics
====================

This repo contains slides for a talk about the {drake} package at a
<a href="https://www.meetup.com/en-AU/Bioinformatics-London/events/ksqwtmybccbnc/" target="_blank">London Bioinformatics Meetup</a>
on 30 January 2020.

Workflow management
-------------------

The {drake} package by
<a href="https://wlandau.github.io/" target="_blank">Will Landau</a> is
an R-focused solution for managing your analytical workflows.

What does that mean? {drake} ‘remembers’ the relationships between
objects in your workflow. When you update your analysis, {drake} makes
sure that only the impacted objects are re-run. This means you don’t
have to recreate everything from scratch each time.

Resources
---------

For {drake} documentation, visit:

-   <a href="https://docs.ropensci.org/drake/" target="_blank">the website</a>
-   <a href="https://books.ropensci.org/drake/" target="_blank">user manual</a>
-   <a href="https://cloud.r-project.org/web/packages/drake/index.html" target="_blank">the CRAN listing</a>

Helpful training materials from Will include:

-   the
    <a href="https://github.com/wlandau/learndrake" target="_blank">learndrake repo</a>
    for learning how {drake} works (can also be run in the cloud with
    RStudio Cloud or Binder)
-   the
    <a href="https://wlandau.shinyapps.io/drakeplanner/_w_169ce85f/" target="_blank">drakeplanner Shiny app</a>
    for creating new {drake} projects (see the
    <a href="https://github.com/wlandau/drakeplanner" target="_blank">source on GitHub</a>)
-   an
    <a href="https://ropensci.org/commcalls/2019-09-24/" target="_blank">rOpenSci community call</a>
    (24 September 2019)

Great talks by other people include:

-   the
    ‘<a href="https://krlmlr.github.io/drake-pitch/#1" target="_blank">reproducible workflows with the drake R package</a>’
    talk by
    <a href="https://twitter.com/krlmlr" target="_blank">Kirill Müller</a>
    (14 April 2019)
-   the
    ‘<a href="https://www.garrickadenbuie.com/talk/drake-intro-biodataclub/" target="_blank">reproducible data workflows</a>’
    talk by
    <a href="https://www.garrickadenbuie.com/" target="_blank">Garrick Aden-Buie</a>
    (19 July 2019)
-   a use case for
    <a href="https://www.youtube.com/watch?v=4vu8h_Zh8Wg&amp;feature=youtu.be" target="_blank">tracking NYC fires with Twitter and Google</a>
    by <a href="https://dobb.ae/" target="_blank">Amanda Dobbyn</a> (19
    June 2019)

I’ve written about {drake} before:

-   in a blog post called
    <a href="https://www.rostrum.blog/2019/07/23/can-drake-rap/" target="_blank">can {drake} RAP?</a>
-   in
    <a href="https://github.com/matt-dray/drake-egg-rap/blob/master/docs/drake-presentation.pdf" target="_blank">a Coffee &amp; Coding presentation</a>
    with an accompanying
    <a href="https://github.com/matt-dray/drake-egg-rap" target="_blank">{drake} demo repo</a>
-   as one of my
    <a href="https://www.rostrum.blog/2019/12/27/pkgs-2019/" target="_blank">packages that sparked joy in 2019</a>
