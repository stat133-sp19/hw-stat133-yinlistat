Workout 1
================
Yin Li

Flash Back to the season 2016
=============================

Attention! The performances by the Warriors have been stunning for the 2016 Season. We know that for the Dub Nation are so disappointed when Warriors did not claim the NBA champion for this season despite of superb performances but please do not lose hope! We all believe in the Warriors and *THEY WILL RECLAIM THE VICTORY*! ![Golden State Warriors Logo](https://usatftw.files.wordpress.com/2016/05/logo-golden-state-warriors.png?w=1000&h=600&crop=1) The top 5 performing stars of Golden State Warriors are: ![Andre Iguodala](http://a.espncdn.com/combiner/i?img=/i/headshots/nba/players/full/2386.png&w=350&h=254) ![Draymond Green](http://a.espncdn.com/combiner/i?img=/i/headshots/nba/players/full/6589.png&w=350&h=254) ![Kevin Durant](http://a.espncdn.com/combiner/i?img=/i/headshots/nba/players/full/3202.png&w=350&h=254) ![Klay Thompson](http://a.espncdn.com/combiner/i?img=/i/headshots/nba/players/full/6475.png&w=350&h=254) ![Stephen Curry](http://a.espncdn.com/combiner/i?img=/i/headshots/nba/players/full/3975.png&w=350&h=254)

    ## 
    ## Attaching package: 'dplyr'

    ## The following objects are masked from 'package:stats':
    ## 
    ##     filter, lag

    ## The following objects are masked from 'package:base':
    ## 
    ##     intersect, setdiff, setequal, union

The overall effective successful scoring of all five players was amazing, with percentage scored much higher than the NBA league average as seen from the table below. Kevin Durant has the overall highest percentage scored of the team of 54%. *Bravo Kevin Durant!*

Effective Shooting % by Player

``` r
arrange(summarise(
  group_by(shooting_only,name),
  total=length(scored),made=sum(scored),perc_made=mean(scored)),desc(perc_made))
```

    ## # A tibble: 5 x 4
    ##   name           total  made perc_made
    ##   <chr>          <int> <dbl>     <dbl>
    ## 1 Kevin Durant     915   495     0.541
    ## 2 Andre Iguodala   371   192     0.518
    ## 3 Klay Thompson   1220   575     0.471
    ## 4 Stephen Curry   1250   584     0.467
    ## 5 Draymond Green   578   245     0.424

Andre Iguodala came the leading figure in 2-point effective shooting with 64% scoring accuracy. Astonishing!

2PT Effective Shooting % by Player

``` r
arrange(summarise(
    group_by(filter(shooting_only, shot_type=="2PT Field Goal"),name),
    total=length(scored),made=sum(scored),perc_made=mean(scored)),desc(perc_made))
```

    ## # A tibble: 5 x 4
    ##   name           total  made perc_made
    ##   <chr>          <int> <dbl>     <dbl>
    ## 1 Andre Iguodala   210   134     0.638
    ## 2 Kevin Durant     643   390     0.607
    ## 3 Stephen Curry    563   304     0.540
    ## 4 Klay Thompson    640   329     0.514
    ## 5 Draymond Green   346   171     0.494

As for the 3-point effective shooting, Klay Thompson, the rising star of the team clinched the top with 42.4% socring accuracy! Wow!

3PT Effective Shooting % by Player

``` r
arrange(summarise(
    group_by(filter(shooting_only, shot_type=="3PT Field Goal"),name),
    total=length(scored),made=sum(scored),perc_made=mean(scored)),desc(perc_made))
```

    ## # A tibble: 5 x 4
    ##   name           total  made perc_made
    ##   <chr>          <int> <dbl>     <dbl>
    ## 1 Klay Thompson    580   246     0.424
    ## 2 Stephen Curry    687   280     0.408
    ## 3 Kevin Durant     272   105     0.386
    ## 4 Andre Iguodala   161    58     0.360
    ## 5 Draymond Green   232    74     0.319

To assist your visualization of the performances by the 5 players, here are the shot charts for each individual player.

<img src="../images/gsw-shot-charts.png" width="80%" style="display: block; margin: auto;" />

Good work Warriors for the 2016 Season! We are looking forward to the next season! Go Warriors Go!
