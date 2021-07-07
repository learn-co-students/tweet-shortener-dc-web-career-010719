def dictionary
  {
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2", 
    "for" => "4",
    "four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }
end

def word_substituter(tweet)
  tweet = tweet.split(" ")
  tweet.each_with_index do |word, index|
    if dictionary.keys.include?(word.downcase)
      tweet[index] = dictionary[word.downcase]
    end
  end

  tweet.join(" ")
end

def bulk_tweet_shortener(tweets)
  tweets.each do |t|
    puts word_substituter(t)
  end
end

def selective_tweet_shortener(tweet)
  if tweet.length > 140
    word_substituter(tweet)
  else
    tweet
  end
end

def shortened_tweet_truncator(tweet)
  if tweet.length > 140
    new_tweet = tweet[0..136]
    "#{new_tweet}..."
  else
    tweet
  end
end



