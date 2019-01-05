def dictionary
  words = {
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "for" => "4",
    "four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&",
    "For" => "4"
  }
end

def word_substituter(string)
  dictionary
  tweet_array = string.split(" ")
  tweet_array.each_with_index do |word, index|
    if dictionary.keys.include?(word)
      tweet_array.delete_at(index)
      tweet_array.insert(index, dictionary[word])
    end
  end
  tweet_array.join(" ")
end

def bulk_tweet_shortener(tweets)
  tweets.each do |tweet|
     puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
  if tweet.size > 140
    word_substituter(tweet)
  else
    tweet
  end
end

def shortened_tweet_truncator(tweet)
  if tweet.size > 140
    word_substituter(tweet)
    if tweet.size > 140
      trunc_tweet = tweet[0,137]
      trunc_tweet << "..."
    end
  else
    tweet
  end
end
