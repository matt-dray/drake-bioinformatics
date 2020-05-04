drake-bioinformatics
====================

<!-- badges: start -->
[![Blog post](https://img.shields.io/badge/rostrum.blog-post-008900?labelColor=000000&logo=data%3Aimage%2Fgif%3Bbase64%2CR0lGODlhEAAQAPEAAAAAABWCBAAAAAAAACH5BAlkAAIAIf8LTkVUU0NBUEUyLjADAQAAACwAAAAAEAAQAAAC55QkISIiEoQQQgghRBBCiCAIgiAIgiAIQiAIgSAIgiAIQiAIgRAEQiAQBAQCgUAQEAQEgYAgIAgIBAKBQBAQCAKBQEAgCAgEAoFAIAgEBAKBIBAQCAQCgUAgEAgCgUBAICAgICAgIBAgEBAgEBAgEBAgECAgICAgECAQIBAQIBAgECAgICAgICAgECAQECAQICAgICAgICAgEBAgEBAgEBAgICAgICAgECAQIBAQIBAgECAgICAgIBAgECAQECAQIBAgICAgIBAgIBAgEBAgECAgECAgICAgICAgECAgECAgQIAAAQIKAAAh%2BQQJZAACACwAAAAAEAAQAAAC55QkIiESIoQQQgghhAhCBCEIgiAIgiAIQiAIgSAIgiAIQiAIgRAEQiAQBAQCgUAQEAQEgYAgIAgIBAKBQBAQCAKBQEAgCAgEAoFAIAgEBAKBIBAQCAQCgUAgEAgCgUBAICAgICAgIBAgEBAgEBAgEBAgECAgICAgECAQIBAQIBAgECAgICAgICAgECAQECAQICAgICAgICAgEBAgEBAgEBAgICAgICAgECAQIBAQIBAgECAgICAgIBAgECAQECAQIBAgICAgIBAgIBAgEBAgECAgECAgICAgICAgECAgECAgQIAAAQIKAAA7)](https://www.rostrum.blog/2020/01/31/reprobioinformatics/)
<!-- badges: end -->

This repo contains slides for a talk about the {drake} package at a
<a href="https://www.meetup.com/en-AU/Bioinformatics-London/events/ksqwtmybccbnc/" target="_blank">London Bioinformatics Meetup</a>
on 30 January 2020.

The materials are:

-   the [slides](https://matt-dray.github.io/drake-bioinformatics/#1) in
    your browser
-   the [source](https://github.com/matt-dray/drake-bioinformatics) for
    the slides (this repo)
-   an [.R script
    file](https://github.com/matt-dray/drake-bioinformatics/blob/master/drake-beavers-workflow.R)
    of all the {drake} code

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

Official {drake} materials:

-   rOpenSci [site](https://docs.ropensci.org/drake/)
-   the [user manual](https://books.ropensci.org/drake/)
-   an [rOpenSci community
    call](https://ropensci.org/commcalls/2019-09-24/)
-   [learndrake](https://github.com/wlandau/learndrake) in the cloud
-   [drakeplanner](https://wlandau.shinyapps.io/drakeplanner/_w_7935044f/)
    Shiny app
-   launch [drake examples](https://github.com/wlandau/drake-examples)
    in the cloud
-   source [on GitHub](https://github.com/ropensci/drake)
-   the [CRAN
    listing](https://cloud.r-project.org/web/packages/drake/index.html)

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
    with an accompanying [{drake} demo
    repo](https://github.com/matt-dray/drake-egg-rap)
-   in
    <a href="https://www.rostrum.blog/2020/01/22/repro-three-things/" target="_blank">another Coffee &amp; Coding presentation</a>
    about three things to improve reproducibility
-   as one of my
    <a href="https://www.rostrum.blog/2019/12/27/pkgs-2019/" target="_blank">packages that sparked joy in 2019</a>
