# Ruboty::Ma
A Ruboty plug-in to generate result of morphological analysis from input string

## Installation
Add this line to Gemfile:
```ruby
# Gemfile
gem 'ruboty-ma'
```

Add then execute:
```ruby
$ bundle install
```

## Usage
```
> @ruboty ma <sentence> - Generate result of morphological anaysis from input string.

> @ruboty ma 今日の夕飯はお寿司です
今日(名詞) / の(助詞) / 夕飯(名詞) / は(助詞) / お寿司(名詞) / です(助動詞)
```

## ENV
```
YAHOO_APPID - Yahoo Japan Application ID
```
