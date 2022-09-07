# Practice Code Challenge Karaoke Maniacs

## Introduction

This application is meant to track of the songs being played by a room full of karaoke singers as well as their drink tab.

## Getting started

run `bundle install`

## Migrations

Create your migrations.

- `KaraokeSinger` should have a name(string) and a number_of_drinks(integer)

- `Song` should have a title(string), runtime_in_minutes(integer), and an artist_name(string)

- A `KaraokeSinger` can have many songs and a `Song` can have many karaoke_singers. What is the relationship? What additional migration(s) will you need?

#### `karaoke_singers` Table

| Column | Type |
| --- | --- |
| name | string |
| number_of_drinks | integer |

#### `songs` Table

| Column | Type |
| --- | --- |
| title | string |
| runtime_in_minutes | integer |
| artist_name | string |

## Relationship

- What associations will this need?
- (i.e. `has_many`, `has_many through`, and `belongs_to`)

## Song

- `Song#karaoke_singers` returns all the karaoke_singers who have sung that song
- `Song.find_by_artist(artist_name)` returns all of the songs by a specified artist name
- `Song#number_of_times_sung` returns an integer based on the number of times that song has been sung by a KaraokeSinger

## KaraokeSinger

- `KaraokeSinger#songs` returns all the songs that singer has sung
- `KaraokeSinger#sing(song)` takes in an instance of a Song and creates a join between the KaraokeSinger instance an the Song instance
- `KaraokeSinger#buy_drink` increases and saves the drink total for that karaoke_singer by one
- `KaraokeSinger#songs_by_artist(artist)` returns an array of songs by a specified artist that karaoke_singer has sung
- `KaraokeSinger#drinks_tab(price_per_drink)` returns the number of drinks for a karaoke_singer and multiplies it by the `price_per_drink` argument
- `KaraokeSinger.total_tab(price_per_drink)` is a class method that adds together the tabs for every KaraokeSinger instance
