# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

# Memo

## やりたいこと

* Save images

	* Grouping

	* CRUD

	* Similar search

	* insert tags

* Search images

	* Similar search

	* Using for tags

	* Search for groups

## table設計

idとtimestampは除く。

### images

ここ悩みどころで、imageのbinaryだとindexを少なくとも簡単にははることができない。

今回、検索にはphashを使うので、かわりにpHashの途中過程をいれてやればよいのではって思ったが、

何の道DB側ではどうすることもできない。

とりあえずはbinaryいれるだけにしよ。

* bin

* name

### tags

* name

### image_tags

* image_id

* tag_id

### groups

* name

* description

### group_images

* group_id

* image_id
